package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rz0 implements jl0 {
    public static final a Companion = new a(null);
    private static final String logTag = "CallLogBackupItem";
    private final long backupTime;
    private final String device;
    private final String driveId;
    private final String fileName;
    private long remoteFileSize;
    private final int totalCalls;

    public rz0(String str, long j, int i, String str2, String str3, long j2) {
        str.getClass();
        str2.getClass();
        this.fileName = str;
        this.backupTime = j;
        this.totalCalls = i;
        this.device = str2;
        this.driveId = str3;
        this.remoteFileSize = j2;
    }

    private final String component1() {
        return this.fileName;
    }

    public static /* synthetic */ rz0 copy$default(rz0 rz0Var, String str, long j, int i, String str2, String str3, long j2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = rz0Var.fileName;
        }
        if ((i2 & 2) != 0) {
            j = rz0Var.backupTime;
        }
        if ((i2 & 4) != 0) {
            i = rz0Var.totalCalls;
        }
        if ((i2 & 8) != 0) {
            str2 = rz0Var.device;
        }
        if ((i2 & 16) != 0) {
            str3 = rz0Var.driveId;
        }
        if ((i2 & 32) != 0) {
            j2 = rz0Var.remoteFileSize;
        }
        String str4 = str3;
        int i3 = i;
        return rz0Var.copy(str, j, i3, str2, str4, j2);
    }

    public final long component2() {
        return this.backupTime;
    }

    public final int component3() {
        return this.totalCalls;
    }

    public final String component4() {
        return this.device;
    }

    public final String component5() {
        return this.driveId;
    }

    public final long component6() {
        return this.remoteFileSize;
    }

    public final rz0 copy(String str, long j, int i, String str2, String str3, long j2) {
        str.getClass();
        str2.getClass();
        return new rz0(str, j, i, str2, str3, j2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rz0)) {
            return false;
        }
        rz0 rz0Var = (rz0) obj;
        return pe4.d(this.fileName, rz0Var.fileName) && this.backupTime == rz0Var.backupTime && this.totalCalls == rz0Var.totalCalls && pe4.d(this.device, rz0Var.device) && pe4.d(this.driveId, rz0Var.driveId) && this.remoteFileSize == rz0Var.remoteFileSize;
    }

    public final long getBackupTime() {
        return this.backupTime;
    }

    @Override // defpackage.jl0
    public rz0 getCopy() {
        return copy$default(this, null, 0L, 0, null, null, 0L, 63, null);
    }

    public final String getDevice() {
        return this.device;
    }

    public final String getDriveId() {
        return this.driveId;
    }

    @Override // defpackage.jl0
    public String getItemId() {
        return this.fileName;
    }

    public final q63 getLocalFile() {
        String str = ry5.u;
        ry5 ry5VarF = qy5.f(false, null);
        return new q63(eq3.j(isCloudItem() ? ry5VarF.m : ry5VarF.l, this.fileName), 2);
    }

    public final long getRemoteFileSize() {
        return this.remoteFileSize;
    }

    public final int getTotalCalls() {
        return this.totalCalls;
    }

    public int hashCode() {
        int iG = fz5.g(eq3.d(this.totalCalls, xs1.f(this.backupTime, this.fileName.hashCode() * 31, 31), 31), 31, this.device);
        String str = this.driveId;
        return Long.hashCode(this.remoteFileSize) + ((iG + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final boolean isCloudItem() {
        String str = this.driveId;
        return !(str == null || str.length() == 0);
    }

    public final boolean isLocalItem() {
        return !isCloudItem();
    }

    public final void setRemoteFileSize(long j) {
        this.remoteFileSize = j;
    }

    public String toString() {
        String str = this.fileName;
        long j = this.backupTime;
        int i = this.totalCalls;
        String str2 = this.device;
        String str3 = this.driveId;
        long j2 = this.remoteFileSize;
        StringBuilder sbO = u48.o("CallLogBackupItem(fileName=", str, j, ", backupTime=");
        sbO.append(", totalCalls=");
        sbO.append(i);
        sbO.append(", device=");
        sbO.append(str2);
        sbO.append(", driveId=");
        sbO.append(str3);
        sbO.append(", remoteFileSize=");
        return dj7.h(j2, ")", sbO);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final rz0 fromFileNameLegacy(String str, String str2, long j) {
            try {
                String strR0 = nq7.r0(str, ".cls");
                return new rz0(str, Long.parseLong(ai8.g(strR0, "_")), Integer.parseInt(ai8.d(strR0, "_")), null, str2, j, 8, null);
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, rz0.logTag, dj7.l("Error creating instance for legacy file=", str, ", Error=", e.getMessage()), null, 4, null);
                return null;
            }
        }

        private final rz0 fromFileNameV2(String str, String str2, long j) {
            String str3;
            Exception exc;
            List listI;
            try {
                Pattern patternCompile = Pattern.compile("\\.");
                patternCompile.getClass();
                str.getClass();
                int iEnd = 0;
                nq7.t0(0);
                Matcher matcher = patternCompile.matcher(str);
                if (matcher.find()) {
                    ArrayList arrayList = new ArrayList(10);
                    do {
                        arrayList.add(str.subSequence(iEnd, matcher.start()).toString());
                        iEnd = matcher.end();
                    } while (matcher.find());
                    arrayList.add(str.subSequence(iEnd, str.length()).toString());
                    listI = arrayList;
                } else {
                    try {
                        listI = nc8.I(str.toString());
                    } catch (Exception e) {
                        exc = e;
                        str3 = str;
                        vr6.e$default(vr6.INSTANCE, rz0.logTag, dj7.l("Error creating instance for file=", str3, ", Error=", exc.getMessage()), null, 4, null);
                        return null;
                    }
                }
                str3 = str;
                try {
                    return new rz0(str3, Long.parseLong((String) listI.get(1)), Integer.parseInt((String) listI.get(2)), (String) listI.get(3), str2, j);
                } catch (Exception e2) {
                    e = e2;
                    exc = e;
                    vr6.e$default(vr6.INSTANCE, rz0.logTag, dj7.l("Error creating instance for file=", str3, ", Error=", exc.getMessage()), null, 4, null);
                    return null;
                }
            } catch (Exception e3) {
                e = e3;
                str3 = str;
            }
        }

        private final rz0 fromFileNameV3(String str, String str2, long j) {
            String str3;
            Exception exc;
            List listI;
            try {
                Pattern patternCompile = Pattern.compile("\\.");
                patternCompile.getClass();
                str.getClass();
                int iEnd = 0;
                nq7.t0(0);
                Matcher matcher = patternCompile.matcher(str);
                if (matcher.find()) {
                    ArrayList arrayList = new ArrayList(10);
                    do {
                        arrayList.add(str.subSequence(iEnd, matcher.start()).toString());
                        iEnd = matcher.end();
                    } while (matcher.find());
                    arrayList.add(str.subSequence(iEnd, str.length()).toString());
                    listI = arrayList;
                } else {
                    try {
                        listI = nc8.I(str.toString());
                    } catch (Exception e) {
                        exc = e;
                        str3 = str;
                        vr6.e$default(vr6.INSTANCE, rz0.logTag, dj7.l("Error creating instance for file=", str3, ", Error=", exc.getMessage()), null, 4, null);
                        return null;
                    }
                }
                str3 = str;
                try {
                    return new rz0(str3, Long.parseLong((String) listI.get(1)), Integer.parseInt((String) listI.get(2)), (String) listI.get(3), str2, j);
                } catch (Exception e2) {
                    e = e2;
                    exc = e;
                    vr6.e$default(vr6.INSTANCE, rz0.logTag, dj7.l("Error creating instance for file=", str3, ", Error=", exc.getMessage()), null, 4, null);
                    return null;
                }
            } catch (Exception e3) {
                e = e3;
                str3 = str;
            }
        }

        public final rz0 fromFileName(String str, String str2, long j) {
            str.getClass();
            if (uq7.V(str, "v3", false)) {
                return fromFileNameV3(str, str2, j);
            }
            return uq7.V(str, "v2", false) ? fromFileNameV2(str, str2, j) : fromFileNameLegacy(str, str2, j);
        }

        private a() {
        }
    }

    public /* synthetic */ rz0(String str, long j, int i, String str2, String str3, long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j, i, (i2 & 8) != 0 ? "Unknown" : str2, str3, j2);
    }
}
