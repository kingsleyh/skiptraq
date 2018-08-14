component Coach {
  connect Repo exposing { generalError, getPlannedWorkouts, plannedWorkouts }

  /*
  get recordCalibrationTime : Void {
     do {
       Window.navigate("/calibration/feedback")
     }
   }
  */

  /*
  fun updateStoredEffort(n : Number) : Void {
    do {
      putCalibrationEffort(n)
    }
   }
  */

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

      <td/>
    </tr>
  }

  fun render : Html {
    <div class="pure-g">
      <div class="pure-u-1-1 in-center">
        <p>
          <{ "Follow the plan below" }>
        </p>

        <div><{generalError}></div>

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

        /* <br/> */

        /*
        <div class="in-center">
               <h3><{"How hard did the skipping feel?"}></h3>
                <Slider onChange={updateStoredEffort}/>

                 <br/>
                 <br/>

                 <button
                   onClick={(e : Html.Event) : Void => { recordCalibrationTime }}
                   class="button-secondary button-xlarge">

                   <{ "Done" }>

                 </button>
        */

        /* </div> */
      </div>
    </div>
  }
}
