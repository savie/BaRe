package com.microsoft.identity.common.java.broker;

import com.microsoft.identity.common.java.logging.Logger;
import defpackage.eq3;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BrokerPerformanceMetrics {
    private final long brokerHandlingTime;
    private final long brokerRequestReceivedTimestamp;
    private final long brokerResponseGenerationTimestamp;
    private final long responseLatency;
    private final int silentExecutorPoolSize;

    public BrokerPerformanceMetrics(int i, long j, long j2) {
        long j3;
        this.brokerRequestReceivedTimestamp = j;
        this.brokerResponseGenerationTimestamp = j2;
        this.silentExecutorPoolSize = i;
        if (j2 < j) {
            Logger.warn("BrokerPerformanceMetrics", "Invalid timestamps: response before request");
            j3 = 0;
        } else {
            j3 = j2 - j;
        }
        this.brokerHandlingTime = j3;
        this.responseLatency = System.currentTimeMillis() - j2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BrokerPerformanceMetrics(brokerHandlingTime=");
        sb.append(this.brokerHandlingTime);
        sb.append(", responseLatency=");
        sb.append(this.responseLatency);
        sb.append(", brokerRequestReceivedTimestamp=");
        sb.append(this.brokerRequestReceivedTimestamp);
        sb.append(", brokerResponseGenerationTimestamp=");
        sb.append(this.brokerResponseGenerationTimestamp);
        sb.append(", silentExecutorPoolSize=");
        return eq3.m(sb, this.silentExecutorPoolSize, ')');
    }
}
