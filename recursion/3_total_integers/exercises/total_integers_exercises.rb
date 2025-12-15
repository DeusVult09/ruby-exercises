def total_integers(array)
  # Count the total number of integers inside of the given array
  # The array may be nested, and the integers inside these "inner" layers must also be counted
  #
  # Example: `total_integers([0, 1, [5]]) == 3`
  #
  # NOTE: you may notice that `Array#flatten` would make quick work of this,
  # but you should implement this method without using it. The tests will check
  # to make sure `#flatten` isn't used.
  return 0 if array.empty?
    count = 0

    array.each do |elem|
      if elem.is_a?(Integer)
        count += 1
      elsif elem.is_a?(Array)
        count += total_integers(elem)
      end
    end
    count 
end

=begin
more idiomatic version: 

def total_integers(array)
  array.sum do |e|
    if e.is_a?(Integer)
      1
    elsif e.is_a?(Array)
      total_integers(e)
    else
      0
    end
  end
end

=end