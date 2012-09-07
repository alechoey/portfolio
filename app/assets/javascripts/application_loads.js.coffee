jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()
  prettyPrint()
  
  @foldawayOpen = (name) ->
    $(".foldaway[name=#{name}]").slideDown()
    $(".foldaway-open[trigger=#{name}]").hide()
  @foldawayClose = (name) ->
    $(".foldaway[name=#{name}]").slideUp()
    $(".foldaway-open[trigger=#{name}]").show()