class User < ApplicationRecord
    has_many :portfolios

    enum status: {
        # 通常
        normal: 0,
        # 削除済み
        deleted: 99,
      }

    enum gender: {
        # 選択なし
        no_gender: 0,
        # 男
        male: 1,
        # 女
        female: 1,
    }
end
