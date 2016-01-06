require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe UniversitiesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # University. As you add validations to University, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UniversitiesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all universities as @universities" do
      university = University.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:universities)).to eq([university])
    end
  end

  describe "GET #show" do
    it "assigns the requested university as @university" do
      university = University.create! valid_attributes
      get :show, {:id => university.to_param}, valid_session
      expect(assigns(:university)).to eq(university)
    end
  end

  describe "GET #new" do
    it "assigns a new university as @university" do
      get :new, {}, valid_session
      expect(assigns(:university)).to be_a_new(University)
    end
  end

  describe "GET #edit" do
    it "assigns the requested university as @university" do
      university = University.create! valid_attributes
      get :edit, {:id => university.to_param}, valid_session
      expect(assigns(:university)).to eq(university)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new University" do
        expect {
          post :create, {:university => valid_attributes}, valid_session
        }.to change(University, :count).by(1)
      end

      it "assigns a newly created university as @university" do
        post :create, {:university => valid_attributes}, valid_session
        expect(assigns(:university)).to be_a(University)
        expect(assigns(:university)).to be_persisted
      end

      it "redirects to the created university" do
        post :create, {:university => valid_attributes}, valid_session
        expect(response).to redirect_to(University.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved university as @university" do
        post :create, {:university => invalid_attributes}, valid_session
        expect(assigns(:university)).to be_a_new(University)
      end

      it "re-renders the 'new' template" do
        post :create, {:university => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested university" do
        university = University.create! valid_attributes
        put :update, {:id => university.to_param, :university => new_attributes}, valid_session
        university.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested university as @university" do
        university = University.create! valid_attributes
        put :update, {:id => university.to_param, :university => valid_attributes}, valid_session
        expect(assigns(:university)).to eq(university)
      end

      it "redirects to the university" do
        university = University.create! valid_attributes
        put :update, {:id => university.to_param, :university => valid_attributes}, valid_session
        expect(response).to redirect_to(university)
      end
    end

    context "with invalid params" do
      it "assigns the university as @university" do
        university = University.create! valid_attributes
        put :update, {:id => university.to_param, :university => invalid_attributes}, valid_session
        expect(assigns(:university)).to eq(university)
      end

      it "re-renders the 'edit' template" do
        university = University.create! valid_attributes
        put :update, {:id => university.to_param, :university => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested university" do
      university = University.create! valid_attributes
      expect {
        delete :destroy, {:id => university.to_param}, valid_session
      }.to change(University, :count).by(-1)
    end

    it "redirects to the universities list" do
      university = University.create! valid_attributes
      delete :destroy, {:id => university.to_param}, valid_session
      expect(response).to redirect_to(universities_url)
    end
  end

end