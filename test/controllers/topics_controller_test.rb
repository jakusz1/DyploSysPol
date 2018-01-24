require 'test_helper'

class TopicsControllerTest < ActionDispatch::IntegrationTest
  test "should not add topic with no data" do
  	topic=Topic.new
  	assert_not topic.save
  end
  test "should not add topic with bad number of attending students" do
  	topic=Topic.new(attending_number: 12, title: "test", studies_type: "magisterskie", if_eng: true, teacher_id: 1)
  	assert_not topic.save
  end
  test "should add topic" do
  	topic=Topic.new(attending_number: 1, title: "test_dobry", studies_type: "magisterskie", if_eng: true, teacher_id: 1)
  	assert_not topic.save
  end

end
