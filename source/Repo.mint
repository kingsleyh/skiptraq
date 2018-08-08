store Repo {
  state error : String = ""

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
}
