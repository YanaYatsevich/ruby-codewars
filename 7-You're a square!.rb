def is_square(x)
  x >= 0 && Math.sqrt(x).to_r.denominator == 1 ? true : false # сначала считывает квадратный корень числа, после проверяем число на рациональность и проверяем что деление этих чисел равно 1
end


#def is_square(x)
#  x < 0 ? false : Math.sqrt(x) % 1 == 0
#end


# def is_square(x)
#   (0..x).each do |num|
#     if x == num * num
#       return true
#     end
#   end
#   return false
# end

# def is_square(x)
#   if x >= 0 and x ** 0.5 == (x  ** 0.5).to_i then return true else return false end
# end
