class SecretCode
  attr_reader :colors
  def initialize
    @colors = generate_code
  end


  def generate_code
    colors = ["r","g","b","y"]
    code = []
    4.times do
      code << colors.sample(1)
    end
    code.flatten!
  end
end
