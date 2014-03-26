require 'spec_helper'

describe "cookbooks/new" do
  before(:each) do
    assign(:cookbook, stub_model(Cookbook).as_new_record)
  end

  it "renders new cookbook form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cookbooks_path, "post" do
    end
  end
end
