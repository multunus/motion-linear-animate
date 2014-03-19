iOS (RubyMotion) Animation Library
============================

[![Code Climate](https://codeclimate.com/github/multunus/motion-linear-animate.png)](https://codeclimate.com/github/multunus/motion-linear-animate)

This is a simple wrapper for linear iOS animations. Currently, only simple animations are supported. We promise to add much more fascination animations to this library, so please bear with us until then :)

![Animated GIF of Sample Implementation](http://dl.dropboxusercontent.com/s/wvo4mcn74u06lj8/linear-animate-sample.gif)

## Installation

Add this line to your application's Gemfile:
```ruby
gem 'motion-linear-animate'
```

And then execute:
```ruby
bundle
```

Or install it yourself as:
```ruby
gem install motion-linear-animate
```

## Usage
We have included a sample app you can use for reference, but here is the basic setup to ease work for you:
```ruby
animator = MotionAnimator.new
animator.linear_animate(view, to: final_point, duration: time_period, completion: completion_block)
```

* ```final_point``` should be an instance of ```CGPoint``` or any other object with ```x``` and ```y``` attributes set to the final *(x, y)* position the view should be in after the animation.
* ```time_period``` is the duration allocated for the animation to take place.
