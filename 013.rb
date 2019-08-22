class FibonacciNumber

  def initialize()
    @aryFibNum = Array.new()
    @aryFibNum = [1, 1]
  end

  def getFibonacciNumber(n)
    if (@aryFibNum.size - 1) < n then
      @aryFibNum << @aryFibNum[n - 1] + @aryFibNum[n - 2]
      return @aryFibNum[n]
    else
      return @aryFibNum[n]
    end
  end

end


fn = FibonacciNumber.new
0.upto(99) do |i|
  printf("\n%4d:%d", i, fn.getFibonacciNumber(i))
end
