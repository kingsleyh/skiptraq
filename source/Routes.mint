routes {
  /calibration {
    do {
      Application.setPage("calibration")
    }
  }

  /calibration/run {
    do {
      Application.setPage("calibration-run")
    }
  }

  /calibration/feedback {
    do {
      Application.setPage("calibration-feedback")
    }
  }

  /coach {
    do {
      Application.setPage("coach")
    }
  }

  /coach/new {
    do {
      Application.setPage("coach-new")
    }
  }

 /coach/workout/:workoutId (workoutId: String) {
    do {
      Application.setWorkoutId(workoutId)
      Application.setPage("coach-workout-overview")
    }
  }

  /coach/run/:workoutId (workoutId: String) {
    do {
      Application.setWorkoutId(workoutId)
      Application.setPage("coach-run")
    }
  }

  /home {
    do {
      Application.setPage("home")
    }
  }

  / {
    do {
      Application.setPage("home")
    }
  }

  * {
    Application.setPage("not_found")
  }
}
