jQuery-Bounce (BETA)
=========

A jQuery plugin for bouncing objects by Gary Hepting

Watch, fork and pull from: [https://github.com/ghepting/jQuery-Bounce]


## Dependencies

**[jQuery](http://jquery.com/)**, 
**[jQuery Easing](http://gsgd.co.uk/sandbox/jquery/easing/)**


## Usage

In the &lt;head&gt; of your document, link jQuery, Easing and Bounce.

```html
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="./js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="./js/jquery.bounce.js"></script>
```

Then in your javascript, configure the objects you want to bounce. You can specify groups of ojects by classname, tag or single objects by their element id.

```javascript
// basic usage with no customizations
$('.simple').bounce();

// bounce all objects with the 'bounce' class and customize effect
$('.bounce').bounce({
	distance: '25px', // distance to move
	downspeed: 450, // speed to move to ending point
	upspeed: 200, // speed to return to starting point
	gravity: 'top', // direction to move object (top or bottom)
	timer: 650, // delay to repeat bounce (should be minimum of downspeed + upspeed)
	loop: 5, // number of times to loop bouncing animation
	easingdown: 'easeInExpo', // easing to ending point
	easingup: 'jswing' // easing back to starting point
});

// bounce the object with the element id 'ball'
$('#ball').bounce({
	distance: '50px', // distance to move
	downspeed: 400, // speed to move to ending point
	upspeed: 600, // speed to return to starting point
	gravity: 'bottom', // direction to move object (top or bottom)
	timer: 1000, // delay to repeat bounce (should be minimum of downspeed + upspeed)
	loop: 0, // number of times to loop bouncing animation
	easingdown: 'easeInExpo', // easing to ending point
	easingup: 'easeOutExpo' // easing back to starting point
});
```


How to use
=========

Options:

`distance` &mdash; (pixels) distance to move

`downspeed` &mdash; (milliseconds) speed to move to ending point

`vupspeed` &mdash; (milliseconds) speed to return to starting point

`gravity` &mdash; direction to move object (top or bottom)

`timer` &mdash; (milliseconds) delay to repeat bounce (should be minimum of downspeed + upspeed)

`loop` &mdash; (integer) number of times to loop bouncing animation

`easingdown` &mdash; easing to ending point (i.e. - 'easeInExpo')

`easingup` &mdash; easing back to starting point (i.e. - 'jswing')


### stop
```javascript
// stop bouncing all objects with the 'bounce' class
$('.bounce').bounce('stop');

// stop bouncing the object with the element id 'ball'
$('#ball').bounce('stop');
```


### start
```javascript
// stop bouncing all objects with the 'bounce' class
$('.bounce').bounce('start');

// stop bouncing the object with the element id 'ball'
$('#ball').bounce('start');
```


Changelog
---------

**Beta v0.1**

 * Setup initial working concept