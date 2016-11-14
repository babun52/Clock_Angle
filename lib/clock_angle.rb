class String
  define_method(:clock_angle) do |minute|
    minute_hand = minute.to_f() * 6
    hour_hand = self.to_f()
    if hour_hand == 12
      hour_hand = 0
    end
    hour_hand = hour_hand * 30
    degrees = hour_hand - minute_hand
    degrees
  end
end
