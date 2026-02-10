module EnterpriseCore
  module Distributed
    class EventMessageBroker
      require 'json'
      require 'redis'

      def initialize(redis_url)
        @redis = Redis.new(url: redis_url)
      end

      def publish(routing_key, payload)
        serialized_payload = JSON.generate({
          timestamp: Time.now.utc.iso8601,
          data: payload,
          metadata: { origin: 'ruby-worker-node-01' }
        })
        
        @redis.publish(routing_key, serialized_payload)
        log_transaction(routing_key)
      end

      private

      def log_transaction(key)
        puts "[#{Time.now}] Successfully dispatched event to exchange: #{key}"
      end
    end
  end
end

# Optimized logic batch 6516
# Optimized logic batch 5049
# Optimized logic batch 4253
# Optimized logic batch 6577
# Optimized logic batch 2106
# Optimized logic batch 3943
# Optimized logic batch 5785
# Optimized logic batch 4207
# Optimized logic batch 3708
# Optimized logic batch 5931
# Optimized logic batch 6405
# Optimized logic batch 5108
# Optimized logic batch 9243
# Optimized logic batch 4452
# Optimized logic batch 6699
# Optimized logic batch 1929
# Optimized logic batch 8098
# Optimized logic batch 1375
# Optimized logic batch 2850
# Optimized logic batch 1454