require 'spec_helper'

describe "votes/new" do
  before(:each) do
    assign(:vote, stub_model(Vote,
      :green => 1,
      :red => 1
    ).as_new_record)
  end

  it "renders new vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", votes_path, "post" do
      assert_select "input#vote_green[name=?]", "vote[green]"
      assert_select "input#vote_red[name=?]", "vote[red]"
    end
  end
end
