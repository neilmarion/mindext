require "spec_helper"

describe CompositionsController do
  describe "routing" do

    it "routes to #index" do
      get("/compositions").should route_to("compositions#index")
    end

    it "routes to #new" do
      get("/compositions/new").should route_to("compositions#new")
    end

    it "routes to #show" do
      get("/compositions/1").should route_to("compositions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/compositions/1/edit").should route_to("compositions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/compositions").should route_to("compositions#create")
    end

    it "routes to #update" do
      put("/compositions/1").should route_to("compositions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/compositions/1").should route_to("compositions#destroy", :id => "1")
    end

  end
end
