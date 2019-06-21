require "matrix"

def cosine_similarity(vector_1, vector_2)
  raise "Lengths must match" unless vector_1.size == vector_2.size
  similarity = vector_1.inner_product(vector_2) / (vector_1.r * vector_2.r)
end

