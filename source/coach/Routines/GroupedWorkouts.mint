module GroupedWorkouts {

  /* Each level number represents the number of minutes of skipping - plus rests. */
  fun level1() : Array(Workouts) {
    []
  }

  fun theHop() : Workouts {
    { level = 1,
      subLevel = 1,
      name = "The Hop",
      desc = "This is a simple workout with a basic hopping motion",
      rounds = [
        { number = 1,
          workouts = [ SingleWorkouts.regularBounce(10)
                       SingleWorkouts.rest(10)
                     ]
        }
    }
  }

  fun easyOceanWave() : Workouts {
    { level = 5,
      subLevel = 1,
      name = "Easy Ocean Wave",
      desc = "This workout resembles the rise and fall of ocean waves",
      workouts = [
        SingleWorkouts.regularBounce(10)
        SingleWorkouts.rest(10)
        SingleWorkouts.regularBounce(10)
        SingleWorkouts.rest(10)
        SingleWorkouts.regularBounce(20)
        SingleWorkouts.rest(20)
        SingleWorkouts.regularBounce(20)
        SingleWorkouts.rest(20)
        SingleWorkouts.regularBounce(30)
        SingleWorkouts.rest(60)
        SingleWorkouts.regularBounce(30)
        SingleWorkouts.rest(60)
        SingleWorkouts.regularBounce(20)
        SingleWorkouts.rest(20)
        SingleWorkouts.regularBounce(20)
        SingleWorkouts.rest(20)
        SingleWorkouts.regularBounce(10)
        SingleWorkouts.rest(10)
        SingleWorkouts.regularBounce(10)
        SingleWorkouts.rest(10)

      ]
    }
  }
}
