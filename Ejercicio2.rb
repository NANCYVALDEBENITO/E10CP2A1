module Formula
  attr_accessor :l1, :l2, :pe, :ar
  def perimetro
    @pe = 2 * (@l1 + @l2)
    puts @pe
  end

  def area
    @ar = l1 * l2
    puts @ar
  end
end

class Rectangulo
  include Formula
  attr_reader :l1, :l2
  def initialize(l1, l2)
    @l1 = l1
    @l2 = l2
  end

  def lados
    puts @l1
    puts @l2
  end
end

class Cuadrado
  include Formula
  attr_reader :l1, :l2
  def initialize(l1)
    @l1 = l1
    @l2 = l1
  end

  def lados
    puts @l1
  end
end

Rectangulo.new(4, 3).lados
Rectangulo.new(4, 3).perimetro
Rectangulo.new(4, 3).area
Cuadrado.new(3).lados
Cuadrado.new(3).perimetro
Cuadrado.new(3).area
