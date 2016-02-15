require 'sequel'

module Sequel
  module MySQL
    class Database < Sequel::Database
      #TODO: add table_exists?

      def cache_dataset
        self[:throttle_cache]
      end

      def get(key)
        (cache_dataset.filter(key: key).first[:value].to_i)
      end

      def set(key, value)
        unless cache_dataset.where(key: key).update(value: value) == 1 then cache_dataset.insert(key: key, value: value) end
      end
    end
  end
end