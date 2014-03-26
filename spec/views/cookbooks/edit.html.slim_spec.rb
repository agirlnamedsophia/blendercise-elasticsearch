require 'spec_helper'

describe "cookbooks/edit" do
  before(:each) do
    @cookbook = assign(:cookbook, stub_model(Cookbook))
  end

  it "renders the edit cookbook form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cookbook_path(@cookbook), "post" do
    end
  end
end
