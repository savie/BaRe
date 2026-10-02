package com.bare.tasks;
public final class TaskResultState {
    public enum TerminalState { RUNNING, SUCCESS, PARTIAL_FAILURE, FAILURE, CANCELLED }
    private final TerminalState state; private final int completed; private final int failed;
    public TaskResultState(TerminalState state,int completed,int failed){if(state==null)throw new IllegalArgumentException("state");this.state=state;this.completed=Math.max(0,completed);this.failed=Math.max(0,failed);}
    public TerminalState getState(){return state;} public int getCompleted(){return completed;} public int getFailed(){return failed;}
}