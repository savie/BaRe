package com.nimbusds.jose.util.health;

import com.nimbusds.jose.proc.SecurityContext;
import com.nimbusds.jose.shaded.jcip.Immutable;
import com.nimbusds.jose.util.events.Event;
import defpackage.c6;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public class HealthReport<S, C extends SecurityContext> implements Event<S, C> {
    private final C context;
    private final Exception exception;
    private final S source;
    private final HealthStatus status;
    private final long timestamp;

    public HealthReport(S s, HealthStatus healthStatus, Exception exc, long j, C c) {
        Objects.requireNonNull(s);
        this.source = s;
        Objects.requireNonNull(healthStatus);
        this.status = healthStatus;
        if (exc != null && HealthStatus.HEALTHY.equals(healthStatus)) {
            c6.f("Exception not accepted for a healthy status");
            throw null;
        }
        this.exception = exc;
        this.timestamp = j;
        this.context = c;
    }

    @Override // com.nimbusds.jose.util.events.Event
    public C getContext() {
        return this.context;
    }

    public Exception getException() {
        return this.exception;
    }

    public HealthStatus getHealthStatus() {
        return this.status;
    }

    @Override // com.nimbusds.jose.util.events.Event
    public S getSource() {
        return this.source;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public String toString() {
        return "HealthReport{source=" + this.source + ", status=" + this.status + ", exception=" + this.exception + ", timestamp=" + this.timestamp + ", context=" + this.context + '}';
    }

    public HealthReport(S s, HealthStatus healthStatus, long j, C c) {
        this(s, healthStatus, null, j, c);
    }
}
