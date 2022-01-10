COLORS = {
  red: 'красный',
  orange: 'желтый'
}

COLORS.each do |key,value|
  define_method key do
    value
  end
end

p red
