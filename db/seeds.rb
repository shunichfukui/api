# frozen_string_literal: true

User.delete_all

users = []

10.times do |n|
  time = Time.current
  users << {
    name: "user_#{n+1}",
    email: "test#{n+1}@gmail.com",
    status: User.statuses[:normal],
    gender: User.genders.keys.sample,
    created_at: time,
    updated_at: time
  }
end

User.insert_all users

# 投稿データの作成
Portfolio.delete_all

portfolios = []

10.times do |n|
  time = Time.current
  portfolios << {
    title: "title_#{n+1}",
    description: "description_#{n+1}",
    status: Portfolio.statuses[:open],
    user_id: n,
    created_at: time,
    updated_at: time
  }
end

Portfolio.insert_all portfolios