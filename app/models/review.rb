# == Schema Information
# 
# Table name: reviews
#
#  id          :bigint           not null, primary key
#  author      :string           not null
#  description :string
#  rating      :integer          not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  product_id  :uuid             not null
#
class Review < ApplicationRecord
    
    has_one :product
    validates :title, length: { minimum: 2 }, presence: true
    validates :rating, :inclusion => { :in => 1..5 }, presence: true
    validates :author, presence: true
    validates :product_id, presence: true

    
end
