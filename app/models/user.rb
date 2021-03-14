class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :managers_name, presence: true
  validates :password, on: :create, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i }

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
    find_or_create_by!(name:'Sheroton', email: 'sheroton.fb@sheroton.com', managers_name: '中村 美智子') do |user|
      user.password = SecureRandom.hex(5)
    end
  end
end
