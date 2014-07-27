class Book
  attr_accessor :title

  def title=(name)
  	text = name.split(" ")
    ex_words = %w[a an the for and nor but or yet so in of]

    text.each do |word|
      if ex_words.include? word
        word.downcase!
      else
        word.capitalize!
      end
    end
    text[0].capitalize!
    @title = text.join(" ")
  end
end

book = Book.new
book.title = "inferno"
puts book.title
