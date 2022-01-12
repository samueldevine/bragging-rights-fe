class ScoreService
  class << self
    def conn
      Faraday.new('http://localhost:5000/api/v1/')
    end
    def location(geo_scope, user_location)
      response = conn.get("scores?geo_scope=#{geo_scope}&user_location=#{user_location}")
      JSON.parse(response.body, symbolize_names: true)
    end
    # def conn(user_location, geo_scope)
    #   response = Faraday.new('http://localhost:5000/api/v1/scores/').get do |f|
    #     f.params['geo_scope'] = geo_scope
    #     f.params['user_location'] = user_location
    #     # f.params['user_id'] = user_id
    #   end
    #   test = JSON.parse(response.body, symbolize_names: true)
    #   # require "pry"; binding.pry
    # end
  end
end
