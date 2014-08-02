require 'rails_helper'

RSpec.describe "good_guys/show", :type => :view do
  before(:each) do
    @good_guy = assign(:good_guy, GoodGuy.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
