require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        street: "Street",
        city: "City",
        state: "State",
        zip: "Zip",
        user: nil
      ),
      Address.create!(
        street: "Street",
        city: "City",
        state: "State",
        zip: "Zip",
        user: nil
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", text: "Street".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "State".to_s, count: 2
    assert_select "tr>td", text: "Zip".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
