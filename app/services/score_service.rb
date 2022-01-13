class ScoreService
  class << self
    def conn
      Faraday.new('http://localhost:5000/api/v1/')
    end

    def location(geo_scope, ip_address)
      response = conn.get("scores?geo_scope=#{geo_scope}&user_location=#{ip_address}")
      JSON.parse(response.body, symbolize_names: true)
    end

    def user(user_id)
      response = conn.get("scores?user_id=#{user_id}")
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
