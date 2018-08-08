component Calibration {
  fun render : Html {
    <div class="pure-g">
      <div class="pure-u-1-1">
         <p><{"In this calibration you will do regular bounce for as long as you can. Press the stop button as soon as you feel you have reached your limit."}></p>
         <br/>
         <div class="in-center">
         <a href="/calibration/run">
         <button class="button-secondary button-xlarge"><{ "Start" }></button>
         </a>
         <br/>
         <br/>
         <a href="/">
          <button class="button-cancel button-xlarge"><{ "Cancel" }></button>
         </a>
         </div>
      </div>
    </div>
  }
}
