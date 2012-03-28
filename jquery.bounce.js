/* Author:
 * Gary Hepting
 * Find me on Github: https://github.com/ghepting/
*/

		(function($) {
			
			$.fn.bounce = function(options) {

				var defaults = {
					distance: '25px', // distance to move
					downspeed: 450, // speed to move to ending point
					upspeed: 200, // speed to return to starting point
					gravity: 'bottom', // direction to move object (top or bottom)
					timer: 650, // delay to repeat bounce (should be minimum of downspeed + upspeed)
					loop: 0, // number of times to loop bouncing animation
					easingdown: 'easeInExpo', // easing to ending point
					easingup: 'jswing' // easing back to starting point
				};

				if(defaults.timer < defaults.downspeed+defaults.upspeed) {
					defaults.timer = defaults.downspeed+defaults.upspeed;
				}

				if (options == 'stop') {
					clearInterval(obj.interval);
					return false;
				}else if (options == 'start') {
					return this.each(function() {
						obj = $(this);
						obj.interval = setInterval(function() {
							obj.stop().animate({'margin-top': defaults.distance, 'opacity': '1'}, defaults.downspeed, defaults.easingdown).animate({'margin-top': '0px', 'opacity': '1'}, defaults.upspeed, defaults.easingup);
						}, defaults.timer);
	    			});
				}

				var options = $.extend(defaults, options);
				
				return this.each(function() {
					obj = $(this);
					obj.interval = setInterval(function() {
						obj.stop().animate({'margin-top': defaults.distance, 'opacity': '1'}, defaults.downspeed, defaults.easingdown).animate({'margin-top': '0px', 'opacity': '1'}, defaults.upspeed, defaults.easingup);
					}, defaults.timer);
					if(defaults.loop > 0) {
						obj.timeout = setTimeout(function() {
							clearInterval(obj.interval);
						}, (defaults.loop+1)*defaults.timer);
					}
    			});

			}

		})(jQuery);

