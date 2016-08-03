class Robot
  @@built_robots = 0
  @@releases_robots = 0
  @@boughts_robots = 0
  def initialize(name_par)
    @@built_robots += 1
  	@name = name_par
    @release = false
    @bought = false
  end
  def release!
    @@releases_robots += 1
    @release = true
  end

  def buy!(per)

    if @release && !@bought
      puts "El robot "+ @name +" fue comprado por " + per.name
      @bought = true
      @owner = per
      @@boughts_robots += 1
    else
      puts "Error al comprar el robot " + @name
    end
  end
  def show_distance(amount)

    puts "Distancia que puedo recorrer: " + distance(amount).to_s + " km"
  end
  def self.show_report

    puts "Robots construidos al momento: " + @@built_robots.to_s
    puts "Robots lanzados al momento: " + @@releases_robots.to_s
    puts "Robots vendidos al momento: " + @@boughts_robots.to_s
  end

end
