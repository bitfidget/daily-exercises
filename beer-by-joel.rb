class Beer
  def self.song
    num_bottles.downto(2) do |i|
      puts "#{i} bottles of beer on the wall #{i} bottles of beer,
      take one down and pass it around, #{i - 1} of beer on the wall."
      puts " "
    end

    puts "1 bottle of beer on the wall, 1 bottle of beer,
    Take it down and pass it around, no more bottles of beer on the wall.

    No more bottles of beer on the wall no more bottles of beer,
    Go to the store, buy some more #{num_bottles} bottles of beer on the wall."
    puts " "
  end
end