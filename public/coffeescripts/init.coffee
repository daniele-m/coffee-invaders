$ ->
  fi.game = new fi.Game '#gameboard'

  fi.game.loadBoard fi.MessageBoard,
    title: "Face Invaders"
    subtitle: "asd asd asd"
    onFirePressed: ->
      fi.game.loadBoard fi.GameBoard, 1

  fi.game.startLoop()