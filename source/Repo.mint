record CalibrationResult {
  elapsedSeconds : Number,
  effortFeedback : Number
}

store Repo {
  state error : String = ""

  get calibrationResult : Result(String, CalibrationResult) {
    try {
      seconds = getCalibrationElapsedSeconds
      effort = getCalibrationEffort

      elapsedSeconds = Number.fromString(seconds)
                       |> Maybe.withDefault(0)
      effortFeedback = Number.fromString(effort)
                       |> Maybe.withDefault(0)
      Result.ok({ elapsedSeconds = elapsedSeconds, effortFeedback = effortFeedback })
    } catch Storage.Error => error {
      Result.error("Error could not retrieve Calibration Result")
    }
  }

  /* ------------- Low level ------------- */
  fun putPlannedWorkouts (workouts : Array(Workouts)) : Void {
    do {
      json = Json.stringify(encode workouts)
      Storage.Local.set("plannedWorkouts", json)
    } catch Storage.Error => error {
      next { error = "Error could not store: planned workouts" }
    }
  }

  fun getPlannedWorkouts() : Result(Storage.Error, Array(Workouts)) {
      try {
      workouts = Storage.Local.get("plannedWorkouts")
      json = Json.parse(workouts)
             |> Maybe.toResult("could not retrieve planned workouts")

      decode json as Array(Workouts)
       }
  }

  fun putCalibrationElapsedSeconds (n : Number) : Void {
    do {
      Storage.Local.set(
        "calibrationElapsedSeconds",
        Number.toString(n))
    } catch Storage.Error => error {
      next { error = "Error could not store: calibrationElapsedSeconds" }
    }
  }

  get getCalibrationElapsedSeconds : Result(Storage.Error, String) {
    Storage.Local.get("calibrationElapsedSeconds")
  }

  fun putCalibrationEffort (n : Number) : Void {
    do {
      Storage.Local.set(
        "calibrationEffort",
        Number.toString(n))
    } catch Storage.Error => error {
      next { error = "Error could not store: calibrationEffort" }
    }
  }

  get getCalibrationEffort : Result(Storage.Error, String) {
    Storage.Local.get("calibrationEffort")
  }

}
