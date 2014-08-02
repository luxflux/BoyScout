require 'rails_helper'

RSpec.describe "good_guys/new", :type => :view do
  before(:each) do
    assign(:good_guy, GoodGuy.new(
      :name => "MyString"
    ))
  end

  it "renders new good_guy form" do
    render

    assert_select "form[action=?][method=?]", good_guys_path, "post" do

      assert_select "input#good_guy_name[name=?]", "good_guy[name]"
    end
  end
end
