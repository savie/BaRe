package com.bare.slog;

public final class SLogEntry {
    public final long time;
    public final int messageType;
    public final String title;
    public final String message;
    public final String color;
    public final long id;

    public SLogEntry(long time, int messageType, String title, String message, String color, long id) {
        this.time = time;
        this.messageType = messageType;
        this.title = title == null ? "" : title;
        this.message = message == null ? "" : message;
        this.color = color;
        this.id = id;
    }
}
