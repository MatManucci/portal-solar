# frozen_string_literal: true

class PowerGeneratorsController < ApplicationController
  def index
    @power_generators = PowerGenerator.all
  end
end
