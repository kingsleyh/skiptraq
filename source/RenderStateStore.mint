enum RenderState {
  Initial
  Calibration1
  Calibration2
  CalibrationFeedback
}

store RenderStateStore {
  state renderState : RenderState = RenderState::Initial

  fun setCurrentRenderState(currentState : RenderState) : Void {
    next { renderState = currentState }
  }

  fun getCurrentRenderState() : RenderState {
    renderState
  }

}
