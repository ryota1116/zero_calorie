# TODO: ファイルを一つ一つ指定しないと入らなかった
# Foodデータ
require './db/seeds/food/alcohol'
require './db/seeds/food/chinese'
require './db/seeds/food/donburi'
require './db/seeds/food/flied'
require './db/seeds/food/fruit'
require './db/seeds/food/ice'
require './db/seeds/food/italian'
require './db/seeds/food/japanese_sweets'
require './db/seeds/food/juice'
require './db/seeds/food/meat'
require './db/seeds/food/mushroom'
require './db/seeds/food/nabemono'
require './db/seeds/food/noodle'
require './db/seeds/food/okinawa'
require './db/seeds/food/other'
require './db/seeds/food/seafood'
require './db/seeds/food/sweets'
require './db/seeds/food/vegitable'
require './db/seeds/food/western'
require './db/seeds/food/white_food'

# Dir[File.expand_path('./db/seeds/food', __FILE__) << '/*.rb'].each do |file|
#   require file
# end
# Dir[File.expand_path(Rails.root.join('db/seeds/food'), __FILE__) << '/*.rb']

# Userデータ
require './db/seeds/user/guest_user'
require './db/seeds/user/user'
