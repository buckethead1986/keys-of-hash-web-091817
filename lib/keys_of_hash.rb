require 'pry'
class Hash
  def keys_of(*arg) #No online resource showed a single splat argument example.
    output = []
    arg.each {|argument| #iterate over argument list
      self.each {|k, v| #for each argument, iterate over hash (designated by 'self', whatever the method is being called on.)
        if v == argument #check if the value, v, matches the currently iterating argument
        output << k #if so, shovel key k onto output array
      end
      }
    }
    output #return el array
  end
end

# class Hash
#   def keys_of(*arg) #stolen from the solution online, just trying it out to understand it. SO much prettier than mine.
#     map {|k, v| arg.include?(v) ? k : nil}.compact #calls map implicitly on whatever outside hash this is being used on. if the argument array includes the
#   end                                           #currently iterating value (if that block evaluates to true), add the key to the map, if not, add nil (? k : nil) . compact removes all nils at the end.
# end
