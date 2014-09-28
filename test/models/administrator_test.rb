require 'test_helper'

class AdministratorTest < ActiveSupport::TestCase
	test "Sample AdministratorTest" do
		admin = Administrator.new
		assert_not admin.save, "Save administrator without the name"
	end
  # test "the truth" do
  #   assert true
  # end
end
