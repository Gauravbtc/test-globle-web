class SingleVarQ
  def initialize(start)
    @q = start
  end

  def queue
    p @q
  end

  def enqueue num_to_queue
    if (num_to_queue < 10 && num_to_queue != 0)
      @q  = if(@q / 10 > 0)
              (num_to_queue * (10 ** digit(@q))) + @q
            else
              (num_to_queue*10) + @q
            end
    else
      raise "Invalid integer"
    end
  end


  def dequeue
    i = @q % 10
    @q /= 10
    @q
  end

   def digit(num)
    d = 1
    while num > 10 do
      num /= 10
      d += 1
    end
     d
   end

  def circular_queue
    i = @q % 10
    @q /= 10
    @q = i * (10 ** digit(@q)) + @q
  end
end