# frozen_string_literal: true

FactoryBot.define do
  factory :freight do
    state { FFaker::AddressBR.state }
    weight_min { rand(1.2...9.9) }
    weight_max { rand(11.0..100.0) }
    cost { rand(1.0..100.0) }
  end
end
