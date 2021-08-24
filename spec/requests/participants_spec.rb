require 'rails_helper'
RSpec.describe "/participants", type: :request do
  let(:valid_attributes) {
    {
      name: "Luciano",
      surname: "Paulista"
    }
  }

  let(:invalid_attributes) {
    {
      name: "",
      surname: ""
    }
  }

  let(:valid_headers) {
    {}
  }

  describe "GET /index" do
    it "renders a successful response" do
      Participant.create! valid_attributes
      get participants_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      participant = Participant.create! valid_attributes
      get participant_url(participant), as: :json
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Participant" do
        expect {
          post participants_url,
               params: { participant: valid_attributes }, headers: valid_headers, as: :json
        }.to change(Participant, :count).by(1)
      end

      it "renders a JSON response with the new participant" do
        post participants_url,
             params: { participant: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to include("application/json")
      end
    end

    context "with invalid parameters" do
      it "does not create a new Participant" do
        expect {
          post participants_url,
               params: { participant: invalid_attributes }, as: :json
        }.to change(Participant, :count).by(0)
      end

      it "renders a JSON response with errors for the new participant" do
        post participants_url,
             params: { participant: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to include("application/json")
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        {
          name: "Luciano 2",
          surname: "Paulista"
        }
      }

      it "updates the requested participant" do
        participant = Participant.create! valid_attributes
        patch participant_url(participant),
              params: { participant: new_attributes }, headers: valid_headers, as: :json
        participant.reload
        expect(participant.name).to eq("Luciano 2")
      end

      it "renders a JSON response with the participant" do
        participant = Participant.create! valid_attributes
        patch participant_url(participant),
              params: { participant: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "renders a JSON response with errors for the participant" do
        participant = Participant.create! valid_attributes
        patch participant_url(participant),
              params: { participant: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to include("application/json")
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested participant" do
      participant = Participant.create! valid_attributes
      expect {
        delete participant_url(participant), headers: valid_headers, as: :json
      }.to change(Participant, :count).by(-1)
    end
  end
end
