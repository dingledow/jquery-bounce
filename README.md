jquery-bounce
=========

A jQuery plugin for bouncing objects by Gary Hepting

## Dependencies

**[jQuery](http://jquery.com/)**, 
**[jQuery Easing](http://gsgd.co.uk/sandbox/jquery/easing/)**


## Usage

In the &lt;head&gt; of your document, link jQuery, Easing and Bounce.

```html
<script type="text/javascript" src="./jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="./jquery.easing.1.3.js"></script>
<script type="text/javascript" src="./jquery.bounce.js"></script>
```

Then in your javascript, configure the objects you want to bounce. You can specify groups of ojects by classname, tag or single objects by their element id.

```javascript
// basic usage with no customizations
$('.simple').bounce();

// bounce the object with the element id 'ball'
$('#ball').bounce({
  distance: '40px'
});

// bounce all objects with the class 'bounce' with a customized effect
$('.bounce').bounce({
	distance: '25px', // distance to move
	downspeed: 450, // speed to move to ending point
	upspeed: 200, // speed to return to starting point
	loop: 5, // number of times to loop bouncing animation
	delay: 1000, // delay before initializing
	easingdown: 'easeInExpo', // easing to ending point
	easingup: 'jswing' // easing back to starting point
});
```


How to use
=========

Options:

`distance` &mdash; (pixels) distance to move

`downspeed` &mdash; (milliseconds) speed to move to ending point

`upspeed` &mdash; (milliseconds) speed to return to starting point

`gravity` &mdash; direction to move object (top or bottom)

`timer` &mdash; (milliseconds) delay to repeat bounce (should be minimum of downspeed + upspeed)

`delay` &mdash; (milliseconds) delay initialization of the bouncing animation

`loop` &mdash; (integer) number of times to loop bouncing animation

`easingdown` &mdash; easing to ending point (i.e. - 'easeInExpo')

`easingup` &mdash; easing back to starting point (i.e. - 'jswing')

<!-- 
### stop
```javascript
// stop bouncing all objects with the 'bounce' class
$('.bounce').bounce('stop');

// stop bouncing the object with the element id 'ball'
$('#ball').bounce('stop');
```
 -->
<!-- 
### start
```javascript
// stop bouncing all objects with the 'bounce' class
$('.bounce').bounce('start');

// stop bouncing the object with the element id 'ball'
$('#ball').bounce('start');
```
 -->

Changelog
---------

**Beta v0.2**

 * Added delay option
