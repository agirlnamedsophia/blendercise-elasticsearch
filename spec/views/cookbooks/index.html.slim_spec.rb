require 'spec_helper'

describe "cookbooks/index" do
  before(:each) do
    assign(:cookbooks, [
      stub_model(Cookbook),
      stub_model(Cookbook)
    ])
  end

  it "renders a list of cookbooks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
