object clock {
  var value = 0

  method position() = game.at(2,0)

  method value() = value

  method tick() {
    value = value + 1
  }

  method text() {
    return "clock: " + value.toString()
  }

}

class Model {
  
  var counter = 0
  const name  
  const property position

  method action() {
    counter = counter + 1
    self.error("Error " + counter)
  }

  method text() {
    return "action counter of " + name + ": " + counter
  }

}