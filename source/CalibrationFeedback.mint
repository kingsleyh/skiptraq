component CalibrationFeedback {
  connect Repo exposing { putCalibrationElapsedSeconds }

  state sliderPos : String = "0"

  get recordCalibrationTime : Void {
    do {
      /* putCalibrationElapsedSeconds(counter) */
      Window.navigate("/calibration/feedback")
    }
  }

  fun go(e : Html.Event) : Void {
    do {
      pos = Dom.getValue(e.target)
      Debug.log(pos)
      next { sliderPos = pos }
    }

  }

  fun render : Html {
    <div class="pure-g">
      <div class="pure-u-1-1 in-center">
        <p>
          <{ "Provide feedback about the Calibration" }>
        </p>

        <br/>


        <div class="in-center">
         <Slider/>
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
