# We are going to use UUID as primary key for all tables as described in https://pawelurbanek.com/uuid-order-rails

class EnableUuid < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'pgcrypto'
  end
end
