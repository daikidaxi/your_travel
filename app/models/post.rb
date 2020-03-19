class Post < ApplicationRecord
  require 'date'
  belongs_to :user
  has_many :likes
  default_scope -> { order(visited_date: :desc) }
  validates :user_id, presence: true
  validates :country, uniqueness: { scope: :user_id }
  validates :content, length: { maximum: 400 }  
  validate :date_in_the_past
  validate :not_nationality?
  geocoded_by :country
  after_validation :geocode

  def date_in_the_past
    if visited_date > Date.today
      errors.add(:base,"過去の日付を選択してください")
    end
  end

  def not_nationality?
    if user.nationality == country
      errors.add(:base,"国籍は選択できません")
    end
  end

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
  
end

