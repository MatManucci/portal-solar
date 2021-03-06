# frozen_string_literal: true

# == Schema Information
#
# Table name: freights
#
#  id         :bigint           not null, primary key
#  state      :string
#  weight_min :float
#  weight_max :float
#  cost       :float
#
class Freight < ApplicationRecord
  validates :state, :weight_min, :weight_max, :cost, presence: true
end
