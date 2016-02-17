require 'sequel'

module Sequel
  module MySQL
    class Database < Sequel::Database
      alias_method :old_init, :initialize

      def initialize(args)
        create_cache_table unless self.cache_table_exists
        old_init(args)
      end

      def cache_dataset
        self[:throttle_cache]
      end

      def get(key)
        create_cache_table unless self.cache_table_exists
        (cache_dataset.filter(key: key).first[:value].to_f)
      end

      def set(key, value)
        create_cache_table unless self.cache_table_exists
        unless cache_dataset.where(key: key).update(value: value) == 1 then cache_dataset.insert(key: key, value: value) end
      end

      def create_cache_table
        create_table? :throttle_cache do
          String :key, primary_key: true
          Float :value, default: 0
        end
        self.cache_table_exists = true
      end
    end
  end
end