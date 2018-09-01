record Workout {
  name : String,
  desc : String,
  duration : Number
}

record Round {
  number : Number,
  workouts : Array(Workout)
}

record Workouts {
  id : String,
  level : Level,
  name : String,
  desc : String,
  rounds : Array(Round)
}

record WorkoutResult {
  workout : Workout,
  elapsedRest : Number
}

record RoundResult {
  number : Number,
  workouts : Array(WorkoutResult)
}

record WorkoutsResult {
  id : String,
  level : Level,
  name : String,
  desc : String,
  rounds : Array(RoundResult),
  elapsedRest : Number
}

record Level {
  level : Number,
  subLevel : Number
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

  fun estimateLevelFromCalibration(calibrationResult : CalibrationResult) : Level {
    if(calibrationResult.elapsedSeconds >= 0 && calibrationResult.elapsedSeconds <= 60){
       {level = 1, subLevel = 1}
    } else {
      if(calibrationResult.elapsedSeconds > 60 && calibrationResult.elapsedSeconds <= 120){
        {level = 2, subLevel = 1}
      } else {
        if(calibrationResult.elapsedSeconds > 120 && calibrationResult.elapsedSeconds <= 180){
          {level = 3, subLevel = 1}
        } else {
          if(calibrationResult.elapsedSeconds > 180 && calibrationResult.elapsedSeconds <= 240){
            {level = 4, subLevel = 1}
          } else {
            if(calibrationResult.elapsedSeconds > 240 && calibrationResult.elapsedSeconds <= 300){
              {level = 5, subLevel = 1}
            } else {
              {level = 5, subLevel = 1}
            }
          }
        }
      }
    }
  }

  fun generate1 (workoutHistory : Array(WorkoutsResult), calibrationResult : CalibrationResult) : Array(Workouts) {
    if(Array.isEmpty(workoutHistory)){
      try {
        level = estimateLevelFromCalibration(calibrationResult)
        case (level.level) {
          1 => Array.slice(0, 1, Level1Routines.level1())
          => Array.slice(0, 1, Level1Routines.level1())
        }
      }
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
