require 'rails_helper'

RSpec.describe "races/index", type: :view do
  before(:each) do
    assign(:races, [
      Race.create!(
        :name => "Name",
        :latitude => 1.5,
        :longitude => 1.5
      ),
      Race.create!(
        :name => "Name",
        :latitude => 1.5,
        :longitude => 1.5
      )
    ])
  end

  it "renders a list of races" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
