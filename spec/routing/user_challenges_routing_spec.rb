require "spec_helper"

describe UserChallengesController do
  describe "routing" do

    it "routes to #index" do
      get("/user_challenges").should route_to("user_challenges#index")
    end

    it "routes to #new" do
      get("/user_challenges/new").should route_to("user_challenges#new")
    end

    it "routes to #show" do
      get("/user_challenges/1").should route_to("user_challenges#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_challenges/1/edit").should route_to("user_challenges#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_challenges").should route_to("user_challenges#create")
    end

    it "routes to #update" do
      put("/user_challenges/1").should route_to("user_challenges#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_challenges/1").should route_to("user_challenges#destroy", :id => "1")
    end

  end
end
