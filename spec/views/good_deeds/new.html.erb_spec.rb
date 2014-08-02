require 'rails_helper'

RSpec.describe "good_deeds/new", :type => :view do
  before(:each) do
    assign(:good_deed, GoodDeed.new(
      :title => "MyString",
      :good_guy => nil
    ))
  end

  it "renders new good_deed form" do
    render

    assert_select "form[action=?][method=?]", good_deeds_path, "post" do

      assert_select "input#good_deed_title[name=?]", "good_deed[title]"

      assert_select "input#good_deed_good_guy_id[name=?]", "good_deed[good_guy_id]"
    end
  end
end
