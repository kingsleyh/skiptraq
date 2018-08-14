record CalibrationResult {
  elapsedSeconds : Number,
  effortFeedback : Number
}

store Repo {
  state generalError : String = ""
  state plannedWorkouts : Array(Workouts) = []

  get calibrationResult : Result(String, CalibrationResult) {
    try {
      seconds =
        getCalibrationElapsedSeconds

      effort =
        getCalibrationEffort

      elapsedSeconds =
        Number.fromString(seconds)
        |> Maybe.withDefault(0)

      effortFeedback =
        Number.fromString(effort)
        |> Maybe.withDefault(0)

      Result.ok(
        {
          elapsedSeconds = elapsedSeconds,
          effortFeedback = effortFeedback
        })
    } catch Storage.Error => error {
      Result.error("Error could not retrieve Calibration Result")
    }
  }

  /* ------------- Low level ------------- */
  fun putPlannedWorkouts (workouts : Array(Workouts)) : Void {
    do {
      json =
        Json.stringify(encode workouts)

      Storage.Local.set("plannedWorkouts", json)
    } catch Storage.Error => error {
      next { generalError = "Error could not store: planned workouts" }
    }
  }

  fun getPlannedWorkouts : Void {
    try {
      workouts =
        Storage.Local.get("plannedWorkouts")

      json =
        Json.parse(workouts)
        |> Maybe.toResult(
          "Error json parsing - could not retrieve planned workout" \
          "s")

      decoded = decode json as Array(Workouts)
      next { plannedWorkouts = decoded }
    } catch Storage.Error => error {
      next { generalError = "Error local storage - could not retrieve planned workouts" }
    } catch Object.Error => error {
      next { generalError = "Error decoding - could not retrieve planned workouts" }
    } catch String => error {
      next { generalError = error }
    }
  }

  fun putCalibrationElapsedSeconds (n : Number) : Void {
    do {
      Storage.Local.set(
        "calibrationElapsedSeconds",
        Number.toString(n))
    } catch Storage.Error => error {
      next { generalError = "Error could not store: calibrationElapsedSeconds" }
    }
  }

  get getCalibrationElapsedSeconds : Result(Storage.Error, String) {
    Storage.Local.get("calibrationElapsedSeconds")
  }

  fun putCalibrationEffort (n : Number) : Void {
    do {
      Storage.Local.set("calibrationEffort", Number.toString(n))
    } catch Storage.Error => error {
      next { generalError = "Error could not store: calibrationEffort" }
    }
  }

  get getCalibrationEffort : Result(Storage.Error, String) {
    Storage.Local.get("calibrationEffort")
  }
}
