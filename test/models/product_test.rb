require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  def setup
    @product = Product.new(title: "Example Title", description: "Example Description", 
                           start_date: Date.current, end_date: Date.current + 1.days)
  end

  test "should be valid" do
    assert @product.valid?
  end

  test "title should be present" do
    @product.title = "  "
    assert_not @product.valid?
  end

  test "title should not be too long" do
    @product.title = "a" * 256
    assert_not @product.valid?
  end

  test "description should be present" do
    @product.description = "  "
    assert_not @product.valid?
  end

  test "start_date should be present" do
    @product.start_date = nil
    assert_not @product.valid?
  end

  test "end_date should be present" do
    @product.end_date = nil
    assert_not @product.valid?
  end

  test "end_date should not be before start_date" do
    @product.end_date = @product.start_date - 1.day
    assert_not @product.valid?
  end

  test "end_date can be the same as start_date" do
    @product.end_date = @product.start_date
    assert @product.valid?
  end

end
