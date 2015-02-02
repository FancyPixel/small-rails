module V1
  class StoriesSerializer < ActiveModel::Serializer
    
    attributes :title, :created_at, :abstract, :id
    has_one :user, serializer: V1::UserSerializer

    def abstract
      object.body[0..200]
    end

  end
end

