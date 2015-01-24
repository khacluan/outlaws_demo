class Product < ActiveRecord::Base
  belongs_to :category, touch: true

  after_save :clear_redis_cache

  private

    def clear_redis_cache
      $redis.del 'products'
    end
end
