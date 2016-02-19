class ThrottleAdapter
  attr_accessor :db, :table

  def initialize(sequel_db, sequel_table = 'throttle_cache')
    @db = sequel_db
    @table = sequel_table

    create_table? @table.to_sym do
      String :key, primary_key: true
      Float :value, default: 0
    end
  end

  def dataset
    @db[@table.to_sym]
  end

  def get(key)
    (dataset.filter(key: key).first[:value])
  end

  def set(key, value)
    unless dataset.where(key: key).update(value: value) == 1 then dataset.insert(key: key, value: value) end
  end
end