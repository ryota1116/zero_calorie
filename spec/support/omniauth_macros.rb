# module OmniauthMacros
#   def facebook_mock
#     OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new(
#       {
#         provider: 'facebook',
#         uid: '123456',
#         info: {
#           name: 'facebook-user',
#           email: 'facebook@test.com'
#         },
#         credentials: {
#           token: 'facebook-token'
#         }
#       }
#     )
#   end
# end