# procs are objects which wrap up a block of code, store it in a variable or pass
# it to a method, and run the code in the block whenever needed - like a method but
# not bound to an object as it is an object, so can be stored or passed around.
toast = Proc.new do
  puts 'Cheers!'
end

toast.call
toast.call
toast.call
