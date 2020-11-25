class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true
  #モデルとマイグレイトの二重でバリデーションを設定するのが確実かつ現場では通例だそう。

  has_many :prototypes
  has_many :comments
end
