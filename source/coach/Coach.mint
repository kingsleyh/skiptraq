component Coach {
  connect Repo exposing { generalError, getPlannedWorkouts, plannedWorkouts }

  fun workoutDetail (id : String) : Void {
    do {
      Window.navigate("/coach/workout/" + id)
    }
  }

  fun componentDidMount : Void {
    do {
      getPlannedWorkouts()
    }
  }

  fun renderWorkouts (workouts : Workouts) : Html {
    <tr>
      <td>
        <{ "1" }>
      </td>

      <td>
        <{ workouts.name }>
      </td>

      <td>
        <button
          onClick={(e : Html.Event) : Void => { workoutDetail(workouts.id) }}
          class="button-secondary button-small">

          <{ "Go" }>

        </button>
      </td>
    </tr>
  }

  fun render : Html {
    <div class="pure-g">
      <div class="pure-u-1-1 in-center">
        <p>
          <{ "Follow the plan below" }>
        </p>

        <div>
          <{ generalError }>
        </div>

        <table class="pure-table pure-table-bordered">
          <thead>
            <tr>
              <th>
                <{ "Day" }>
              </th>

              <th>
                <{ "Workouts" }>
              </th>

              <th/>
            </tr>
          </thead>

          <tbody>
            <{
              plannedWorkouts
              |> Array.map(renderWorkouts)
            }>
          </tbody>
        </table>

      </div>
    </div>
  }
}
