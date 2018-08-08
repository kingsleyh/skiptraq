component Home {
  fun render : Html {
    <div class="pure-g">
      <div class="pure-u-1-1">
        <p>
          <{ "Welcome to SkipTraq. Let's start with some calibration." }>
        </p>

        <br/>

        <div class="in-center">
          <a href="/calibration">
            <button class="button-secondary button-xlarge"><{ "Calibrate" }></button>
          </a>
        </div>
      </div>
    </div>
  }
}
