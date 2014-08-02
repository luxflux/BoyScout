require 'rails_helper'

RSpec.describe "good_deeds/show", :type => :view do
  before(:each) do
    @good_deed = assign(:good_deed, GoodDeed.create!(
      :title => "Title",
      :good_guy => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
