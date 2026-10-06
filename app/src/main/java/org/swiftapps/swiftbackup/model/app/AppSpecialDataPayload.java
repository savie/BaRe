package org.swiftapps.swiftbackup.model.app;

import android.util.Base64;
import com.swiftapps.sba.SbaZstdNative;
import defpackage.d45;
import defpackage.dj7;
import defpackage.el1;
import defpackage.eq3;
import defpackage.f51;
import defpackage.fl1;
import defpackage.fz5;
import defpackage.ge;
import defpackage.gv7;
import defpackage.hl1;
import defpackage.jz2;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.q63;
import defpackage.u48;
import defpackage.uq7;
import defpackage.vr6;
import defpackage.w14;
import defpackage.xs1;
import defpackage.y32;
import defpackage.yy6;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class AppSpecialDataPayload {
    public static final a Companion = new a(null);
    private static final String ENCRYPTED_STRING_SEPARATOR = ":::";
    private static final String FORMAT_VERSION_1 = "v1";
    private static final int MAX_FILE_BYTES = 1048576;
    private static final int VERSION_1 = 1;
    private static final String VERSION_PREFIX = "v";
    private static final String logTag = "AppSpecialDataPayload";
    private final String accessibilityComponent;
    private final String notificationPolicyXml;
    private final String ntfAccessComponent;
    private final String permissionStatesCsv;
    private final String ssaid;
    private final int version;

    public /* synthetic */ AppSpecialDataPayload(int i, String str, String str2, String str3, String str4, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 1 : i, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : str5);
    }

    public static /* synthetic */ AppSpecialDataPayload copy$default(AppSpecialDataPayload appSpecialDataPayload, int i, String str, String str2, String str3, String str4, String str5, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = appSpecialDataPayload.version;
        }
        if ((i2 & 2) != 0) {
            str = appSpecialDataPayload.permissionStatesCsv;
        }
        if ((i2 & 4) != 0) {
            str2 = appSpecialDataPayload.ssaid;
        }
        if ((i2 & 8) != 0) {
            str3 = appSpecialDataPayload.ntfAccessComponent;
        }
        if ((i2 & 16) != 0) {
            str4 = appSpecialDataPayload.accessibilityComponent;
        }
        if ((i2 & 32) != 0) {
            str5 = appSpecialDataPayload.notificationPolicyXml;
        }
        String str6 = str4;
        String str7 = str5;
        return appSpecialDataPayload.copy(i, str, str2, str3, str6, str7);
    }

    public final int component1() {
        return this.version;
    }

    public final String component2() {
        return this.permissionStatesCsv;
    }

    public final String component3() {
        return this.ssaid;
    }

    public final String component4() {
        return this.ntfAccessComponent;
    }

    public final String component5() {
        return this.accessibilityComponent;
    }

    public final String component6() {
        return this.notificationPolicyXml;
    }

    public final AppSpecialDataPayload copy(int i, String str, String str2, String str3, String str4, String str5) {
        return new AppSpecialDataPayload(i, str, str2, str3, str4, str5);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppSpecialDataPayload)) {
            return false;
        }
        AppSpecialDataPayload appSpecialDataPayload = (AppSpecialDataPayload) obj;
        return this.version == appSpecialDataPayload.version && pe4.d(this.permissionStatesCsv, appSpecialDataPayload.permissionStatesCsv) && pe4.d(this.ssaid, appSpecialDataPayload.ssaid) && pe4.d(this.ntfAccessComponent, appSpecialDataPayload.ntfAccessComponent) && pe4.d(this.accessibilityComponent, appSpecialDataPayload.accessibilityComponent) && pe4.d(this.notificationPolicyXml, appSpecialDataPayload.notificationPolicyXml);
    }

    public final String getAccessibilityComponent() {
        return this.accessibilityComponent;
    }

    public final String getNotificationPolicyXml() {
        return this.notificationPolicyXml;
    }

    public final String getNtfAccessComponent() {
        return this.ntfAccessComponent;
    }

    public final String getPermissionStatesCsv() {
        return this.permissionStatesCsv;
    }

    public final String getSsaid() {
        return this.ssaid;
    }

    public final int getVersion() {
        return this.version;
    }

    @jz2
    public final boolean hasPayloads() {
        String str = this.permissionStatesCsv;
        if (str != null && str.length() != 0) {
            return true;
        }
        String str2 = this.ssaid;
        if (str2 != null && str2.length() != 0) {
            return true;
        }
        String str3 = this.ntfAccessComponent;
        if (str3 != null && str3.length() != 0) {
            return true;
        }
        String str4 = this.accessibilityComponent;
        if (str4 != null && str4.length() != 0) {
            return true;
        }
        String str5 = this.notificationPolicyXml;
        return (str5 == null || str5.length() == 0) ? false : true;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.version) * 31;
        String str = this.permissionStatesCsv;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.ssaid;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.ntfAccessComponent;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.accessibilityComponent;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.notificationPolicyXml;
        return iHashCode5 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        int i = this.version;
        String str = this.permissionStatesCsv;
        String str2 = this.ssaid;
        String str3 = this.ntfAccessComponent;
        String str4 = this.accessibilityComponent;
        String str5 = this.notificationPolicyXml;
        StringBuilder sb = new StringBuilder("AppSpecialDataPayload(version=");
        sb.append(i);
        sb.append(", permissionStatesCsv=");
        sb.append(str);
        sb.append(", ssaid=");
        xs1.t(sb, str2, ", ntfAccessComponent=", str3, ", accessibilityComponent=");
        return eq3.o(sb, str4, ", notificationPolicyXml=", str5, ")");
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final AppSpecialDataPayload decryptV1(String str, String str2) throws yy6 {
            List listN0 = el1.N0(1, nq7.x0(str, new String[]{AppSpecialDataPayload.ENCRYPTED_STRING_SEPARATOR}, 6));
            gv7 gv7Var = y32.a;
            ArrayList arrayList = new ArrayList(hl1.G0(listN0, 10));
            Iterator it = listN0.iterator();
            while (it.hasNext()) {
                arrayList.add(y32.a((String) it.next()));
            }
            if (arrayList.size() < 2) {
                vr6.w$default(vr6.INSTANCE, AppSpecialDataPayload.logTag, fz5.j(arrayList.size(), "Invalid special data payload parts: "), null, 4, null);
                return null;
            }
            if (!pe4.d((String) arrayList.get(0), str2)) {
                vr6.w$default(vr6.INSTANCE, AppSpecialDataPayload.logTag, "Special data payload belongs to a different user", null, 4, null);
                return null;
            }
            byte[] bArrDecode = Base64.decode((String) arrayList.get(1), 2);
            bArrDecode.getClass();
            try {
                String str3 = new String(SbaZstdNative.a.decompressZstdBytes(bArrDecode), f51.a);
                gv7 gv7Var2 = w14.a;
                return (AppSpecialDataPayload) w14.c().c(str3, AppSpecialDataPayload.class);
            } catch (IOException e) {
                throw new yy6(xs1.j("Native zstd decompress bytes failed: ", e.getMessage()), e);
            }
        }

        private final String getEncryptedStringV1(AppSpecialDataPayload appSpecialDataPayload, String str) {
            gv7 gv7Var = w14.a;
            byte[] bytes = w14.c().i(appSpecialDataPayload).getBytes(f51.a);
            bytes.getClass();
            String strEncodeToString = Base64.encodeToString(ge.q(bytes), 2);
            gv7 gv7Var2 = y32.a;
            return el1.Y0(fl1.A0(AppSpecialDataPayload.FORMAT_VERSION_1, y32.e(str), y32.e(strEncodeToString)), AppSpecialDataPayload.ENCRYPTED_STRING_SEPARATOR, null, null, null, 62);
        }

        public static String getEncryptedStringV1$default(a aVar, AppSpecialDataPayload appSpecialDataPayload, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                d45.b.getClass();
                MFirebaseUser mFirebaseUserA = d45.a();
                if (mFirebaseUserA == null) {
                    throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
                }
                str = mFirebaseUserA.getUid();
            }
            return aVar.getEncryptedStringV1(appSpecialDataPayload, str);
        }

        public final AppSpecialDataPayload read(q63 q63Var) {
            Throwable th;
            q63Var.getClass();
            if (!q63Var.j()) {
                return null;
            }
            if (q63Var.A() > 1048576) {
                vr6.w$default(vr6.INSTANCE, AppSpecialDataPayload.logTag, u48.l(q63Var.A(), "Skipping special data payload due to size="), null, 4, null);
                return null;
            }
            d45 d45Var = d45.b;
            d45Var.getClass();
            if (d45.a() == null) {
                vr6.w$default(vr6.INSTANCE, AppSpecialDataPayload.logTag, "Cannot read special data payload: user not logged in", null, 4, null);
                return null;
            }
            try {
                d45Var.getClass();
                MFirebaseUser mFirebaseUserA = d45.a();
                if (mFirebaseUserA == null) {
                    System.exit(0);
                    throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
                }
                AppSpecialDataPayload appSpecialDataPayload = read(q63Var, mFirebaseUserA.getUid());
                if (appSpecialDataPayload != null) {
                    return appSpecialDataPayload;
                }
                th = null;
                vr6 vr6Var = vr6.INSTANCE;
                String message = th != null ? th.getMessage() : null;
                if (message == null) {
                    message = "";
                }
                vr6.w$default(vr6Var, AppSpecialDataPayload.logTag, "Unable to read special data payload: ".concat(message), null, 4, null);
                return null;
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public final boolean write(String str, String str2, String str3, String str4, String str5, q63 q63Var) {
            q63 q63Var2;
            q63Var.getClass();
            AppSpecialDataPayload appSpecialDataPayload = new AppSpecialDataPayload(0, (str == null || str.length() <= 0) ? null : str, (str2 == null || str2.length() <= 0) ? null : str2, (str3 == null || str3.length() <= 0) ? null : str3, (str4 == null || str4.length() <= 0) ? null : str4, (str5 == null || str5.length() <= 0) ? null : str5, 1, null);
            if (!appSpecialDataPayload.hasPayloads()) {
                q63Var.h();
                return false;
            }
            q63 q63VarT = q63Var.t();
            if (q63VarT != null) {
                q63.E(q63VarT);
            }
            q63 q63VarT2 = q63Var.t();
            if (q63VarT2 != null) {
                q63Var2 = q63VarT2.J(q63Var.p() + ".tmp-" + System.nanoTime());
            } else {
                q63Var2 = new q63(q63Var.v() + ".tmp-" + System.nanoTime(), q63Var.o());
            }
            try {
                q63.K(q63Var2, getEncryptedStringV1$default(this, appSpecialDataPayload, null, 2, null));
                if (q63Var2.I(q63Var)) {
                    return true;
                }
                throw new IllegalStateException("Unable to replace special data payload");
            } catch (Exception e) {
                vr6.w$default(vr6.INSTANCE, AppSpecialDataPayload.logTag, xs1.j("Unable to write special data payload: ", e.getMessage()), null, 4, null);
                q63Var2.h();
                return false;
            }
        }

        private a() {
        }

        private final AppSpecialDataPayload read(q63 q63Var, String str) throws IOException {
            String strH = q63.H(q63Var);
            if (!uq7.V(strH, AppSpecialDataPayload.VERSION_PREFIX, false)) {
                vr6.w$default(vr6.INSTANCE, AppSpecialDataPayload.logTag, "Unsupported special data payload format", null, 4, null);
                return null;
            }
            String strC0 = nq7.C0(strH, AppSpecialDataPayload.ENCRYPTED_STRING_SEPARATOR, strH);
            if (strC0.equals(AppSpecialDataPayload.FORMAT_VERSION_1)) {
                return decryptV1(strH, str);
            }
            vr6.w$default(vr6.INSTANCE, AppSpecialDataPayload.logTag, "Unsupported special data payload version: ".concat(strC0), null, 4, null);
            return null;
        }
    }

    public AppSpecialDataPayload(int i, String str, String str2, String str3, String str4, String str5) {
        this.version = i;
        this.permissionStatesCsv = str;
        this.ssaid = str2;
        this.ntfAccessComponent = str3;
        this.accessibilityComponent = str4;
        this.notificationPolicyXml = str5;
    }

    public AppSpecialDataPayload() {
        this(0, null, null, null, null, null, 63, null);
    }
}
