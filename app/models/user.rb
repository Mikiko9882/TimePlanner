class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :user_lessons
  has_many :lessons, :through => :user_lessons

  has_many :user_subjects
  has_many :subjects, :through => :user_subjects

  validates :login_id, uniqueness: true, presence: true
  validate :login_id_format

  def login_id_format
    unless login_id.match?(/\A(?=.*[0-9])(?=.*[a-zA-Z])[0-9a-zA-Z]+\z/)
      errors.add(:login_id, "は数字とアルファベットの両方を含む必要があります")
    end
  end
  
  validates :user_name, presence: true, length: { maximum: 255 }
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  enum role: { general: 0, admin: 1 }

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "crypted_password", "id", "id_value", "login_id", "role", "salt", "updated_at", "user_name"]
  end
end
