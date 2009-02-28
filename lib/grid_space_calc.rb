# This utility function is used to calculate the amount of space required above and below a player's name in the grid.

# The line_height is the is the total height a name will be in pixels, height of text plus bottom border.
# The space_pixels is the space above and below the player name in the first round
# rounds is the number of total number of rounds
#


def calculate_spaces(space=32, height=22, rounds =1)
  unless rounds < 1 
    rounds = rounds- 1
    puts "height: #{space}px;"
    next_space = (2 * space) + (height/2)
    calculate_spaces(next_space, height, rounds)
  end
end

space_pixels = 32
line_height_pixels = 22
rounds = 8

puts "Calculating for #{rounds} round tournament, each line has a height of #{line_height_pixels}, with #{space_pixels}px padding above and below each line.\n\n"

calculate_spaces( space_pixels,line_height_pixels, rounds)

puts "\n\nUpdate round-x classes in application.css with these numbers"
