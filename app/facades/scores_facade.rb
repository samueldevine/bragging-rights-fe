class ScoresFacade
  def self.top_scores_by_user(user_id)
    payload = ScoreService.conn(user_id)
    payload.map do |score|
      Score.new(score)
    end
  end
  def self.top_scores_by_location(geo_scope, user_location)
    payload = ScoreService.location(geo_scope, user_location)
    payload[:data].map do |score|
      Score.new(score[:attributes])
    end
  end
end
