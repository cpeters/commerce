require 'test_helper'

class RatePlanTest < ActiveSupport::TestCase

  def setup
    product = products(:one)
    @rate_plan = RatePlan.new(title: "Example Title", description: "Example Description", 
                              start_date: Date.current, end_date: Date.current + 1.days,
                              price: 1.99, recurrence: "one-time",
                              product: product)
  end

  test "should be valid" do
    assert @rate_plan.valid?
  end

  test "associated product should be present" do
    @rate_plan.product = nil
    assert_not @rate_plan.valid?
  end

  test "title should be present" do
    @rate_plan.title = "  "
    assert_not @rate_plan.valid?
  end

  test "title should not be too long" do
    @rate_plan.title = "a" * 256
    assert_not @rate_plan.valid?
  end

  test "description should be present" do
    @rate_plan.description = "  "
    assert_not @rate_plan.valid?
  end

  test "start_date should be present" do
    @rate_plan.start_date = nil
    assert_not @rate_plan.valid?
  end

  test "end_date should be present" do
    @rate_plan.end_date = nil
    assert_not @rate_plan.valid?
  end

  test "end_date should not be before start_date" do
    @rate_plan.end_date = @rate_plan.start_date - 1.day
    assert_not @rate_plan.valid?
  end

  test "end_date can be the same as start_date" do
    @rate_plan.end_date = @rate_plan.start_date
    assert @rate_plan.valid?
  end

  test "price should be present" do
    @rate_plan.price = nil
    assert_not @rate_plan.valid?
  end

  test "recurrence should be present" do
    @rate_plan.recurrence = nil
    assert_not @rate_plan.valid?
  end

  test "recurrence should be in recurrences" do
    @rate_plan.recurrence = "infinite"
    assert_not @rate_plan.valid?
  end

end
