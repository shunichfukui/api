# frozen_string_literal: true

class PostResource
  include Alba::Resource
  attributes :id, :title, :description, :created_at, :updated_at
end
