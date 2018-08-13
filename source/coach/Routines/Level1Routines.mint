module Level1Routines {

  fun level1() : Array(Workouts) {
    [theGreatPyramid(), oceanWave()]
  }

  /* fun theSpanishPlane() : Workouts {
    { level = 1,}
  } */

  fun theGreatPyramid() : Workouts {
    { level = {level = 1,
      subLevel = 1},
      name = "The Great Pyramid",
      desc = "This resembles the steady climb and descent of a pyramid",
      rounds = [
        { number = 1,
          workouts = [ SingleWorkouts.regularBounce(10),
                       SingleWorkouts.rest(20)
                     ]
        },
        { number = 2,
          workouts = [ SingleWorkouts.regularBounce(20),
                       SingleWorkouts.rest(20)
                     ]
        },
        { number = 3,
          workouts = [ SingleWorkouts.regularBounce(30),
                       SingleWorkouts.rest(60)
                     ]
        },
        { number = 4,
          workouts = [ SingleWorkouts.regularBounce(30),
                       SingleWorkouts.rest(30)
                     ]
        },
        { number = 5,
          workouts = [ SingleWorkouts.regularBounce(20),
                       SingleWorkouts.rest(20)
                     ]
        },
        { number = 6,
          workouts = [ SingleWorkouts.regularBounce(10)
                     ]
        }]
    }
  }

  fun oceanWave() : Workouts {
    { level = {level = 1,
      subLevel = 1},
      name = "Ocean Wave",
      desc = "This workout resembles the rise and fall of ocean waves",
      rounds = [
        { number = 1,
          workouts = [
            SingleWorkouts.regularBounce(10),
            SingleWorkouts.rest(10),
            SingleWorkouts.regularBounce(10),
            SingleWorkouts.rest(10),
            SingleWorkouts.regularBounce(20),
            SingleWorkouts.rest(20),
            SingleWorkouts.regularBounce(20),
            SingleWorkouts.rest(20),
            SingleWorkouts.regularBounce(30),
            SingleWorkouts.rest(60),
            SingleWorkouts.regularBounce(30),
            SingleWorkouts.rest(60),
            SingleWorkouts.regularBounce(20),
            SingleWorkouts.rest(20),
            SingleWorkouts.regularBounce(20),
            SingleWorkouts.rest(20),
            SingleWorkouts.regularBounce(10),
            SingleWorkouts.rest(10),
            SingleWorkouts.regularBounce(10)
          ]
        }
      ]

    }
  }
}
