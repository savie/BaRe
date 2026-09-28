package com.bare.backend;

/** Common non-throwing result boundary for provider adapters. */
public final class BackendResult<T> {
    public enum State { SUCCESS, NOT_FOUND, NETWORK_ERROR, AUTH_ERROR, TEMPORARY_ERROR, UNKNOWN }

    public final State state;
    public final T value;
    public final String diagnostic;

    private BackendResult(State state, T value, String diagnostic) {
        this.state = state; this.value = value; this.diagnostic = diagnostic;
    }

    public static <T> BackendResult<T> success(T value) { return new BackendResult<>(State.SUCCESS, value, null); }
    public static <T> BackendResult<T> notFound() { return new BackendResult<>(State.NOT_FOUND, null, null); }
    public static <T> BackendResult<T> error(State state, String diagnostic) {
        return new BackendResult<>(state == null ? State.UNKNOWN : state, null, diagnostic);
    }
}
