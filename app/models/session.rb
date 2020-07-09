# typed: strict

# frozen_string_literal: true

class Session < ApplicationRecord
  belongs_to :team

  has_many :participants, class_name: 'Participation', dependent: :destroy

  validates :team, presence: true
end
