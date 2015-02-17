# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.
class SecretHandshake
  attr_reader :binary, :solution

  def initialize (binary)
    @binary = binary
    @solution = []
  end

  def commands
    binary.reverse.each_char.with_index(0) do |char, i|
      if char == "1"
        solution << "wink" if i == 0
        solution << "double blink" if i == 1
        solution << "close your eyes" if i == 2
        solution << "jump" if i == 3
      end
    end

    (binary.length > 4 && binary[-5] == "1") ? solution.reverse! : solution
  end
end