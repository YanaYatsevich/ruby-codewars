module Converter
  EXCHANGE_RATE_PER_1_EUR = 25.0

  def exchange_to_usd
    converted_amount = (@price / EXCHANGE_RATE_PER_1_EUR).round
    puts "#{@title}, #{@author} - #{converted_amount} USD"
  end
end

class Book

  attr_accessor :title, :author, :chapter, :price

  def initialize(title, author, chapter, price)
    @title = title
    @author = author
    @chapter = chapter
    @price = price
  end

  def open
    puts "I start read the #{@title} of #{@author} "
  end

  def close
    puts "#{@chapter} is a last chapter. See you soon."
  end

  def to_s #метод вызывается при вызове объекта
    "#{@title}, #{@author} - #{@price} EUR"
  end

  def type
    puts "My type is jpeg"
  end
end

class Novel < Book
  def type
    puts "My type is fb2"
  end
end

class Manga < Book

  def initialize(title, author, chapter, price, has_color)
    @title, @author, @chapter, @price, @has_color = title, author, chapter, price, has_color
  end

  def scroll
    puts "You can scroll chapter!"
  end

  def manga_has_color?
    has_color?
  end

  private
  def has_color?
    puts @has_color
  end

end

class Comics < Book
  include Converter

end

com1 = Comics.new("My comics", "Pol A.K.", 14, 50)
man1 = Manga.new("My manga", "Sok C.T.", 45, 250, true)


puts com1
puts com1.exchange_to_usd

puts man1
man1.manga_has_color?






