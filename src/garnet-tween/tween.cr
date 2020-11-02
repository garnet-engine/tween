abstract class Garnet::Tween
  def initialize(@duration : Float32)
    @time_spent = 0_f32
  end

  def linear_fraction
    [1_f32, @time_spent / @duration].min
  end

  def fraction
    calc(linear_fraction)
  end

  def complete?
    linear_fraction == 1_f32
  end

  def update(delta_time)
    @time_spent += delta_time
  end

  abstract def calc(lf)
end