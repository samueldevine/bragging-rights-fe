class ScoresFacade
  def self.top_scores_by_user(user_id)
    payload = ScoreService.user(user_id)
    payload["data"].map do |score|
      Score.new(score)
    end
  end

  def self.top_scores_by_location(geo_scope, ip_address)
    payload = ScoreService.location(geo_scope, ip_address)
    payload[:data].map do |score|
      Score.new(score[:attributes])
    end
  end
end
