class Entry < ApplicationRecord

  belongs_to :journal

  validates :title, presence: true
  validates :content, presence: true
  validates :date, presence: true
  validates :journal, presence: true

end
