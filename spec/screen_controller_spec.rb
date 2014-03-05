describe ScreenController do
  before do
    @screen_controller = ScreenController.new
  end

  it "should setup the title label" do
    title_label = @screen_controller.setup_title_label
    title_label.class.should == UILabel
  end

  it "should setup the animation button" do
    animator_button = @screen_controller.setup_animator_button
    animator_button.class.should == UIButton
  end
end
