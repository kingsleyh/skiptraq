component Layout {
  property children : Array(Html) = []

  style topNav {
    background: #94618E;
    height: 3em;
    text-align: center;
  }

  style logo {
    padding-top: 0.6em;
    font-weight: bold;
    font-size: 23px;
  }

  style logoLink {
    text-decoration:none;
    color: #F8EEE7;
  }

  style content {
    padding-left: 0.7em;
    padding-right: 0.7em;
  }

  get topNav : Html {
    <div class="pure-g">
      <div::topNav class="pure-u-1-1">
        <div::logo>
          <a::logoLink href="/">
          <{ "SkipTraq" }>
          </a>
        </div>
      </div>
    </div>
  }

  fun render : Html {
    <div>
      <{ topNav }>

      <div::content>
        <{ children }>
      </div>
    </div>
  }
}
