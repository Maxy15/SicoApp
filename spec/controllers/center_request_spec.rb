require "rails_helper"

class CenterTest < ActiveSupport::TestCase 
  RSpec.describe "Centers", type: :request do
    before(:each) do

    end
    # Acá van los tests
    describe "index" do
      it "should return a successful request" do 
        get "/centers/index"
        expect(response).to  have_http_status(:ok)
      end
    end

    describe "new" do 
      it "should return a successful request" do 
        get "/centers/new"
        expect(response).to  have_http_status(:ok)
      end
    end
  end
end