package org.swiftapps.swiftbackup.home.schedule.data;

import defpackage.dj7;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.yy3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class GlobalScheduleError {
    public static final yy3 Companion = new yy3();
    private final String errorMessage;
    private final long timeMillis;

    public /* synthetic */ GlobalScheduleError(long j, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? System.currentTimeMillis() : j, (i & 2) != 0 ? "" : str);
    }

    public static /* synthetic */ GlobalScheduleError copy$default(GlobalScheduleError globalScheduleError, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = globalScheduleError.timeMillis;
        }
        if ((i & 2) != 0) {
            str = globalScheduleError.errorMessage;
        }
        return globalScheduleError.copy(j, str);
    }

    public final long component1() {
        return this.timeMillis;
    }

    public final String component2() {
        return this.errorMessage;
    }

    public final GlobalScheduleError copy(long j, String str) {
        str.getClass();
        return new GlobalScheduleError(j, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GlobalScheduleError)) {
            return false;
        }
        GlobalScheduleError globalScheduleError = (GlobalScheduleError) obj;
        return this.timeMillis == globalScheduleError.timeMillis && pe4.d(this.errorMessage, globalScheduleError.errorMessage);
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final long getTimeMillis() {
        return this.timeMillis;
    }

    public int hashCode() {
        return this.errorMessage.hashCode() + (Long.hashCode(this.timeMillis) * 31);
    }

    public final boolean isValid() {
        return this.errorMessage.length() > 0 && !nq7.j0(this.errorMessage);
    }

    public final String toDisplayString() {
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.last_run);
        StringBuilder sb = new StringBuilder();
        sb.append(strG.concat(": "));
        sb.append(Const.s(this.timeMillis));
        if (this.errorMessage.length() > 0) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(this.errorMessage);
        }
        return sb.toString();
    }

    public String toString() {
        return "GlobalScheduleError(timeMillis=" + this.timeMillis + ", errorMessage=" + this.errorMessage + ")";
    }

    public GlobalScheduleError(long j, String str) {
        str.getClass();
        this.timeMillis = j;
        this.errorMessage = str;
    }

    public GlobalScheduleError() {
        this(0L, null, 3, null);
    }
}
