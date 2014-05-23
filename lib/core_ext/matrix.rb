require 'matrix'

class Vector 

  def []=(pos, value)
    @elements[pos] = value.to_a
  end

  def [](*i)
    i.length == 1 and i[0].is_a?(Numeric) ? @elements[i[0]] : Vector.elements(@elements[*i])
  end

  def +(v)
    case v
    when Vector
      Vector.Raise ErrDimensionMismatch if size != v.size
      els = collect2(v) {|v1, v2|
        v1 + v2
      }
      Vector.elements(els, false)
    when Matrix
      Matrix.column_vector(self) + v
    when Array
      Vector.Raise ErrDimensionMismatch if size != v.length
      Vector.elements(v) + self
    when Numeric
      Vector.elements([v] * size) + self
    else
      apply_through_coercion(v, __method__)
    end
  end

  def -(v)
    case v
    when Vector
      Vector.Raise ErrDimensionMismatch if size != v.size
      els = collect2(v) {|v1, v2|
        v1 - v2
      }
      Vector.elements(els, false)
    when Matrix
      Matrix.column_vector(self) - v
    when Array
      Vector.Raise ErrDimensionMismatch if size != v.length
      Vector.elements(v) - self
    when Numeric
      Vector.elements([v] * size) - self
    else
      apply_through_coercion(v, __method__)
    end
  end
end
