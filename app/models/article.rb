class Article < ApplicationRecord
  has_rich_text :text
  has_one_attached :image

  validates :title, presence: true
  validates :text, presence: true
  validates :subtext, presence: true

  has_many :comments

  def subject
    title
  end

  def last_comment
  comments.last
  end
end
