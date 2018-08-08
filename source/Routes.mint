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