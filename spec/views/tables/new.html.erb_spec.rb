require 'spec_helper'

describe "tables/new" do
  before(:each) do
    assign(:table, stub_model(Table).as_new_record)
  end

  it "renders new table form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tables_path, "post" do
    end
  end
end
