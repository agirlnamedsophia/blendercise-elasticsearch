require 'spec_helper'

describe "cookbooks/show" do
  before(:each) do
    @cookbook = assign(:cookbook, stub_model(Cookbook))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
