require './car'

describe Car do
  
  it "return range" do
    #arrange - подготовка
    car = Car.new

    #act - действие

    car.add_fuel 10

    #assert проверка

    expect(car.range).to eq 200
  end

end