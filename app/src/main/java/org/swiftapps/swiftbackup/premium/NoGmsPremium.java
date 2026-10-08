package org.swiftapps.swiftbackup.premium;

import defpackage.pe4;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class NoGmsPremium {
    private final Long verificationTime;

    public /* synthetic */ NoGmsPremium(Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l);
    }

    public static /* synthetic */ NoGmsPremium copy$default(NoGmsPremium noGmsPremium, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            l = noGmsPremium.verificationTime;
        }
        return noGmsPremium.copy(l);
    }

    public final Long component1() {
        return this.verificationTime;
    }

    public final NoGmsPremium copy(Long l) {
        return new NoGmsPremium(l);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NoGmsPremium) && pe4.d(this.verificationTime, ((NoGmsPremium) obj).verificationTime);
    }

    public final Long getVerificationTime() {
        return this.verificationTime;
    }

    public int hashCode() {
        Long l = this.verificationTime;
        if (l == null) {
            return 0;
        }
        return l.hashCode();
    }

    public String toString() {
        return "NoGmsPremium(verificationTime=" + this.verificationTime + ")";
    }

    public NoGmsPremium(Long l) {
        this.verificationTime = l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public NoGmsPremium() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
