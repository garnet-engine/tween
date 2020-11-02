require "./tween"

class Garnet::Tween::EaseOut < Garnet::Tween
  @@ease_in = EaseIn.new(0)
  def calc(lf)
    1_f32 - @@ease_in.calc(lf)
  end
end
