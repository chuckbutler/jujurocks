require 'rails_helper'

RSpec.describe ScheduleController, :type => :controller do
  describe "GET index" do
      it "renders a default view" do
        expect(response.status).to eq(200)
      end
  end
end
