class ScoresFacade
  class << self
    def top_scores_by_user(user_id)
      payload = ScoreService.user(user_id)
      payload[:data].map do |score|
        Score.new(score[:attributes])
      end
    end

    def top_scores_by_location(geo_scope, ip_address)
      payload = ScoreService.location(geo_scope, ip_address)
      payload[:data].map do |score|
        Score.new(score[:attributes])
      end
    end

    def record_score(game)
      ScoreService.record_score(game)
    end
  end
end
