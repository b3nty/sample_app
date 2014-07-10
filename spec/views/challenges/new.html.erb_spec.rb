require 'spec_helper'

describe "challenges/new" do
  before(:each) do
    assign(:challenge, stub_model(Challenge,
      :defi => "MyString"
    ).as_new_record)
  end

  it "renders new challenge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", challenges_path, "post" do
      assert_select "input#challenge_defi[name=?]", "challenge[defi]"
    end
  end
end
