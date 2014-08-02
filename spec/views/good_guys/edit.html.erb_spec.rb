require 'rails_helper'

RSpec.describe "good_guys/edit", :type => :view do
  before(:each) do
    @good_guy = assign(:good_guy, GoodGuy.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit good_guy form" do
    render

    assert_select "form[action=?][method=?]", good_guy_path(@good_guy), "post" do

      assert_select "input#good_guy_name[name=?]", "good_guy[name]"
    end
  end
end
