class Book

  attr_accessor :title, :author, :chapter, :price

  def initialize(title, author, chapter)
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

  def to_s
    "#{@title}, #{@author} - #{@price}"
  end

  private

  def size
    puts "Small size < 30 MB"
  end

  def type
    puts "My type is jpeg"
  end
end

class Novel < Book

  private

  def type
    puts "My type is fb2"
  end
end

class Manga < Book
  attr_accessor :color

  def scroll
    puts "You can scroll chapter!"
  end

  private

  def size
    puts "Big size > 50 MB"
  end
end

class Comics < Book
  include Converter

end

module Converter
  EXCHANGE_RATE_PER_1_EUR = 25.0

  def exchange_to_usd
    converted_amount = (@price / EXCHANGE_RATE_PER_1_EUR).round
    puts "#{@price} USD"
  end
end