package org.swiftapps.swiftbackup.tasks.fgs;

import defpackage.eq3;
import defpackage.fz5;
import defpackage.jc2;
import defpackage.pe4;
import defpackage.u48;
import defpackage.xs1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class DataSyncFgsRuntimeLedger$Entry {
    private final Long endMs;
    private final String id;
    private final boolean isForcedRun;
    private final boolean isScheduleRun;
    private final String note;
    private final jc2 outcome;
    private final String runMode;
    private final String serviceName;
    private final long startMs;

    public /* synthetic */ DataSyncFgsRuntimeLedger$Entry(String str, String str2, long j, Long l, boolean z, boolean z2, String str3, jc2 jc2Var, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j, (i & 8) != 0 ? null : l, (i & 16) != 0 ? false : z, (i & 32) != 0 ? false : z2, (i & 64) != 0 ? null : str3, (i & 128) != 0 ? null : jc2Var, (i & 256) != 0 ? null : str4);
    }

    public static /* synthetic */ DataSyncFgsRuntimeLedger$Entry copy$default(DataSyncFgsRuntimeLedger$Entry dataSyncFgsRuntimeLedger$Entry, String str, String str2, long j, Long l, boolean z, boolean z2, String str3, jc2 jc2Var, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = dataSyncFgsRuntimeLedger$Entry.id;
        }
        if ((i & 2) != 0) {
            str2 = dataSyncFgsRuntimeLedger$Entry.serviceName;
        }
        if ((i & 4) != 0) {
            j = dataSyncFgsRuntimeLedger$Entry.startMs;
        }
        if ((i & 8) != 0) {
            l = dataSyncFgsRuntimeLedger$Entry.endMs;
        }
        if ((i & 16) != 0) {
            z = dataSyncFgsRuntimeLedger$Entry.isScheduleRun;
        }
        if ((i & 32) != 0) {
            z2 = dataSyncFgsRuntimeLedger$Entry.isForcedRun;
        }
        if ((i & 64) != 0) {
            str3 = dataSyncFgsRuntimeLedger$Entry.runMode;
        }
        if ((i & 128) != 0) {
            jc2Var = dataSyncFgsRuntimeLedger$Entry.outcome;
        }
        if ((i & 256) != 0) {
            str4 = dataSyncFgsRuntimeLedger$Entry.note;
        }
        jc2 jc2Var2 = jc2Var;
        String str5 = str4;
        long j2 = j;
        return dataSyncFgsRuntimeLedger$Entry.copy(str, str2, j2, l, z, z2, str3, jc2Var2, str5);
    }

    public final String component1() {
        return this.id;
    }

    public final String component2() {
        return this.serviceName;
    }

    public final long component3() {
        return this.startMs;
    }

    public final Long component4() {
        return this.endMs;
    }

    public final boolean component5() {
        return this.isScheduleRun;
    }

    public final boolean component6() {
        return this.isForcedRun;
    }

    public final String component7() {
        return this.runMode;
    }

    public final jc2 component8() {
        return this.outcome;
    }

    public final String component9() {
        return this.note;
    }

    public final DataSyncFgsRuntimeLedger$Entry copy(String str, String str2, long j, Long l, boolean z, boolean z2, String str3, jc2 jc2Var, String str4) {
        str.getClass();
        str2.getClass();
        return new DataSyncFgsRuntimeLedger$Entry(str, str2, j, l, z, z2, str3, jc2Var, str4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DataSyncFgsRuntimeLedger$Entry)) {
            return false;
        }
        DataSyncFgsRuntimeLedger$Entry dataSyncFgsRuntimeLedger$Entry = (DataSyncFgsRuntimeLedger$Entry) obj;
        return pe4.d(this.id, dataSyncFgsRuntimeLedger$Entry.id) && pe4.d(this.serviceName, dataSyncFgsRuntimeLedger$Entry.serviceName) && this.startMs == dataSyncFgsRuntimeLedger$Entry.startMs && pe4.d(this.endMs, dataSyncFgsRuntimeLedger$Entry.endMs) && this.isScheduleRun == dataSyncFgsRuntimeLedger$Entry.isScheduleRun && this.isForcedRun == dataSyncFgsRuntimeLedger$Entry.isForcedRun && pe4.d(this.runMode, dataSyncFgsRuntimeLedger$Entry.runMode) && this.outcome == dataSyncFgsRuntimeLedger$Entry.outcome && pe4.d(this.note, dataSyncFgsRuntimeLedger$Entry.note);
    }

    public final Long getEndMs() {
        return this.endMs;
    }

    public final String getId() {
        return this.id;
    }

    public final String getNote() {
        return this.note;
    }

    public final jc2 getOutcome() {
        return this.outcome;
    }

    public final String getRunMode() {
        return this.runMode;
    }

    public final String getServiceName() {
        return this.serviceName;
    }

    public final long getStartMs() {
        return this.startMs;
    }

    public int hashCode() {
        int iF = xs1.f(this.startMs, fz5.g(this.id.hashCode() * 31, 31, this.serviceName), 31);
        Long l = this.endMs;
        int iH = fz5.h(fz5.h((iF + (l == null ? 0 : l.hashCode())) * 31, 31, this.isScheduleRun), 31, this.isForcedRun);
        String str = this.runMode;
        int iHashCode = (iH + (str == null ? 0 : str.hashCode())) * 31;
        jc2 jc2Var = this.outcome;
        int iHashCode2 = (iHashCode + (jc2Var == null ? 0 : jc2Var.hashCode())) * 31;
        String str2 = this.note;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final boolean isForcedRun() {
        return this.isForcedRun;
    }

    public final boolean isScheduleRun() {
        return this.isScheduleRun;
    }

    public String toString() {
        String str = this.id;
        String str2 = this.serviceName;
        long j = this.startMs;
        Long l = this.endMs;
        boolean z = this.isScheduleRun;
        boolean z2 = this.isForcedRun;
        String str3 = this.runMode;
        jc2 jc2Var = this.outcome;
        String str4 = this.note;
        StringBuilder sbP = u48.p("Entry(id=", str, ", serviceName=", str2, ", startMs=");
        sbP.append(j);
        sbP.append(", endMs=");
        sbP.append(l);
        sbP.append(", isScheduleRun=");
        sbP.append(z);
        sbP.append(", isForcedRun=");
        sbP.append(z2);
        sbP.append(", runMode=");
        sbP.append(str3);
        sbP.append(", outcome=");
        sbP.append(jc2Var);
        return eq3.n(sbP, ", note=", str4, ")");
    }

    public DataSyncFgsRuntimeLedger$Entry(String str, String str2, long j, Long l, boolean z, boolean z2, String str3, jc2 jc2Var, String str4) {
        str.getClass();
        str2.getClass();
        this.id = str;
        this.serviceName = str2;
        this.startMs = j;
        this.endMs = l;
        this.isScheduleRun = z;
        this.isForcedRun = z2;
        this.runMode = str3;
        this.outcome = jc2Var;
        this.note = str4;
    }
}
