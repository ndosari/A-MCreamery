require 'test_helper'

class ShiftTest < ActiveSupport::TestCase
  
  # Test Relationships
  should belong_to(:assignment)
  should have_many(:shift_jobs)
  should have_many(:jobs).through(:shift_jobs)
  should have_one(:employee).through(:assignment)
  should have_one(:store).through(:assignment)
  
  

end
