class fi.BoardObject extends fi.ClassAttributes
  @sprite: (url, sx, sy)->
    @classAttributes url: url, sx: sx, sy: sy

  @dimensions: (w, h)->
    @width = w
    @height = h
    @classAttributes width: w, height: h

  constructor: (game)->
    dimensions = null
    @width  = @class().width
    @height = @class().height
    @w = @width
    @h = @height
    @x = 0
    @y = 0
    @image_loaded = false
    @_loadImage()
    @game = game

  draw: ->
    @_drawAt @x, @y

  _loadImage: ->
    @image = new Image()
    @image.onload = => @image_loaded = true
    @image.src = @class().url

  _drawAt: (x, y, frame=0)->
    return unless @image_loaded
    frame = 0 unless frame
    if @image_loaded
      @game.canvas.drawImage(@image,
        @class().sx + frame * @class().width, @class().sy, @class().width,
          @class().height, x, y, @class().width, @class().height)
