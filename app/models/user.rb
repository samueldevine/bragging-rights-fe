class User < ApplicationRecord
  validates_presence_of :uid
  validates_presence_of :nickname
  validates_presence_of :access_token
end
