require 'sequel'

module Sequel
  module MySQL
    class Database < Sequel::Database
      alias_method :old_init, :initialize

      def initialize(args)
        old_init(args)

        create_table? :throttle_cache do
          String :key, primary_key: true
          Float :value, default: 0
        end
      end

      def cache_dataset
        self[:throttle_cache]
      end

      def get(key)
        (cache_dataset.filter(key: key).first[:value].to_f)
      end

      def set(key, value)
        unless cache_dataset.where(key: key).update(value: value) == 1 then cache_dataset.insert(key: key, value: value) end
      end
    end
  end
end