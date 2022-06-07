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
FactoryBot.define do
  factory :product do
    description { Faker::Quote.yoda }
    name { Faker::Commerce.product_name }
  end
end
