class Player
  init: ->
    @isLoaded = false
    @$el =  $("#viki-player")
    @present = @$el.length > 0
    @onLoadCallbacks = []

  loaded: ->
    @isLoaded = true
    cb() for cb in @onLoadCallbacks
    @onLoadCallbacks = []

  onLoad: (cb) ->
    if @isLoaded
      cb()
    else
      @onLoadCallbacks.push(cb)

  videoObject: ->
    videoObject = $('.flowplayer').find('video')[0]
    if videoObject
      videoObject
    else
      fl = document.getElementById("flashObject")
      unless navigator.appName.indexOf("Microsoft") is -1
        fl
      else
        fl.children[fl.children.length - 1]

  playVideo: -> @videoObject().playVideo()

  pauseVideo: -> @videoObject().pause()

  seekTo: (time) -> @videoObject().seekTo time

  getSubtitleLanguage: ->
    try @videoObject().getSubtitleLanguage()

  setSubtitleLanguage: (language) ->
    @videoObject().setSubtitleLanguage language

  getShowSubtitles: -> @videoObject().getShowSubtitles()

  setShowSubtitles: (state) ->
    @videoObject().setShowSubtitles state

  updateChromecastReceivers: (receivers) ->
    try
      @videoObject().updateChromecastReceivers(receivers)

  updateChromecastAvailability: (isAvailable) ->
    try
      @videoObject().updateChromecastAvailability(isAvailable)

  updateChromecastPlayerStatus: (status) ->
    try
      @videoObject().updateChromecastPlayerStatus(status)

  updateChromecastStatus: (status) ->
    try
      @videoObject().updateChromecastStatus(status)

  stopChromecast: (status) ->
    try
      @videoObject().stopChromecast(status)

  getCurrentTime: ->
    try
      @videoObject().getCurrentTime()
    catch
      return 0

window.player = new Player();
