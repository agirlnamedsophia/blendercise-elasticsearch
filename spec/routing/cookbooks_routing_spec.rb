require "spec_helper"

describe CookbooksController do
  describe "routing" do

    it "routes to #index" do
      get("/cookbooks").should route_to("cookbooks#index")
    end

    it "routes to #new" do
      get("/cookbooks/new").should route_to("cookbooks#new")
    end

    it "routes to #show" do
      get("/cookbooks/1").should route_to("cookbooks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cookbooks/1/edit").should route_to("cookbooks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cookbooks").should route_to("cookbooks#create")
    end

    it "routes to #update" do
      put("/cookbooks/1").should route_to("cookbooks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cookbooks/1").should route_to("cookbooks#destroy", :id => "1")
    end

  end
end
