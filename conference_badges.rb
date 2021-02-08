# Write your code here.
def badge_maker(name)      #should return a formatted badge
    return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    array = [] #create a new array to put name inside
    attendees.each {|name| array << badge_maker(name)} #loop through each name provided and push the message to new array with the name
    array   #return the new array
end


def assign_rooms(attendees)
    array = []     #create new array
    attendees.each_with_index do |name, index|   #each_with_index: keep track of the index number of the current iteration
        array << "Hello, #{name}! You'll be assigned to room #{index+1}!"
    end
    array
end
    
def printer(attendees)
    batch_badge_creator(attendees).each {|names| puts names}   #print the name of each index in the array
    assign_rooms(attendees).each{|room| puts room}
end


