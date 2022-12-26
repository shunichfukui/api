# frozen_string_literal: true

class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :title, null: false
      t.integer :status,  limit: 4, null: false, unsigned: true, default: 0
      t.string :description, null: false
      t.string :image_url, null: false, default: ''
      t.references :user,    index: true

      t.timestamps
    end
  end
end
