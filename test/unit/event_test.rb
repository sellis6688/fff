require 'test_helper'

class EventTest < ActiveSupport::TestCase
  setup do
    @event = Event.new
  end
  
  test "valid events need a name" do
    assert @event.valid? == false
    assert @event.errors[:name].size == 1
    assert @event.errors[:street1].size == 1
    assert @event.errors[:city].size == 1
    assert @event.errors[:state].size == 1
    assert @event.errors[:zip_code].size == 1
  end
  
  test "valid events need an address" do
    
    assert @event.valid?
  end
end
