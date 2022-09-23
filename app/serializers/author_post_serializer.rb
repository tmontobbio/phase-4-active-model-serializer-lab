class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many :tags
  def short_content
    #implied self self.object.content
    "#{object.content[0..39]}..."
  end
end
