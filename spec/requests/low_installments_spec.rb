require 'rails_helper'

RSpec.describe "/low_installments", type: :request do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # LowInstallmentsController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) {
    {}
  }

  describe "GET /index" do
    it "renders a successful response" do
      LowInstallment.create! valid_attributes
      get low_installments_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      low_installment = LowInstallment.create! valid_attributes
      get low_installment_url(low_installment), as: :json
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new LowInstallment" do
        expect {
          post low_installments_url,
               params: { low_installment: valid_attributes }, headers: valid_headers, as: :json
        }.to change(LowInstallment, :count).by(1)
      end

      it "renders a JSON response with the new low_installment" do
        post low_installments_url,
             params: { low_installment: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new LowInstallment" do
        expect {
          post low_installments_url,
               params: { low_installment: invalid_attributes }, as: :json
        }.to change(LowInstallment, :count).by(0)
      end

      it "renders a JSON response with errors for the new low_installment" do
        post low_installments_url,
             params: { low_installment: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested low_installment" do
        low_installment = LowInstallment.create! valid_attributes
        patch low_installment_url(low_installment),
              params: { low_installment: new_attributes }, headers: valid_headers, as: :json
        low_installment.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the low_installment" do
        low_installment = LowInstallment.create! valid_attributes
        patch low_installment_url(low_installment),
              params: { low_installment: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "renders a JSON response with errors for the low_installment" do
        low_installment = LowInstallment.create! valid_attributes
        patch low_installment_url(low_installment),
              params: { low_installment: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested low_installment" do
      low_installment = LowInstallment.create! valid_attributes
      expect {
        delete low_installment_url(low_installment), headers: valid_headers, as: :json
      }.to change(LowInstallment, :count).by(-1)
    end
  end
end
