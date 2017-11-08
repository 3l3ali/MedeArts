class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts

  validates :Fname, presence: true
  validates :Lname, presence: true
  validates :Age, presence: true, :numericality => {:greater_than => 0}
  validates :Accommodation, presence: true
  validates :City, presence: true
  validates :Q1, presence: true
  validates :Q2, presence: true
  validates :Q3, presence: true

  enum City: {
    Irbid: 1,
    Amman: 2,
    Ajloun: 3,
    Jarash: 4,
    Karak: 5,
    Balqaa: 6,
    Maan: 7,
    Zarqaa: 8,
    Tafeila: 9,
    Mafraq: 10,
    Madaba: 11,
    Aqaba: 12
  }
  enum Accommodation: {
    Singer: 1,
    Artist: 2,
    Other: 3
  }
end
