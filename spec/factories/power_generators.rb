# frozen_string_literal: true

FactoryBot.define do
  factory :power_generator do
    name { FFaker::Lorem.word }
    description { FFaker::Lorem.sentence }
    image_url { FFaker::Image.url }
    manufacturer { FFaker::Lorem.word }
    structure_type { PowerGenerator.structure_types.keys.sample }
    price { rand(100_0.0...500_000.0) }
    height { rand(0.8...40.0) }
    width { rand(0.8...100) }
    lenght { rand(0.8...200) }
    weight { rand(1.2...3000.0) }
    kwp { rand(0.6...100.0) }
  end
end
