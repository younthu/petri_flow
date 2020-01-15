# == Schema Information
#
# Table name: wf_places
#
#  id          :integer          not null, primary key
#  workflow_id :integer
#  name        :string
#  description :text
#  sort_order  :integer          default("0")
#  place_type  :integer          default("0")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

module Wf
  class Place < ApplicationRecord
    belongs_to :workflow
    has_many :arcs
    has_many :tokens
    enum place_type: {
      normal: 0,
      start: 1,
      end: 2
    }
  end
end
