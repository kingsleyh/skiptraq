component CalibrationFeedback {
  connect Repo exposing { putCalibrationEffort }

  get recordCalibrationTime : Void {
    do {
      /* putCalibrationElapsedSeconds(counter) */
      Window.navigate("/calibration/feedback")
    }
  }

  fun updateStoredEffort(n : Number) : Void {
   do {
     putCalibrationEffort(n)
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
        <h3><{"How hard did the skipping feel?"}></h3>
         <Slider onChange={updateStoredEffort}/>

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
