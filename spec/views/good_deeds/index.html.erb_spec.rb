require 'rails_helper'

RSpec.describe "good_deeds/index", :type => :view do
  before(:each) do
    assign(:good_deeds, [
      GoodDeed.create!(
        :title => "Title",
        :good_guy => nil
      ),
      GoodDeed.create!(
        :title => "Title",
        :good_guy => nil
      )
    ])
  end

  it "renders a list of good_deeds" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
