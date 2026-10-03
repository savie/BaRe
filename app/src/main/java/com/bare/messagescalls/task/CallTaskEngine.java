package com.bare.messagescalls.task;

/** F80 static call-log task decision boundary; provider I/O stays downstream. */
public final class CallTaskEngine {
    public enum Decision { READY, NO_DATA }

    public Decision plan(CallTaskRequest request) {
        if (request == null) throw new NullPointerException("request");
        return request.getItemCount() == 0 ? Decision.NO_DATA : Decision.READY;
    }
}
