require "./tween"

class Garnet::Tween::EaseIn < Garnet::Tween
  def calc(lf)
    lf * lf * lf
  end
end
