package defpackage;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vd5 implements jl0 {
    public static final a Companion = new a(null);
    private static final String logTag = "SmsBackupItem";
    private final long backupTime;
    private final String device;
    private final String driveId;
    private final String fileName;
    private final Long remoteFileSize;
    private final int totalConversations;
    private final int totalSms;

    public vd5(String str, long j, int i, int i2, String str2, String str3, Long l) {
        str.getClass();
        str2.getClass();
        this.fileName = str;
        this.backupTime = j;
        this.totalSms = i;
        this.totalConversations = i2;
        this.device = str2;
        this.driveId = str3;
        this.remoteFileSize = l;
    }

    private final String component1() {
        return this.fileName;
    }

    public static /* synthetic */ vd5 copy$default(vd5 vd5Var, String str, long j, int i, int i2, String str2, String str3, Long l, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = vd5Var.fileName;
        }
        if ((i3 & 2) != 0) {
            j = vd5Var.backupTime;
        }
        if ((i3 & 4) != 0) {
            i = vd5Var.totalSms;
        }
        if ((i3 & 8) != 0) {
            i2 = vd5Var.totalConversations;
        }
        if ((i3 & 16) != 0) {
            str2 = vd5Var.device;
        }
        if ((i3 & 32) != 0) {
            str3 = vd5Var.driveId;
        }
        if ((i3 & 64) != 0) {
            l = vd5Var.remoteFileSize;
        }
        Long l2 = l;
        String str4 = str2;
        int i4 = i;
        return vd5Var.copy(str, j, i4, i2, str4, str3, l2);
    }

    public final long component2() {
        return this.backupTime;
    }

    public final int component3() {
        return this.totalSms;
    }

    public final int component4() {
        return this.totalConversations;
    }

    public final String component5() {
        return this.device;
    }

    public final String component6() {
        return this.driveId;
    }

    public final Long component7() {
        return this.remoteFileSize;
    }

    public final vd5 copy(String str, long j, int i, int i2, String str2, String str3, Long l) {
        str.getClass();
        str2.getClass();
        return new vd5(str, j, i, i2, str2, str3, l);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vd5)) {
            return false;
        }
        vd5 vd5Var = (vd5) obj;
        return pe4.d(this.fileName, vd5Var.fileName) && this.backupTime == vd5Var.backupTime && this.totalSms == vd5Var.totalSms && this.totalConversations == vd5Var.totalConversations && pe4.d(this.device, vd5Var.device) && pe4.d(this.driveId, vd5Var.driveId) && pe4.d(this.remoteFileSize, vd5Var.remoteFileSize);
    }

    public final long getBackupTime() {
        return this.backupTime;
    }

    @Override // defpackage.jl0
    public vd5 getCopy() {
        return copy$default(this, null, 0L, 0, 0, null, null, null, 127, null);
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
        return new q63(eq3.j(isCloudItem() ? ry5VarF.k : ry5VarF.j, this.fileName), 2);
    }

    public final Long getRemoteFileSize() {
        return this.remoteFileSize;
    }

    public final int getTotalConversations() {
        return this.totalConversations;
    }

    public final int getTotalSms() {
        return this.totalSms;
    }

    public int hashCode() {
        int iG = fz5.g(eq3.d(this.totalConversations, eq3.d(this.totalSms, xs1.f(this.backupTime, this.fileName.hashCode() * 31, 31), 31), 31), 31, this.device);
        String str = this.driveId;
        int iHashCode = (iG + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.remoteFileSize;
        return iHashCode + (l != null ? l.hashCode() : 0);
    }

    public final boolean isCloudItem() {
        String str = this.driveId;
        return !(str == null || str.length() == 0);
    }

    public final boolean isLocalItem() {
        return !isCloudItem();
    }

    public String toString() {
        String str = this.fileName;
        long j = this.backupTime;
        int i = this.totalSms;
        int i2 = this.totalConversations;
        String str2 = this.device;
        String str3 = this.driveId;
        Long l = this.remoteFileSize;
        StringBuilder sbO = u48.o("MessagesBackupItem(fileName=", str, j, ", backupTime=");
        sbO.append(", totalSms=");
        sbO.append(i);
        sbO.append(", totalConversations=");
        sbO.append(i2);
        xs1.t(sbO, ", device=", str2, ", driveId=", str3);
        sbO.append(", remoteFileSize=");
        sbO.append(l);
        sbO.append(")");
        return sbO.toString();
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final vd5 fromFileNameLegacy(String str, String str2, Long l) {
            try {
                String strR0 = nq7.r0(ai8.d(str, "_"), ".msg");
                return new vd5(str, Long.parseLong(ai8.g(str, "_")), Integer.parseInt(ai8.d(strR0, "-")), Integer.parseInt(ai8.g(strR0, "-")), null, str2, l, 16, null);
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, vd5.logTag, dj7.l("Error creating instance for legacy file=", str, ", Error=", e.getMessage()), null, 4, null);
                return null;
            }
        }

        private final vd5 fromFileNameV2(String str, String str2, Long l) {
            String str3;
            try {
                List listX0 = nq7.x0(str, new String[]{"."}, 6);
                str3 = str;
                try {
                    return new vd5(str3, Long.parseLong((String) listX0.get(1)), Integer.parseInt((String) listX0.get(3)), Integer.parseInt((String) listX0.get(2)), (String) listX0.get(4), str2, l);
                } catch (Exception e) {
                    e = e;
                    vr6.e$default(vr6.INSTANCE, vd5.logTag, dj7.l("Error creating instance for file=", str3, ", Error=", e.getMessage()), null, 4, null);
                    return null;
                }
            } catch (Exception e2) {
                e = e2;
                str3 = str;
            }
        }

        private final vd5 fromFileNameV3(String str, String str2, Long l) {
            String str3;
            try {
                List listX0 = nq7.x0(str, new String[]{"."}, 6);
                str3 = str;
                try {
                    return new vd5(str3, Long.parseLong((String) listX0.get(1)), Integer.parseInt((String) listX0.get(3)), Integer.parseInt((String) listX0.get(2)), (String) listX0.get(4), str2, l);
                } catch (Exception e) {
                    e = e;
                    vr6.e$default(vr6.INSTANCE, vd5.logTag, dj7.l("Error creating instance for file=", str3, ", Error=", e.getMessage()), null, 4, null);
                    return null;
                }
            } catch (Exception e2) {
                e = e2;
                str3 = str;
            }
        }

        public final vd5 fromFileName(String str, String str2, Long l) {
            str.getClass();
            if (uq7.V(str, "v3", false)) {
                return fromFileNameV3(str, str2, l);
            }
            return uq7.V(str, "v2", false) ? fromFileNameV2(str, str2, l) : fromFileNameLegacy(str, str2, l);
        }

        private a() {
        }
    }

    public /* synthetic */ vd5(String str, long j, int i, int i2, String str2, String str3, Long l, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j, i, i2, (i3 & 16) != 0 ? "Unknown" : str2, str3, l);
    }
}
