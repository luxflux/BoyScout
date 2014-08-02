require 'rails_helper'

RSpec.describe "GoodDeeds", :type => :request do
  describe "GET /good_deeds" do
    it "works! (now write some real specs)" do
      get good_deeds_path
      expect(response.status).to be(200)
    end
  end
end
