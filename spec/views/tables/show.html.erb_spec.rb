require 'spec_helper'

describe "tables/show" do
  before(:each) do
    @table = assign(:table, stub_model(Table))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
