require 'rails_helper'

RSpec.describe "points/show", type: :view do
  before(:each) do
    @point = assign(:point, Point.create!(
      :name => "Name",
      :location => "Location",
      :decription => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/MyText/)
  end
end
