require 'spec_helper'

describe "votes/edit" do
  before(:each) do
    @vote = assign(:vote, stub_model(Vote,
      :green => 1,
      :red => 1
    ))
  end

  it "renders the edit vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vote_path(@vote), "post" do
      assert_select "input#vote_green[name=?]", "vote[green]"
      assert_select "input#vote_red[name=?]", "vote[red]"
    end
  end
end
