class ScoreService
  class << self
    def conn
      Faraday.new('https://fast-inlet-74665.herokuapp.com/api/v1/')
    end

    def location(geo_scope, ip_address)
      response = conn.get('scores', params: {geo_scope: geo_scope, ip_address: ip_address})
      JSON.parse(response.body, symbolize_names: true)
    end

    def user(user_id)
      response = conn.get("scores?user_id=#{user_id}")
      JSON.parse(response.body, symbolize_names: true)
    end

    def record_score(game)
      # this method does not return a response and has status code 204
      response = conn.post('scores', {score: game}.to_json, headers = {'Content-Type' => 'application/json'})
    end
  end
end
