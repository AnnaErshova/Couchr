require 'rails_helper'

RSpec.describe "sessions/index", type: :view do
  before(:each) do
    assign(:sessions, [
      Session.create!(
        :name => "Name"
      ),
      Session.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of sessions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
