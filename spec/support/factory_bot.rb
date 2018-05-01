module FactoryBot
RSpec.configure do |config|
  include FactoryBot::Syntax::Methods

end
def sign_in_user
        @request.env['devise.mapping'] = Devise.mappings[:user]
        signed_in_user = FactoryBot.create(:user)
        sign_in signed_in_user
      end
  end
