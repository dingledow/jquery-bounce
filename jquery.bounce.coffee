###
 *
 *  jQuery Bounce by Gary Hepting - https://github.com/ghepting/jquery-bounce
 *  
 *  Open source under the BSD License.
 *
 *  Copyright © 2013 Gary Hepting. All rights reserved.
 *
###

(($) ->
  $.fn.bounce = (options) ->
    defaults =
      id: $(this).attr("id")
      distance: "20px" # distance to move
      downspeed: 250 # speed to move to ending point
      upspeed: 350 # speed to return to starting point
      gravity: "bottom" # direction to move object (top or bottom)
      timer: 600 # delay to repeat bounce (should be minimum of downspeed + upspeed)
      delay: 0 # delay the initialization
      loop: 0 # number of times to loop bouncing animation
      easingdown: "easeInQuad" # easing to ending point
      easingup: "jswing" # easing back to starting point
    
    defaults.timer = defaults.downspeed + defaults.upspeed  if defaults.timer < defaults.downspeed + defaults.upspeed
    
    options = $.extend(defaults, options)
    
    # if (options == 'stop') {
    # 	clearInterval(obj.interval);
    # 	return false;
    # }else if (options == 'start') {
    # 	return this.each(function() {
    # 		obj = $(this);
    # 		obj.interval = setInterval(function() {
    # 			obj.stop().animate({'margin-top': (defaults.gravity == 'top' ? '-' : '')+defaults.distance, 'opacity': '1'}, defaults.downspeed, defaults.easingdown).animate({'margin-top': '0', 'opacity': '1'}, defaults.upspeed, defaults.easingup);
    # 		}, defaults.timer);
    # 	});
    # }
    
    interval = []
    timeout = []
    
    @each (obj) ->
      obj = $(this)
      obj.wrap '<div style="display:inline-block;position:relative;width:'+obj.outerWidth()+'px;height:'+(obj.outerHeight()+parseInt(options.distance))+'px;" />'
      obj.css "position", "absolute"
      setTimeout(->
        obj.stop().animate(
          "margin-top": ((if options.gravity is "top" then "-" else "")) + options.distance
          opacity: "1"
        , options.downspeed, options.easingdown).animate
          "margin-top": "0"
          opacity: "1"
        , options.upspeed, options.easingup
        obj.interval = setInterval(->
          obj.stop().animate(
            "margin-top": ((if options.gravity is "top" then "-" else "")) + options.distance
            opacity: "1"
          , options.downspeed, options.easingdown).animate
            "margin-top": "0"
            opacity: "1"
          , options.upspeed, options.easingup
        , options.timer)
      , options.delay)
      if options.loop > 0
        obj.timeout = setTimeout(->
          clearInterval obj.interval
        , (options.loop + 1) * options.timer)

) jQuery