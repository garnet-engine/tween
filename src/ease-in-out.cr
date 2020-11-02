require "./tween"

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
