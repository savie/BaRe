package com.bare.messagescalls.task;

/** F79 static task decision boundary; SMS/provider I/O stays downstream. */
public final class MessageTaskEngine {
    public enum Decision { READY, NO_DATA }

    public Decision plan(MessageTaskRequest request) {
        if (request == null) throw new NullPointerException("request");
        return request.getItemCount() == 0 ? Decision.NO_DATA : Decision.READY;
    }
}
