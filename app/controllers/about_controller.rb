class AboutController < ApplicationController
  def index
    describe "GET index" do
        it "renders a default view" do
          expect(response.status).to eq(200)
        end
    end
  end
end
