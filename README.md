# iOS (RubyMotion) Animation Library

[![Code Climate](https://codeclimate.com/github/multunus/motion-linear-animate.png)](https://codeclimate.com/github/multunus/motion-linear-animate)

This is a simple wrapper for linear iOS animations. Currently, only simple animations
are supported. We promise to add much more fascination animations to this library,
so please bear with us until then :)

![Animated GIF of Sample Implementation](http://dl.dropboxusercontent.com/s/wvo4mcn74u06lj8/linear-animate-sample.gif)

## Usage

### Installation

Add this line to your application's Gemfile:

```ruby
gem 'motion-linear-animate'
```

And then execute:

```ruby
bundle
```

### Sample App

A sample app is included for reference. To get it up and running, simply clone the
repository and run ```rake``` or ```rake device``` depending on whether you want
to preview it in the simulator or device.

### Using in your app

Here is the basic setup to ease work for you:

```ruby
animator = MotionAnimator.new
animator.linear_animate(view, to: final_point, duration: time_period, completion: completion_block)
```

- ```final_point``` should be an instance of ```CGPoint``` or any other object with ```x``` and ```y``` attributes set to the final *(x, y)* position the view should be in after the animation.
- ```time_period``` is the duration allocated for the animation to take place.

## Contributing

See the [CONTRIBUTING] document.
Thank you, [contributors]!

  [CONTRIBUTING]: CONTRIBUTING.md
  [contributors]: https://github.com/multunus/motion-linear-animate/graphs/contributors

## License

iOS (RubyMotion) Animation Library is Copyright (c) 2016 Multunus Software Pvt.
Ltd. It is free software, and may be redistributed under the terms specified in
the [LICENSE] file.

  [LICENSE]: /LICENSE

## About

![multunus](https://s3.amazonaws.com/multunus-images/Multunus_Logo_Vector_resized.png)

iOS (RubyMotion) Animation Library is maintained and funded by Multunus Software
Pvt. Ltd. The names and logos for Multunus are trademarks of Multunus Software
Pvt. Ltd.

We love open source software!
See [our other projects][community]
or [hire us][hire] to help build your product.

  [community]: http://www.multunus.com/community?utm_source=github
  [hire]: http://www.multunus.com/contact?utm_source=github
