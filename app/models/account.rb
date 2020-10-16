# frozen_string_literal: false

class Account < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
  has_one(:admin_account)
  has_one(:accounts_profile)
  has_many :reaction_to_account, foreign_key: :to_account_id, class_name: 'AccountsReaction'
  has_many :reaction_from_account, foreign_key: :from_account_id, class_name: 'AccountsReaction'
end
