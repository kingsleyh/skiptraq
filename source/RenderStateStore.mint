enum RenderState {
  Initial
  Calibration1
  Calibration2
  CalibrationFeedback
}

store RenderStateStore {
  property renderState : RenderState = RenderState::Initial

  fun setCurrentRenderState(currentState : RenderState) : Void {
    next { state | renderState = currentState }
  }

  fun getCurrentRenderState() : RenderState {
    state.renderState
  }

}
