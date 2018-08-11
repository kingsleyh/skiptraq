component CalibrationRun {
  connect Repo exposing { putCalibrationElapsedSeconds }

  state counter : Number = 0

  use Provider.Tick { ticks = () : Void => { next { counter = counter + 1 } } }

  get recordCalibrationTime : Void {
    do {
      putCalibrationElapsedSeconds(counter)
      Window.navigate("/calibration/feedback")
    }
  }

  fun render : Html {
    <div class="pure-g">
      <div class="pure-u-1-1">
        <p>
          <{ "Begin regular bounce for as long as you can." }>
        </p>

        <br/>

        <div class="in-center">
          <{ Number.toString(counter) }>
          <br/>
          <br/>

          <button
            onClick={(e : Html.Event) : Void => { recordCalibrationTime }}
            class="button-secondary button-xlarge">

            <{ "Done" }>

          </button>
        </div>
      </div>
    </div>
  }
}
