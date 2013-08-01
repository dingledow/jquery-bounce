jquery-bounce
====

A jQuery plugin to create animated bouncing elements.

View the demo at [http://garyhepting.com/jquery-bounce]


Installation:
----

Initialize the plugin:

```html
<script type="text/javascript">
  $(window).ready(function() {
    $('.bounce').bounce();
  });
</script>
```

Configurations can be added to the markup of each element with simple data attributes:

```html
<img class="bounce" data-distance="200" data-speed-down="300" data-speed-up="650" src="./demo/ball.svg" alt="Bouncing Ball" />
```

Complete Options:

```html
<img class="bounce" data-distance="200" data-speed-down="300" data-speed-up="650" data-gravity="bottom" data-timer="950" data-delay="0" data-loop="10" data-easing-down="easeInQuad" data-easing-up="easeOutQuad" src="./demo/ball.svg" alt="Bouncing Ball" />
```
