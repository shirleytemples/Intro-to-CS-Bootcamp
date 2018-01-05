
def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == "yes" || reply == "no")
      if reply == "yes"
        return true
      
      else
        return false
   
      end
      break
    else
      puts "Please answer \"yes\" or \"no\"."
    end
  end


end

puts "Hello, and thank you for..."
puts

ask "Do you like eating tacos?"
ask "Do you like eating burritos?"
wets_bed = ask "Do you wet the bed?"
ask "Do you like eating chimichangas?"
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts "DEBRIEFING:"
puts "Thank you for taking the time to help with
this experiment. In fact, this experiment
has nothing to do with Mexican food. It is
an experiment about bed-wetting. The Mexican
food was just there to catch you off guard
in the hopes that you would answer more
honestly. Thanks again."
puts
puts wets_bed