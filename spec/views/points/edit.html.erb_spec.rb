require 'rails_helper'

RSpec.describe "points/edit", type: :view do
  before(:each) do
    @point = assign(:point, Point.create!(
      :name => "MyString",
      :location => "MyString",
      :decription => "MyText"
    ))
  end

  it "renders the edit point form" do
    render

    assert_select "form[action=?][method=?]", point_path(@point), "post" do

      assert_select "input#point_name[name=?]", "point[name]"

      assert_select "input#point_location[name=?]", "point[location]"

      assert_select "textarea#point_decription[name=?]", "point[decription]"
    end
  end
end
