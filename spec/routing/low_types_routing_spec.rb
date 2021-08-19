require "rails_helper"

RSpec.describe LowTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/low_types").to route_to("low_types#index")
    end

    it "routes to #show" do
      expect(get: "/low_types/1").to route_to("low_types#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/low_types").to route_to("low_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/low_types/1").to route_to("low_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/low_types/1").to route_to("low_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/low_types/1").to route_to("low_types#destroy", id: "1")
    end
  end
end
