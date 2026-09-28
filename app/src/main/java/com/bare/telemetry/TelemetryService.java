package com.bare.telemetry;

/** Provider-neutral telemetry boundary. Crash reporting must never become domain state. */
public interface TelemetryService {
    void setUserId(String userId);
    void setCustomKey(String key, String value);
    void recordException(Throwable throwable);
}
