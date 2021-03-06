component Slider {
  property onChange : Function(Number, Void) = (value : Number) : Void => { void }
  property disabled : Bool = false
  property max : Number = 100
  property value : Number = 0
  property step : Number = 1
  property min : Number = 0
  property effortScale : Function(Number, String) = (number : Number) : String => {
   if(number <= 20){
     "Too Easy"
   } else {
     if(number > 20 && number <= 40){
       "Easy"
     } else {
       if(number > 40 && number <= 60){
         "Ok"
       } else {
         if(number > 60 && number <= 80){
           "Hard"
         } else {
           if(number > 80 && number < 100){
             "Very Hard"
           } else {
             "Too Hard"
           }
         }
       }
     }
   }
  }


  state sliderPos : String = Number.toString(value)

  style rangeSlider {
    width: 100%;
    margin: 60px 0 0 0%;
  }

  style sliderRange {
    width: 100%;
    margin: 60px 0 0 0%;
    -webkit-appearance: none;
    width: calc(100% - (73px));
    height: 10px;
    border-radius: 5px;
    background: #d7dcdf;
    outline: none;
    padding: 0;
    margin: 0;

    &::-webkit-slider-thumb {
      -webkit-appearance: none;
      appearance: none;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      background: #2c3e50;
      cursor: pointer;
      transition: background .15s ease-in-out;
    }

    &::-webkit-slider-thumb:hover {
      background: #1abc9c;
    }

    &::-webkit-slider-thumb {
      background: #1abc9c;
    }

    &::-moz-range-thumb {
      width: 20px;
      height: 20px;
      border: 0;
      border-radius: 50%;
      background: #2c3e50;
      cursor: pointer;
      transition: background .15s ease-in-out;
    }

    &::-moz-range-thumb:hover {
      background: #1abc9c;
    }

    &:active::-moz-range-thumb {
      background: #1abc9c;
    }

    &:focus::-webkit-slider-thumb {
      box-shadow: 0 0 0 3px #fff, 0 0 0 6px #1abc9c;
    }

    &::-moz-range-track {
      background: #d7dcdf;
      border: 0;
    }

    &:input::-moz-focus-inner,
    &:input::-moz-focus-outer {
      border: 0;
    }
  }

  style rangeValue {
    display: inline-block;
    position: relative;
    width: 60px;
    color: #fff;
    line-height: 20px;
    text-align: center;
    border-radius: 3px;
    background: #2c3e50;
    padding: 5px 10px;
    margin-left: 8px;

    &:after {
      position: absolute;
      top: 8px;
      left: -7px;
      width: 0;
      height: 0;
      border-top: 7px solid transparent;
      border-right: 7px solid #2c3e50;
      border-bottom: 7px solid transparent;
      content: '';
    }
  }

  fun changed (event : Html.Event) : Void {
    do {
      n =
        event.target
        |> Dom.getValue()

      next { sliderPos = n }

      n
      |> Number.fromString()
      |> Maybe.withDefault(0)
      |> onChange()
    }
  }

  fun render : Html {
    <div::rangeSlider>
    <div><{effortScale(Number.fromString(sliderPos) |> Maybe.withDefault(0))}></div>
      <input::sliderRange
        value={sliderPos}
        step={Number.toString(step)}
        max={Number.toString(max)}
        min={Number.toString(min)}
        disabled={disabled}
        onChange={changed}
        type="range"/>

      <span::rangeValue>
        <{ sliderPos }>
      </span>
    </div>
  }
}
