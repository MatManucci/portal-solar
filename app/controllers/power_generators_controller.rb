# frozen_string_literal: true

class PowerGeneratorsController < ApplicationController
  def index
    @power_generators = PowerGenerator.order(:price).page params[:page]
  end
end
