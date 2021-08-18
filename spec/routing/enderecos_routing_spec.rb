require "rails_helper"

RSpec.describe EnderecosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/enderecos").to route_to("enderecos#index")
    end

    it "routes to #show" do
      expect(get: "/enderecos/1").to route_to("enderecos#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/enderecos").to route_to("enderecos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/enderecos/1").to route_to("enderecos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/enderecos/1").to route_to("enderecos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/enderecos/1").to route_to("enderecos#destroy", id: "1")
    end
  end
end
