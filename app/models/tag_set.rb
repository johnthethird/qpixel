class TagSet < ApplicationRecord
  include CommunityRelated
  has_many :tags

  validates :name, uniqueness: { scope: [:community_id] }, presence: true

  def meta
    where(name: 'Meta')
  end

  def main
    where(name: 'Main')
  end
end
