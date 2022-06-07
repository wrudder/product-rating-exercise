# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id          :uuid             not null, primary key
#  description :string
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_products_on_name  (name) UNIQUE
#

class Product < ApplicationRecord
    
    has_many :reviews


   
end
