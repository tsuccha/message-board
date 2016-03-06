class Message < ActiveRecord::Base
  validates :name, length: {maximum: 20}, presence: true
  validates :body, length: {maximum: 140}, presence: true
end