require 'spec_helper'

describe "challenges/edit" do
  before(:each) do
    @challenge = assign(:challenge, stub_model(Challenge,
      :defi => "MyString"
    ))
  end

  it "renders the edit challenge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", challenge_path(@challenge), "post" do
      assert_select "input#challenge_defi[name=?]", "challenge[defi]"
    end
  end
end
