require 'spec_helper'

describe "challenges/show" do
  before(:each) do
    @challenge = assign(:challenge, stub_model(Challenge,
      :defi => "Defi"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Defi/)
  end
end
