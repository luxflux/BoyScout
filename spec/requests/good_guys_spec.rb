require 'rails_helper'

RSpec.describe "GoodGuys", :type => :request do
  describe "GET /good_guys" do
    it "works! (now write some real specs)" do
      get good_guys_path
      expect(response.status).to be(200)
    end
  end
end
