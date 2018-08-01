component Main {

 connect RenderStateStore exposing { setCurrentRenderState, getCurrentRenderState }

  style topNav {
    background: #94618E;
    height: 3em;
    text-align: center;
  }

  style logo {
    padding-top:0.6em;
    color: #F8EEE7;
    font-weight:bold;
    font-size:23px;
  }

  style content {
    padding-left:0.7em;
    padding-right:0.7em;
  }

  get renderTopNav : Html {
    <div class="pure-g">
      <div::topNav class="pure-u-1-1">
         <div::logo><{"SkipTraq"}></div>
      </div>
    </div>
  }

  fun switchState(s : RenderState) : Void {
   do {
    setCurrentRenderState(s)
   }
  }

  get renderInitial : Html {
    <div class="pure-g">
      <div class="pure-u-1-1">
         <p><{"Welcome to SkipTraq. Let's start with some calibration."}></p>
         <br/>
         <div class="in-center">
         <button onClick={\e : Html.Event => switchState(RenderState::Calibration1)} class="button-secondary button-xlarge"><{"Calibrate"}></button>
         </div>
      </div>
    </div>
  }

  get renderCalibration1 : Html {
    <div class="pure-g">
      <div class="pure-u-1-1">
         <p><{"In this calibration you will do regular bounce for as long as you can. Press the stop button as soon as you feel you have reached your limit."}></p>
         <br/>
         <div class="in-center">
         <button onClick={\e : Html.Event => switchState(RenderState::Calibration2)} class="button-secondary button-xlarge"><{"Start"}></button>
         <br/>
         <br/>
         <button onClick={\e : Html.Event => switchState(RenderState::Initial)} class="button-cancel button-xlarge"><{"Cancel"}></button>
         </div>
      </div>
    </div>
  }

  get renderCalibration2 : Html {
    <div class="pure-g">
      <div class="pure-u-1-1">
         <p><{"Begin regular bounce for as long as you can."}></p>
         <br/>
         <div class="in-center">
         <br/>
         <br/>
         <button onClick={\e : Html.Event => switchState(RenderState::CalibrationFeedback)} class="button-secondary button-xlarge"><{"Done"}></button>
         </div>
      </div>
    </div>
  }

 fun dispatch(currentState : RenderState) : Html {
   case (currentState) {
     RenderState::Calibration1 => renderCalibration1
     RenderState::Calibration2 => renderCalibration2
     /* RenderState::CalibrationFeedback => renderCalibrationFeedback */
     => renderInitial
   }
 }

  fun render : Html {
    <div>
      <{renderTopNav}>
      <div::content>
        <{dispatch(getCurrentRenderState())}>
      </div>
    </div>
  }
}
