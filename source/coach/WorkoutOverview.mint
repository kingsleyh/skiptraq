component WorkoutOverview {
  property wid : String = ""

  style roundColour {
     background-color: lightblue;
  }

  fun render : Html {
    <div class="pure-g">
      <div class="pure-u-1-1 in-center">
        <{
          maybeWorkout
          |> Maybe.map(
            (w : Workouts) : Html => { renderWorkoutOverview(w) })
          |> Maybe.withDefault(renderError())
        }>
      </div>
    </div>
  } where {
    maybeWorkout =
      AllWorkouts.byId(wid)
  }

  fun renderWorkoutOverview (workout : Workouts) : Html {
    <div>
      <h4>
        <{ "Workout Overview" }>
      </h4>

      <h3>
        <{ workout.name }>
      </h3>

      <p>
        <{ workout.desc }>
      </p>

      <br/>
      <{ renderRounds(workout.rounds) }>
    </div>
  }

  fun renderError : Html {
    <div>
      <{ "Error" }>
    </div>
  }

  fun renderRounds (rounds : Array(Round)) : Html {
    <table class="pure-table pure-table-bordered">
      <thead>
        <tr>
          <th>
            <{ "Name" }>
          </th>

          <th>
            <{ "Desc" }>
          </th>

          <th>
            <{ "Duration" }>
          </th>
        </tr>
      </thead>

      <tbody>
        <{
          rounds
          |> Array.sortBy((r : Round) : Number => { r.number })
          |> Array.reverse()
          |> Array.Extra.flatMap(
            (r : Round) : Array(Html) => { renderRoundWorkout(r.number, r.workouts) })
        }>
      </tbody>
    </table>
  }

  fun renderRoundWorkout (num : Number, workouts : Array(Workout)) : Array(Html) {
    workouts
    |> Array.map(round)
    |> Array.Extra.append(
      [
        <tr::roundColour>
          <td colspan="3">
            <{ "Round " + Number.toString(num) }>
          </td>
        </tr>
      ])
  }

  fun round (workout : Workout) : Html {
    <tr>
      <td>
        <{ workout.name }>
      </td>

      <td>
        <{ workout.desc }>
      </td>

      <td><{ workout.duration |> Number.toString() }></td>
    </tr>
  }
}
