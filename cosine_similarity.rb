require "matrix"

def cosine_similarity(vector_1, vector_2)
  raise "Lengths must match" unless vector_1.size == vector_2.size
  similarity = vector_1.inner_product(vector_2) / (vector_1.r * vector_2.r)



end


if __FILE__ == $0
  size = 300
  puts "Testing two vectors of shape [1 x #{size}]"
  
  vector_1 = Vector.elements(Array.new(size) { rand(1..9) })
  vector_2 = Vector.elements(Array.new(size) { rand(1..9) })

  starting = Time.now
  p cosine_similarity(vector_1, vector_2)
  ending = Time.now
  elapsed = ending - starting

  puts "Completed in #{elapsed} seconds"

end