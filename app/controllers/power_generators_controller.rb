# frozen_string_literal: true

class PowerGeneratorsController < ApplicationController
  def index
    @power_generators = PowerGenerator.order(:price).page params[:page]
  end

  def index_advanced_search
    @power_generators = PowerGenerator.advanced_search(@structure_type).order(:price).page params[:page]
  end
end
