class Post < ApplicationRecord
  require 'date'
  belongs_to :user
  default_scope -> { order(visited_date: :desc) }
  #同じ日の場合はcreated_atが遅い順にしたい
  validates :user_id, presence: true
  validates :country, uniqueness: true
  validates :content, presence: true, length: { maximum: 300 }
  #validate :before_today

  def before_today
    errors.add(Date.current"以前の日付を入力してください。") unless self.visited_date > Date.current
  end
end
