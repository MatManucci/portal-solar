# frozen_string_literal: true

# == Schema Information
#
# Table name: power_generators
#
#  id             :bigint           not null, primary key
#  name           :string
#  description    :string
#  image_url      :string
#  manufacturer   :string
#  structure_type :integer
#  price          :float
#  height         :float
#  width          :float
#  lenght         :float
#  weight         :float
#  kwp            :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class PowerGenerator < ApplicationRecord
  paginates_per 6
  validates :name, :description, :image_url, :manufacturer, :price, :kwp, presence: true
  validates :height, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 40 }
  validates :width, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :lenght, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 200 }
  validates :weight, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 3000 }

  enum structure_type: %i[
    metalico
    ceramico
    fibrocimento
    laje
    solo
    trapezoidal
  ]
end
