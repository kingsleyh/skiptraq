record Workout {
  name : String,
  desc : String,
  duration : Number
}

record Workouts {
  name : String,
  workouts : Array(Workout)
}

record WorkoutResult {
  workouts : Workout,
  elapsed

}

module Routines {

  fun regularBounce(duration : Number) : Workout {
    { name = "Regular Bounce",
      desc = "Perform regular bounce",
      duration = duration }
  }

  fun rest(duration : Number) : Workout {
    { name = "Rest",
      desc = "Take a rest",
      duration = duration }
  }

}

module CoachGenerator {

  fun generate (days : Number, workoutHistory : ) : Array(Workouts) {
    case (days) {
      1 => generate1()
      2 => generate2()
      3 => generate3()
      4 => generate4()
      5 => generate5()
      6 => generate6()
      7 => generate7()
      => generate3()
    }
  }

  fun generate1 : Array(Workouts) {
    []
  }

  fun generate2 : Array(Workouts) {
    []
  }

  fun generate3 : Array(Workouts) {
    []
  }

  fun generate4 : Array(Workouts) {
    []
  }

  fun generate5 : Array(Workouts) {
    []
  }

  fun generate6 : Array(Workouts) {
    []
  }

  fun generate7 : Array(Workouts) {
    []
  }
}
