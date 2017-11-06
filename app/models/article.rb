class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 140 }, allow_blank: true
  validates :text, presence: true
  has_many :comments

  def subject
    title
  end
  def last_comment
    comments.last
  end
end
