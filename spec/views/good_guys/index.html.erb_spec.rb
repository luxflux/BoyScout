require 'rails_helper'

RSpec.describe "good_guys/index", :type => :view do
  before(:each) do
    assign(:good_guys, [
      GoodGuy.create!(
        :name => "Name"
      ),
      GoodGuy.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of good_guys" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
