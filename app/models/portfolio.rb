class Portfolio < ApplicationRecord
  belongs_to :user

  enum status: {
    # 公開状態
    open: 0,
    # 削除ずみ状態
    deleted: 1,
  }
end
