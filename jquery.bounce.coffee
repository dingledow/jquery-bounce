###
 *
 *  jQuery Bounce by Gary Hepting - https://github.com/ghepting/jquery-bounce
 *  
 *  Open source under the MIT License.
 *
 *  Copyright © 2013 Gary Hepting. All rights reserved.
 *
###

class Bounce

  constructor: (el) ->
    @iterations = 0
    @$el = $(el)
    @distance = @$el.data('distance') || 100
    @speedDown = @$el.data('speed-down') || 300
    @speedUp = @$el.data('speed-up') || 600
    @gravity = @$el.data('gravity') || "bottom"
    @timer = @$el.data('timer') || (@speedDown + @speedUp)
    @delay = @$el.data('delay') || 0
    @loop = @$el.data('loop') || 0
    @easingDown = @$el.data('easing-down') || "easeInQuad"
    @easingUp = @$el.data('easing-up') || "easeOutQuad"
    @init()

  init: ->
    @$el.wrap('<div style="display:inline-block;position:relative;text-align:center;width:'+@$el.outerWidth()+'px;height:'+(@$el.outerHeight()+parseInt(@distance))+'px;" />')
    @$el.css
      position: "absolute"
      top: 0
      left: "50%"
      'margin-left': -(@$el.width()/2)
    setTimeout(=>
      @$el.stop().animate(
        "margin-top": ((if @gravity is "top" then "-" else "")) + @distance
        opacity: "1"
      , @speedDown, @easingDown).animate
        "margin-top": "0"
        opacity: "1"
      , @speedUp, @easingUp
      @interval = setInterval(=>
        @iterations++
        @$el.stop().animate(
          "margin-top": ((if @gravity is "top" then "-" else "")) + @distance
          opacity: "1"
        , @downspeed, @easingDown).animate
          "margin-top": "0"
          opacity: "1"
        , @speedUp, @easingUp
        # console.log 'Bounce ' + @iterations + ' of ' + @loop if @loop
        if @iterations == @loop
          clearInterval(@interval)
      , @timer)
    , @delay)

(($) ->

  bounceElements = []

  $.fn.bounce = (options) ->

    interval = []
    timeout = []

    @each ->
      bounceElements.push( new Bounce(@) )

) jQuery

