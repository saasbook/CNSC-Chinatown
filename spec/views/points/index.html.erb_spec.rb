require 'rails_helper'

RSpec.describe "points/index", type: :view do
  before(:each) do
    assign(:points, [
      Point.create!(
        :name => "Name",
        :location => "Location",
        :decription => "MyText"
      ),
      Point.create!(
        :name => "Name",
        :location => "Location",
        :decription => "MyText"
      )
    ])
  end

  it "renders a list of points" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
