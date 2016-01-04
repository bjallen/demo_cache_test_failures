require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test 'factories' do
    name = "Factory Item"
    item = FactoryGirl.build_stubbed(:item, name: name)
    assert_equal name, item.name
  end

  test 'database' do
    1001.times do
      name = "Database Item"
      item = Item.create(name: name)
      assert_equal name, item.name
    end
  end
end
