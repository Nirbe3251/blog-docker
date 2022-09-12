class Article < ApplicationRecord
  include Visible
  
  def to_param
    "#{id}-#{title.parameterize}"
  end

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end

