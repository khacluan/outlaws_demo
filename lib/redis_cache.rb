require 'redis-store'

class Redis

  def cache(params)
    key = params[:key] || raise(":key parameter is required!")
    expire = params[:expire] || nil
    recalculate = params[:recalculate] || nil
    expire = params[:expire] || nil
    timeout = params[:timeout] || 0
    default = params[:default] || nil

    value = get(key)

    if value.nil? || recalculate

      begin
        value = Timeout::timeout(timeout) { yield(self) }
      rescue Timeout::Error
        value = default
      end

      set(key, value)
      expire(key, expire) if expire
      value
    else
      value
    end
  end

end
