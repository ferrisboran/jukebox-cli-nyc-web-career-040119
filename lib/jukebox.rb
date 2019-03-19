songs = [
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
	puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(array)
	array.each_with_index do |x,i|
		puts "#{i+1}. #{x}"
	end
end

def play(array)
	puts "Please enter a song name or number:"
	selection = gets.chomp
	if array.include?(selection)
		puts "Playing #{selection}"
	elsif selection.to_i.between?(1, array.length)
		puts "Playing #{array[selection.to_i - 1]}"
	else
		puts "Invalid input, please try again"
	end
end

def exit_jukebox
	puts "Goodbye"
end

def run(array)
	help
	command = ""
	while command 
		puts "Please enter a command:"
		command = gets.chomp
		case command
			when "help"
				help
			when "list"
				list(array)
			when "play"
				play(array)
			when "exit"
				exit_jukebox
				break
			else
				puts "Invalid input, please try again"
		end
	end
end

run(songs)