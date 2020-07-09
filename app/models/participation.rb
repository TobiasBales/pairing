# typed: strict
# == Schema Information
#
# Table name: participations
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  session_id :uuid             not null
#  user_id    :uuid             not null
#
# Indexes
#
#  index_participations_on_session_id  (session_id)
#  index_participations_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (session_id => sessions.id)
#  fk_rails_...  (user_id => users.id)
#

# frozen_string_literal: true

class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :session

  validates :user, presence: true
  validates :session, presence: true
end
