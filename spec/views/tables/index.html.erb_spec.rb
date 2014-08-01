require 'spec_helper'

describe "tables/index" do
  before(:each) do
    assign(:tables, [
      stub_model(Table),
      stub_model(Table)
    ])
  end

  it "renders a list of tables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
