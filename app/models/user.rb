class User < ApplicationRecord
  validates :name, presence: true, length: {minimum:3, maximum:50}
  validates :email, presence: true, length: {minimum:3, maximum:255}
end
