# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :managers_name, presence: true
  validates :password, on: :create, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i }
  validates :name, length: { maximum: 40 }

  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update(params, *options)
    clean_up_passwords
    result
  end

  def self.guest
    find_by!(email: 'sheroton.fb@sheroton.com') do |user|
      user.password = SecureRandom.hex(5)
    end
  end
end
