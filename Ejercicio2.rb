module Formula
  def perimetro(l1, l2)
    2 * (l1 + l2)
  end

  def area(l1, l2)
    l1 * l2
  end
end

class Rectangulo
  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    puts @largo
    puts @ancho
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts @lado
  end
end

x = Cuadrado.new(3)
y = Rectangulo.new(4, 3)
puts x.perimetro(3, 3)
puts x.area(3, 3)
puts y.perimetro(4, 3)
puts y.area(4, 3)
