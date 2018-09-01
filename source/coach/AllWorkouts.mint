module AllWorkouts {

  fun byId(workoutId : String) : Maybe(Workouts) {
    Level1Routines.allWorkouts()
    |> Array.find((w : Workouts) : Bool => { w.id == workoutId })
  }


}