class User < ApplicationRecord
  # Relation
  has_many :portfolios

  # Validation
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, length: { maximum: 254 }
  validates :status, presence: true
  validates :gender, presence: true

  # Enum
  enum status: {
    # 通常
    normal: 0,
    # 削除済み
    deleted: 99,
  }, _prefix: true

  enum gender: {
    # 選択なし
    no_gender: 0,
    # 男
    male: 1,
    # 女
    female: 2,
  }, _prefix: true

end
