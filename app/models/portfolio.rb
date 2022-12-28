class Portfolio < ApplicationRecord
  # Relation
  belongs_to :user

  # Validation
  validates :title, presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 300 }
  validates :status, presence: true
  validates :image_url, presence: true
  validates :user_id, presence: true

  # Enum
  enum status: {
    # 公開状態
    open: 0,
    # 削除ずみ状態
    deleted: 1,
  }, _prefix: true

end
