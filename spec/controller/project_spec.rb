require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
    context "GET #index" do
        it "returns a success response" do
            get :index
            expect(response).to be_successful
        end
    end

    context "Get #show" do
        let!(:project) { Project.create(title: "Test title", description: "Test Description") }
        it "returns a success response" do
            get :show, params: { id: project }
            expect(response).to be_successful
        end
    end
end