require 'rails_helper'

RSpec.describe "MealRecords", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/meal_record/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/meal_record/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/meal_record/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/meal_record/index"
      expect(response).to have_http_status(:success)
    end
  end

end
