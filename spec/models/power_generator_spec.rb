# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PowerGenerator, type: :model do
  describe 'Tests on Power Generator'
  let!(:power_generator) { create(:power_generator) }

  describe 'advanced search' do
    let!(:power_generator_metalico) { create(:power_generator, structure_type: :metalico) }
    let!(:power_generator_ceramico) { create(:power_generator, structure_type: :ceramico) }
    let!(:power_generator_fibrocimento) { create(:power_generator, structure_type: :fibrocimento) }
    let!(:power_generator_laje) { create(:power_generator, structure_type: :laje) }
    let!(:power_generator_solo) { create(:power_generator, structure_type: :solo) }
    let!(:power_generator_trapezoidal) { create(:power_generator, structure_type: :trapezoidal) }

    context 'results of advanced search ' do
      
      it {expect(PowerGenerator.advanced_search('laje')).not_to be_nil }
      it { expect(PowerGenerator.advanced_search('laje')).to include(power_generator_laje) }

      # it 'returns matches with manufacturer and price' do
      #   search_result = PowerGenerator.recommendations(50_000, 'WEG', nil)

      #   expect(search_result).to include(@power_gen1, @power_gen5)
      #   expect(search_result).not_to include(@power_gen2, @power_gen3,
      #                                 @power_gen4)
      # end

      # it 'returns matches with manufacturer and structure_type' do
      #   search_result = PowerGenerator.recommendations(nil, 'WEG', 'metalico')

      #   expect(search_result).to include(@power_gen5)
      #   expect(search_result).not_to include(@power_gen1, @power_gen2,
      #                                 @power_gen3, @power_gen4)
      # end

      # it 'returns matches with price and structure_type' do
      #   search_result = PowerGenerator.recommendations(30_000, nil, 'metalico')

      #   expect(search_result).to include(@power_gen2)
      #   expect(search_result).not_to include(@power_gen1, @power_gen3,
      #                                 @power_gen4, @power_gen5)
      # end

      # it 'returns matches with manufacturer' do
      #   search_result = PowerGenerator.recommendations(nil, 'WEG', nil)

      #   expect(search_result).to include(@power_gen1, @power_gen5)
      #   expect(search_result).not_to include(@power_gen2, @power_gen3,
      #                                 @power_gen4)
      # end

      # it' returns matches with structure_type' do
      #   search_result = PowerGenerator.recommendations(nil, nil, 'metalico')

      #   expect(search_result).to include(@power_gen2, @power_gen5)
      #   expect(search_result).not_to include(@power_gen1, @power_gen3,
      #                                 @power_gen4)
      # end

      # it 'returns within capital limit' do
      #   search_result = PowerGenerator.recommendations(30_000, nil, nil)

      #   expect(search_result).to include(@power_gen1, @power_gen2, @power_gen3)
      #   expect(search_result).not_to include(@power_gen4, @power_gen5)
      # end
    end

    # context 'when a match is not found' do
    #   it 'returns empty' do
    #     expect(PowerGenerator.recommendations(5_000, nil, nil)).to be_empty
    #   end
    # end
  end
end
