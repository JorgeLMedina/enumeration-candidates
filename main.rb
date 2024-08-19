# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

# puts @candidates

candidate = find(7)

# puts find(7)
# puts experienced?(candidate)
pp qualified_candidates(@candidates)
# puts ordered_by_qualifications(@candidates)