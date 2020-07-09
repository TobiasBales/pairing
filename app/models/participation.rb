# typed: strict

# frozen_string_literal: true

class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :session

  validates :user, presence: true
  validates :session, presence: true
end
