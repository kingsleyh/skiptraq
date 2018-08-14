component CoachNew {
  connect Repo exposing { putPlannedWorkouts, calibrationResult }

  get generateCoachingWeek : Void {
    do {
      result = calibrationResult
      workouts = CoachGenerator.generate(1, [], result)
      putPlannedWorkouts(workouts)
      /* Window.navigate("/calibration/coach") */
    } catch String => error {
      void
    }
  }

  fun render : Html {
    <div class="pure-g">
      <div class="pure-u-1-1 in-center">
        <p>
          <{ "Let's plan out your week of skipping!" }>
        </p>

        <br/>

        <div class="in-center">
          <h3>
            <{ "How many days?" }>
          </h3>

          <form class="pure-form">
            <fieldset>
              <select name="cars">
                <option value="1">
                  <{ "One" }>
                </option>
                <option value="2">
                  <{ "Two" }>
                </option>
                <option value="3">
                  <{ "Three" }>
                </option>
                <option value="4">
                  <{ "Four" }>
                </option>
                <option value="5">
                  <{ "Five" }>
                </option>
                <option value="6">
                  <{ "Six" }>
                </option>
                <option value="7">
                  <{ "Seven" }>
                </option>
              </select>
            </fieldset>
          </form>

          <br/>
          <br/>

          <button
            onClick={(e : Html.Event) : Void => { generateCoachingWeek }}
            class="button-secondary button-xlarge">

            <{ "GO" }>

          </button>
        </div>
      </div>
    </div>
  }
}
