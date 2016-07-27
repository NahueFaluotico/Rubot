class Robot

  def initialize(name_par)

  	@name = name_par
    @release = false
    @sell = false
  end
  def release!
    @release == true
  end

  def buy!(per)
    @sell = true
    @owner = per
    if @release && !@sell
      puts "El robot "+ @name +" fue comprado por" + per.name
    else
      puts "Error al comprar el robot" + @name
    end
  end

end
