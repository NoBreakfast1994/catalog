# frozen_string_literal: true

# == Schema Information
#
# Table name: businesses
#
#  id         :integer          not null, primary key
#  name       :string           default(""), not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class BusinessTest < ActiveSupport::TestCase
end
