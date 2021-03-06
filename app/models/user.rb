# typed: strict
# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :uuid             not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_name                  (name) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates :name, uniqueness: true, presence: true

  has_many :memberships, dependent: :destroy
  has_many :teams, through: :memberships
  has_many :participations, dependent: :destroy
  has_many :sessions, through: :participations
  has_many :slack_accounts, dependent: :destroy

  scope :sorted, -> { order(:name) }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :trackable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :pwned_password,
         :omniauthable, omniauth_providers: [:slack, :sign_in_with_slack]

  accepts_nested_attributes_for :slack_accounts
end
