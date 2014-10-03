#= require "jquery/dist/jquery"

#= require "magnific-popup/dist/jquery.magnific-popup"

# Foundation Javascript
#= require "foundation/js/foundation/foundation"
#= require "foundation/js/foundation/foundation.abide"
#= require "foundation/js/foundation/foundation.alert"
#= require "foundation/js/foundation/foundation.clearing"
# require "foundation/js/foundation/foundation.cookie"
#= require "foundation/js/foundation/foundation.dropdown"
# require "foundation/js/foundation/foundation.forms"
#= require "foundation/js/foundation/foundation.interchange"
#= require "foundation/js/foundation/foundation.joyride"
#= require "foundation/js/foundation/foundation.magellan"
#= require "foundation/js/foundation/foundation.orbit"
# require "foundation/js/foundation/foundation.placeholder"
#= require "foundation/js/foundation/foundation.reveal"
# require "foundation/js/foundation/foundation.section"
#= require "foundation/js/foundation/foundation.tooltip"
#= require "foundation/js/foundation/foundation.topbar"

(($, window, undefined_) ->
  "use strict"
  $doc = $(document)
  Modernizr = window.Modernizr
  $(document).ready ->
    $(document).foundation()
    $(".gallery-image").magnificPopup({
      type: "image",
      gallery: {
        enabled: true
      },
      titleSrc: (item) -> item.el.attr('title') + '<small>by Nic McPhee</small>'
    });
    $(".flex-gallery-image").magnificPopup({
      type: "image",
      gallery: {
        enabled: true
      },
      titleSrc: (item) -> item.el.attr('title') + '<small>by Nic McPhee</small>'
    });
    return

  # UNCOMMENT THE LINE YOU WANT BELOW IF YOU WANT IE8 SUPPORT AND ARE USING .block-grids
  # $('.block-grid.two-up>li:nth-child(2n+1)').css({clear: 'both'});
  # $('.block-grid.three-up>li:nth-child(3n+1)').css({clear: 'both'});
  # $('.block-grid.four-up>li:nth-child(4n+1)').css({clear: 'both'});
  # $('.block-grid.five-up>li:nth-child(5n+1)').css({clear: 'both'});

  # Hide address bar on mobile devices (except if #hash present, so we don't mess up deep linking).
  if Modernizr.touch and not window.location.hash
    $(window).load ->
      setTimeout (->
        window.scrollTo 0, 1
      ), 0

) jQuery, this
