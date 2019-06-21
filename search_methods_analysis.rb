require_relative "cosine_similarity"

def test_method(method_name, vector_size = 300, num_tests = 10000)
  name = method_name.to_s
  puts "Testing two vectors of shape [1 x #{vector_size}] with #{name} and #{num_tests} tests"

  times = []
  num_tests.times do |i|
    vector_1 = Vector.elements(Array.new(vector_size) { rand(-9.0..9.0) })
    vector_2 = Vector.elements(Array.new(vector_size) { rand(-9.0..9.0) })

    starting = Time.now
    method_name.call(vector_1, vector_2)
    ending = Time.now
    elapsed = ending - starting
    times << elapsed
  end

  average_elapsed = times.sum/num_tests

  puts "Completed #{num_tests} tests"
  puts "Total completion time: #{times.sum} seconds"
  puts "Average completion time: #{average_elapsed} seconds"

end


if __FILE__ == $0
  cosine = method(:cosine_similarity)
  test_method(cosine)

end