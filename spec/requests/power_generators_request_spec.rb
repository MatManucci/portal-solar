require 'rails_helper'

RSpec.describe "PowerGenerators", type: :request do

  describe "GET /show" do
    it "returns http success" do
      get "/power_generators/show"
      expect(response).to have_http_status(:success)
    end
  end

end
