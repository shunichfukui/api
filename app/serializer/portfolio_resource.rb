# frozen_string_literal: true

class PortfolioResource
  include Alba::Resource
  attributes :id, :title, :description, :user_id, :created_at, :updated_at
end
