class Book
  def open
    # open book
  end

  def next_page
    #  change to the next page
  end

  def previous_page
    #  change to the previous page
  end

  def close
    # close book
  end

  private

  def size
    # < 30 MB
  end

  def type
    # jpeg
  end
end

class Novel < Book

  private

  def type
    # fb2
  end
end

class Manga < Book
  def scroll
    # scroll book
  end

  private

  def size
    # > 50 MB
  end
end

class Comics < Book
  private

  def size
    # > 50 MB
  end
end