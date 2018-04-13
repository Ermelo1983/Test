require 'rails_helper'

# RSpec.describe PostsController, type: :controller do
#   describe 'GET index' do
#       before { get :index }
#
#       it
#         expect(response.code).to eq('200')
#       end
#     end
# end
describe PostsController do
# before signing in user everything has to be blocked
  describe "GET #index before signing in a user" do
    it  "redirects to new_user_session_path" do
      get :index
      expect(response).to redirect_to new_user_session_path
    end
  end

  describe "GET #new before signing in a user" do
    it  "redirects to new_user_session_path" do
      get :new
      expect(response.code).to eq('302')
      expect(response).to redirect_to new_user_session_path
    end
  end

  describe 'GET #new'
    render_views
    it "new post" do
    sign_in_user
      get :new

      expect(response.code).to eq('200')
      expect(response).to render_template :new
      expect(response).to render_template(:partial => '_form')
      expect(assigns(:post)).to be_a_new(Post)
    end

  describe "GET #index" do
    it  "gives response code 200" do
    sign_in_user
      get :index

        expect(response.code).to eq('200')
        expect(response).to render_template :index
      end
    end
  end
