object clock {
  var value = 0

  method position() = game.at(0,0)

  method value() = value

  method tick() {
    value = value + 1
  }

  method text() {
    return "clock" + value.toString()
  }

}

object model {
  
  var counter = 0
  
  method position() =  game.at(0,1)

  method action() {
    counter = counter + 1
    self.error("Error " + counter)
  }

  method text() {
    return "action counter: " + counter
  }

}