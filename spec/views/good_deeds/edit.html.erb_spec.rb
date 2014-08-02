require 'rails_helper'

RSpec.describe "good_deeds/edit", :type => :view do
  before(:each) do
    @good_deed = assign(:good_deed, GoodDeed.create!(
      :title => "MyString",
      :good_guy => nil
    ))
  end

  it "renders the edit good_deed form" do
    render

    assert_select "form[action=?][method=?]", good_deed_path(@good_deed), "post" do

      assert_select "input#good_deed_title[name=?]", "good_deed[title]"

      assert_select "input#good_deed_good_guy_id[name=?]", "good_deed[good_guy_id]"
    end
  end
end
