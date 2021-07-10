require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  fixtures :products

  test "product attr must be not empty" do 
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product price must be positive" do
  product = Product.new(title:"My Book Title",
                        description: "yyy",
                        image_url:"zzz.jpg")

  product.price = -1
  assert product.invalid?
  assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]


  product.price = 0
  assert product.invalid?
  assert_equal ["must be greater than or equal to 0.01"],product.errors[:price]
  
  product.price = 1
  assert product.valid?
  end



  def new_product product
    product = Product.new(title:"My Book Title",
                        description: "yyy",
                        image_url: "zzz_jpg",
                        price: 1)
  end

  test "image_url" do
    ok = %w{  fred.jpg fred.png FRED.JPG FRED.Jpg
              http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }

    ok.each do |name|
      assert new_product(name).valid?, "#{name} shouldnt be invalid"
    end

    bad.each do |name|
      assert new_product(name).invalid?, "#{name} shouldnt be valid"
    end
  end


  test "product is not valid without a unique title" do

    product = Product.new(title: "Programming Ruby",
                          description: "yyy",
                          price: 1,
                          image_url: "ruby.jpg")

    #проверка невалидности продукта

    assert product.invalid?

    #проверка соотв. ошибки тексту ошибки

    assert_equal product.errors[:title], ["has already been taken"]

  end

end
