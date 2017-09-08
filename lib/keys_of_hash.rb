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
