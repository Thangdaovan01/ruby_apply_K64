class Bingo
 attr_accessor :B
 attr_accessor :I
 attr_accessor :N
 attr_accessor :G
 attr_accessor :O

  def initialize     
    self.B = (0..15).to_a.sample(5)
    self.I = (16..30).to_a.sample(5)
    self.N = (31..45).to_a.sample(5)
    self.G = (46..60).to_a.sample(5)
    self.O = (61..75).to_a.sample(5)
    self.N[2] = nil
  end 

  def show
    #printf("%2c | %2c | %2c | %2c | %2c\n",B,I,N,G,O)
    printf("%2s | %2s | %2s | %2s | %2s\n","B","I","N","G","O")
    for x in 0..4 do
      printf("%2d | %2d | %2s | %2d | %2d\n",self.B[x],self.I[x], self.N[x], self.G[x], self.O[x])
    end 
  end
end

bingo1 = Bingo.new
bingo1.show
