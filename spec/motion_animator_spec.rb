describe MotionAnimator do
  before do
    @title_label = UILabel.alloc.initWithFrame(CGRectMake(0.0 , 100.0, 320, 21.0))
    @motion_animator = MotionAnimator.new
  end

  it "should move the given view to the final point" do
    point = @title_label.frame.origin
    point.y = 200
    @motion_animator.linear_animate(@title_label, to: point, duration: 0, completion: nil)
    @title_label.frame.origin.y.should == 200
  end
end
