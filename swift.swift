let gifts = [
  "Partridge in a Pear Tree",
  "Turtle Doves",
  "French Hens",
  "Calling Birds",
  "Golden Rings",
  "Geese a Laying",
  "Swans a Swimming",
  "Maids a Milking",
  "Ladies Dancing",
  "Lords a Leaping",
  "Pipers Piping",
  "Drummers Drumming"]

func ordinalize(i: Int) -> String {
  if (11...19 ~= i%100) {
    return "\(i)th"
  }

  switch i%10 {
  case 1: return "\(i)st"
  case 2: return "\(i)nd"
  case 3: return "\(i)rd"
  default: return "\(i)th"
  }
}

func song() {
  for day in 1...12 {
    println("\nOn the \(ordinalize(day)) day of Christmas, my true love sent to me:")
    for days in reverse(1...day) {
      if (days > 1) {
        println("\(days) \(gifts[days-1]),")
      }
      else {
        if (day > 1) {
          print("and ")
        }
        println("a \(gifts[0])")
      }
    }
  }
}

song()