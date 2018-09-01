store Application {
  state page : String = ""
  state workoutId : String = ""

  fun setPage (page : String) : Void {
    do {
      Http.abortAll()
      next { page = page }
    }
  }

  fun setWorkoutId (id : String) : Void {
    next { workoutId = id }
  }
}
