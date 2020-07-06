# Add your code here
lit = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(lit)
  # count=0
  # lit.each do |song|
  #   count+=1
  #   puts count.to_s+". #{song}"
  # end
  lit.each_with_index {|song,num| puts "#{num+1}. #{song}"}
end

def play(lit)
  puts  "Please enter a song name or number:"
  input=gets.strip
  x=input.to_i
  string_matches=nil
  lit.each do|song|
    string_matches=song if song==input
  end
  # puts x
  # puts string_matches
  # if input.to_i==0||input.to_i>9
  #   puts "Invalid input, please try again"
  if x.between?(1,9)
    x=x-1
    puts "Playing #{lit[x]}"
  elsif x==0 && string_matches!=nil
    puts "Playing #{string_matches}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(lit)
  puts "Please enter a command:"
  input=gets.strip
  until input =="exit" do
    if input == "help"
      help
    elsif input == "list"
      list
    elsif input =="play"
      play
    end
    puts "Please enter a command:"
    # puts "That boy aint right"
    input=gets.strip
  end
  exit_jukebox
end

run
