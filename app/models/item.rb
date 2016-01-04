class Item < ActiveRecord::Base
  def name
    Rails.cache.fetch("item_name_#{cache_key}") do
      read_attribute(:name)
    end
  end
end
