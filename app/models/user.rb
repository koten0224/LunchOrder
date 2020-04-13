class User < ApplicationRecord
  has_secure_password
  has_many :stores, foreign_key: :author_id
  has_many :events
  has_many :orders

  validates :account, :name,    :email, 
                      presence: true

  validates :account, :email, 
                      uniqueness: true

  validates :account, length: { minimum: 8,
                                maximum: 12 },
                      format: { with: /\A\w+\z/,
                                message: "不允許輸入特殊符號！"}

  validates :name,    length: { minimum: 2,
                                maximum: 10 },
                      format: { with: /\A[\w _]+\z/,
                                message: "不允許輸入特殊符號！" }

  validates :email,   format: { with: /\A[\w_]+(\.[\w_]+)*@\w+(\.\w+)+\z/,
                                message: "格式不對歐！" }

end
