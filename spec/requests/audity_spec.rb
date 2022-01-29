require 'rails_helper'

RSpec.describe "Audities", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/audity/index"
      expect(response).to have_http_status(:success)
    end
  end

end
