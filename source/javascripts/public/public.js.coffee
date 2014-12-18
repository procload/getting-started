$ ->

    document.addEventListener "touchstart"

    # Make sure older browsers support the HTML5 Placeholder Attribute
    unless "placeholder" of document.createElement("input")
      $("input[placeholder]").each ->
        val = $(this).attr("placeholder")
        @value = val  if @value is ""
        $(this).focus(->
          @value = ""  if @value is val
        ).blur ->
          @value = val  if $.trim(@value) is ""

    # Clear default placeholder values on form submit
    $("form").submit ->
      $(this).find("input[placeholder]").each ->
        @value = ""  if @value is $(this).attr("placeholder")


    $("h1 a").on "click", (e) ->
      e.preventDefault()
      $this = $(this)
      $siteNav = $("nav")
      $navToggle = $(".navicon-button")

      if $siteNav.hasClass("open")
        $this.removeClass "nav-showing"
        $siteNav.removeClass "open"
        $navToggle.removeClass "open"
      else
        $this.addClass "nav-showing"
        $siteNav.addClass "open"
        $navToggle.addClass "open"
      return

    return

