require 'sequel'

module Sequel
  module MySQL
    class Database < Sequel::Database
      def cache_dataset
        self[:throttle_cache]
      end

      def get(key)
        cache_dataset.filter(key: key).first[:value]
      end

      def set(key, value)
        unless cache_dataset.where(key: key).update(value: value) == 1 then cache_dataset.insert(key: key, value: value) end
      end
    end
  end
end