require 'rails_helper'

RSpec.describe "points/new", type: :view do
  before(:each) do
    assign(:point, Point.new(
      :name => "MyString",
      :location => "MyString",
      :decription => "MyText"
    ))
  end

  it "renders new point form" do
    render

    assert_select "form[action=?][method=?]", points_path, "post" do

      assert_select "input#point_name[name=?]", "point[name]"

      assert_select "input#point_location[name=?]", "point[location]"

      assert_select "textarea#point_decription[name=?]", "point[decription]"
    end
  end
end
