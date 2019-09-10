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

class Garnet::Tween::Linear < Garnet::Tween
  def calc(lf)
    lf
  end
end

class Garnet::Tween::EaseIn < Garnet::Tween
  def calc(lf)
    lf * lf * lf
  end
end

class Garnet::Tween::EaseOut < Garnet::Tween
  @@ease_in = EaseIn.new(0)
  def calc(lf)
    1_f32 - @@ease_in.calc(lf)
  end
end

class Garnet::Tween::EaseInOut < Garnet::Tween
  @@ease_in = EaseIn.new(0)
  def calc(lf)
    if lf < 0.5
      @@ease_in.calc(lf * 2) / 2
    else
      1 - @@ease_in.calc((1 - lf) * 2) / 2
    end
  end
end
