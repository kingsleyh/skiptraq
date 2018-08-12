module SingleWorkouts {

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
