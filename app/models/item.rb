class Item < ActiveRecord::Base
  def name
    Rails.cache.fetch("item_name_#{id}", expires_in: 10.seconds) do
      read_attribute(:name)
    end
  end
end
