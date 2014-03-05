class ScreenController < UIViewController
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor
    @title_label = setup_title_label
    @animator_button = setup_animator_button
    self.view.addSubview(@title_label)
    self.view.addSubview(@animator_button)
  end

  def setup_title_label
    title_label = UILabel.alloc.initWithFrame(CGRectMake(0.0 , 100.0, self.view.frame.size.width, 21.0))
    title_label.setFont(UIFont.fontWithName("Helvetica-Bold", size: 18))
    title_label.setBackgroundColor(UIColor.clearColor)
    title_label.setTextColor(UIColor.colorWithRed(157.0/255.0, green:157.0/255.0, blue:157.0/255.0, alpha:1.0))
    title_label.setText("Awesome Stuff @ Multunus!!")
    title_label.setTextAlignment(NSTextAlignmentCenter)
    title_label
  end

  def setup_animator_button
    animator_button = UIButton.buttonWithType(UIButtonTypeCustom)
    animator_button.layer.cornerRadius = 10.0
    animator_button.addTarget(self, action: "animate_title_label:", forControlEvents:UIControlEventTouchDown)
    animator_button.backgroundColor = UIColor.blackColor
    animator_button.setTitle("Click To Animate!!", forState:UIControlStateNormal)
    animator_button.frame = CGRectMake(80.0, 30.0, 160.0, 40.0)
    animator_button
  end

  def animate_title_label sender
    animator = MotionAnimator.new
    final_point = @title_label.frame.origin
    final_point.y += 50
    animator.linear_animate(@title_label, to: final_point, duration: 0.3, completion: nil)
  end
end
