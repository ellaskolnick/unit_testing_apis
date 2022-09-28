class InteractiveCalculator
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will subtract two numbers."
    @io.puts "Please enter a number"
    n1 = @io.gets.chomp.to_i
    @io.puts "Please enter another number"
    n2 = @io.gets.chomp.to_i
    @io.puts "Here is your result:"
    @io.puts "#{n1} - #{n2} = #{n1-n2}"
  end
end
