record Ui.Pager.Item {
  contents : Html,
  name : String
}

component Main {
  connect Application exposing { page, setPage, workoutId }

  get pages : Array(Ui.Pager.Item) {
    [
      {
        name = "home",
        contents = <Home/>
      },
      {
        name = "calibration",
        contents = <Calibration/>
      },
      {
        name = "calibration-run",
        contents = <CalibrationRun/>
      },
      {
        name = "calibration-feedback",
        contents = <CalibrationFeedback/>
      },
      {
        name = "coach",
        contents = <Coach/>
      },
      {
        name = "coach-new",
        contents = <CoachNew/>
      },
      {
        name = "coach-workout-overview",
        contents = <WorkoutOverview wid={workoutId}/>
      },
      {
        name = "coach-run",
        contents = <CoachRun wid={workoutId}/>
      },
      {
        name = "not_found",
        contents =
          <div>
            <{ "404" }>
          </div>
      }
    ]
  }

  fun render : Html {
    <Layout>
      <{ content }>
    </Layout>
  } where {
    content =
      pages
      |> Array.find(
        (item : Ui.Pager.Item) : Bool => { item.name == page })
      |> Maybe.map((item : Ui.Pager.Item) : Html => { item.contents })
      |> Maybe.withDefault(<div/>)
  }
}
