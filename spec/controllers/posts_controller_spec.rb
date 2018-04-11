require 'rails_helper'
require 'factory_bot'

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

  describe "GET #index" do
          it  "gives response code 200" do
            expect(response.code).to eq('200')
          end
        end

describe 'GET #new' do
  it "requires login" do
    get :index
    expect(response).to redirect_to new_user_session_path
  end
end

 FactoryBot.build(:user)

describe 'GET #new'

  it "requires login" do
    get :index
    expect(response.code).to eq('200')
  end


end
