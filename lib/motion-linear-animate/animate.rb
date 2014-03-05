class MotionAnimator
  def linear_animate(view, to: final_point, duration: time_period, completion: completion_block)
    frame = view.frame
    frame.origin.x = final_point.x
    frame.origin.y = final_point.y
    UIView.animateWithDuration(time_period,
                               animations: lambda{
                                 view.frame = frame
                               },
                               completion: completion_block)
  end
end
