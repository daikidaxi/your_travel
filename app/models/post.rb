class Post < ApplicationRecord
  require 'date'
  belongs_to :user
  default_scope -> { order(visited_date: :desc) }
  #同じ日の場合はcreated_atが遅い順にしたい
  validates :user_id, presence: true
  validates :country, uniqueness: { scope: :user_id }
  validate :date_in_the_past
  validate :not_nationality?

  def date_in_the_past
    if visited_date > Date.today
      errors.add(:visited_date, "過去の日付を選択してください")
    end
  end

  def not_nationality?
    if user.nationality == country
      errors.add(:country,"国籍は選択できません")
    end
  end

end

