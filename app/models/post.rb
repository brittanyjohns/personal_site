# == Schema Information
#
# Table name: posts
#
#  id           :bigint           not null, primary key
#  content      :text
#  published_at :datetime
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Post < ApplicationRecord
  has_rich_text :body
  has_markdown :content

  scope :published, -> { where.not(published_at: nil) }

  def mark_as_published!
    update!(published_at: Time.current)
  end
end
