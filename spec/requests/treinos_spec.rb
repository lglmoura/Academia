require 'rails_helper'

RSpec.describe "Treinos", :type => :request do
  describe "GET /treinos" do
    it "works! (now write some real specs)" do
      get treinos_path
      expect(response).to have_http_status(200)
    end
  end
end
