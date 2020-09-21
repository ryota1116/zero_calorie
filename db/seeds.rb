require './db/seeds/user'

# ファイルを一つ一つ指定しないと入らなかった
require './db/seeds/food/alcohol'
require './db/seeds/food/donburi'
require './db/seeds/food/flied'
require './db/seeds/food/ice'
require './db/seeds/food/italian'
require './db/seeds/food/juice'
require './db/seeds/food/mushroom'
require './db/seeds/food/nabemono'
require './db/seeds/food/noodle'
require './db/seeds/food/seafood'
require './db/seeds/food/vegitable'
# Dir[File.expand_path('./db/seeds/food', __FILE__) << '/*.rb'].each do |file|
#   require file
# end
# Dir[File.expand_path(Rails.root.join('db/seeds/food'), __FILE__) << '/*.rb']

require './db/seeds/meal_record'
