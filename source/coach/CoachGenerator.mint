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
  workout : Workout,
  elapsedRest : Number
}

record WorkoutsResult {
  name : String,
  workouts : Array(WorkoutResult),
  elapsedRest : Number
}

module Routines {

  fun regularBounce(duration : Number) : Workout {
    { name = "Regular Bounce",
      desc = "Perform regular bounce",
      duration = duration }
  }

  fun rest(duration : Number) : Workout {
    { name = "Rest",
      desc = "Take a planned rest",
      duration = duration }
  }

}

module CoachGenerator {

  fun generate (days : Number, workoutHistory : Array(WorkoutsResult), calibrationResult : CalibrationResult) : Array(Workouts) {
    case (days) {
      1 => generate1(workoutHistory, calibrationResult)
      2 => generate2(workoutHistory, calibrationResult)
      3 => generate3(workoutHistory, calibrationResult)
      4 => generate4(workoutHistory, calibrationResult)
      5 => generate5(workoutHistory, calibrationResult)
      6 => generate6(workoutHistory, calibrationResult)
      7 => generate7(workoutHistory, calibrationResult)
      => generate3(workoutHistory, calibrationResult)
    }
  }

  fun generate1 (workoutHistory : Array(WorkoutsResult), calibrationResult : CalibrationResult) : Array(Workouts) {
    if(Array.isEmpty(workoutHistory)){
      []
       /* if(calibrationResult.effortFeedback > ) */
    } else {
       []
    }
  }

  fun generate2 (workoutHistory : Array(WorkoutsResult), calibrationResult : CalibrationResult) : Array(Workouts) {
    []
  }

  fun generate3 (workoutHistory : Array(WorkoutsResult), calibrationResult : CalibrationResult) : Array(Workouts) {
    []
  }

  fun generate4 (workoutHistory : Array(WorkoutsResult), calibrationResult : CalibrationResult) : Array(Workouts) {
    []
  }

  fun generate5 (workoutHistory : Array(WorkoutsResult), calibrationResult : CalibrationResult) : Array(Workouts) {
    []
  }

  fun generate6 (workoutHistory : Array(WorkoutsResult), calibrationResult : CalibrationResult) : Array(Workouts) {
    []
  }

  fun generate7 (workoutHistory : Array(WorkoutsResult), calibrationResult : CalibrationResult) : Array(Workouts) {
    []
  }
}
