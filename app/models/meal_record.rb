# == Schema Information
#
# Table name: meal_records
#
#  id         :bigint           not null, primary key
#  meal_time  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class MealRecord < ApplicationRecord
  has_one_attached :meal_picture
  # attr_accessor :meal_picture

  # def parse_base64(meal_picture)
  #   if meal_picture.present? || rex_image(meal_picture) == ''
  #     content_type = create_extension(meal_picture)
  #     contents = meal_picture.sub %r/data:((meal_picture|application)\/.{3,}),/, ''
  #     decoded_data = Base64.decode64(contents)
  #     filename = Time.zone.now.to_s + '.' + content_type
  #     File.open("#{Rails.root}/tmp/#{filename}", 'wb') do |f|
  #       f.write(decoded_data)
  #     end
  #   end
  #   attach_image(filename)
  # end

  # private

  # def create_extension(meal_picture)
  #   content_type = rex_image(meal_picture)
  #   content_type[%r/\b(?!.*\/).*/]
  # end

  # def rex_image(meal_picture)
  #   meal_picture[%r/(meal_picture\/[a-z]{3,4})|(application\/[a-z]{3,4})/]
  # end

  # def attach_image(filename)
  #   meal_picture.attach(io: File.open("#{Rails.root}/tmp/#{filename}"), filename: filename)
  #   FileUtils.rm("#{Rails.root}/tmp/#{filename}")
  # end
end
