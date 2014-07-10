require 'spec_helper'

describe "user_challenges/new" do
  before(:each) do
    assign(:user_challenge, stub_model(UserChallenge).as_new_record)
  end

  it "renders new user_challenge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_challenges_path, "post" do
    end
  end
end
