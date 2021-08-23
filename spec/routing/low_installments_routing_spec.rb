require "rails_helper"

RSpec.describe LowInstallmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/low_installments").to route_to("low_installments#index")
    end

    it "routes to #show" do
      expect(get: "/low_installments/1").to route_to("low_installments#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/low_installments").to route_to("low_installments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/low_installments/1").to route_to("low_installments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/low_installments/1").to route_to("low_installments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/low_installments/1").to route_to("low_installments#destroy", id: "1")
    end
  end
end
