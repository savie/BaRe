package defpackage;

import android.os.Looper;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.IgnoredException;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cu {
    public static final cu a = new cu();

    public static String a(cu cuVar, LocalMetadata localMetadata) {
        d45.b.getClass();
        MFirebaseUser mFirebaseUserA = d45.a();
        if (mFirebaseUserA == null) {
            throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
        }
        String uid = mFirebaseUserA.getUid();
        gv7 gv7Var = y32.a;
        String strE = y32.e(uid);
        gv7 gv7Var2 = w14.a;
        return el1.Y0(fl1.A0("v1", strE, y32.e(w14.c().i(localMetadata))), ":::", null, null, null, 62);
    }

    public static LocalMetadata b(q63 q63Var) {
        q63Var.getClass();
        if (!q63Var.j()) {
            return null;
        }
        try {
            return c(q63Var);
        } catch (Exception e) {
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                d6.o();
                return null;
            }
            gv7 gv7Var = w14.a;
            LocalMetadata localMetadata = (LocalMetadata) w14.a(q63Var, LocalMetadata.class);
            if (localMetadata != null) {
                return localMetadata;
            }
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, "AppMetadataXml", "Error in getMetadataVersioned: ".concat(io4.b(e)), null, 4, null);
            vr6.e$default(vr6Var, "AppMetadataXml", "Error in getMetadataLegacy = null", null, 4, null);
            return null;
        }
    }

    public static LocalMetadata c(q63 q63Var) {
        q63Var.getClass();
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            if (mFirebaseUserA != null) {
                return d(q63Var, mFirebaseUserA.getUid());
            }
            System.exit(0);
            throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
        } catch (Throwable th) {
            Boolean boolValueOf = null;
            try {
                d45.b.getClass();
                MFirebaseUser mFirebaseUserA2 = d45.a();
                if (mFirebaseUserA2 != null) {
                    boolValueOf = Boolean.valueOf(mFirebaseUserA2.isAnonymous());
                }
            } catch (Exception unused) {
            }
            if (pe4.d(boolValueOf, Boolean.TRUE)) {
                throw th;
            }
            try {
                d45 d45Var = d45.b;
                LocalMetadata localMetadataD = d(q63Var, b45.a().getUid());
                if (localMetadataD != null) {
                    Log.i("AppMetadataXml", "Using anonymous backups with Google Sign-in!");
                }
                return localMetadataD;
            } catch (Exception unused2) {
                throw th;
            }
        }
    }

    public static LocalMetadata d(q63 q63Var, String str) throws IgnoredException, IOException, zt {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        final long jA = q63Var.A();
        p93 p93Var = p93.a;
        final String strC = p93.c(Long.valueOf(jA));
        if (jA > 102400) {
            vr6.e$default(vr6.INSTANCE, "AppMetadataXml", "Abnormally large metadata file at " + q63Var + " (" + strC + ")", null, 4, null);
            return null;
        }
        final String strH = q63.H(q63Var);
        int i = 0;
        if (uq7.V(strH, "#Titanium Backup", false)) {
            String str2 = "Invalid metadata file at " + q63Var + ": " + nq7.G0(100, strH) + "...";
            vr6.e$default(vr6.INSTANCE, "AppMetadataXml", str2, null, 4, null);
            throw new IgnoredException(new RuntimeException(str2));
        }
        if (!uq7.V(strH, "v", false)) {
            ArrayList arrayList = new ArrayList(strH.length());
            int i2 = 0;
            while (i < strH.length()) {
                arrayList.add(Character.valueOf((char) (strH.charAt(i) - i2)));
                i++;
                i2++;
            }
            String strY0 = el1.Y0(el1.j1(arrayList), "", null, null, null, 62);
            String strC0 = nq7.C0(strY0, "{", "");
            return e(strC0, q63Var, new bt3() { // from class: wt
                @Override // defpackage.bt3
                public final Object invoke() {
                    String strG0 = nq7.G0(100, strH);
                    StringBuilder sb = new StringBuilder("Size=");
                    sb.append(jA);
                    sb.append(" b (");
                    sb.append(strC);
                    return dj7.n(sb, "), Content = ", strG0);
                }
            }, str, nq7.z0(strY0, strC0, strY0));
        }
        String strC1 = nq7.C0(strH, ":::", strH);
        if (!strC1.equals("v1")) {
            throw new zt("Metadata version incompatible with current version of Swift Backup: ".concat(strC1));
        }
        List listN0 = el1.N0(1, nq7.x0(strH, new String[]{":::"}, 6));
        gv7 gv7Var = y32.a;
        ArrayList arrayList2 = new ArrayList(hl1.G0(listN0, 10));
        Iterator it = listN0.iterator();
        while (it.hasNext()) {
            arrayList2.add(y32.a((String) it.next()));
        }
        String str3 = (String) arrayList2.get(0);
        String str4 = (String) arrayList2.get(1);
        str3.getClass();
        str4.getClass();
        return e(str3, q63Var, new xt(strC, strH, jA), str, str4);
    }

    public static LocalMetadata e(String str, q63 q63Var, bt3 bt3Var, String str2, String str3) throws au, zt, yt {
        if (str.length() == 0) {
            throw new yt("Empty id! Metadata=" + q63Var + " (" + bt3Var + ")");
        }
        if (!str.equals(str2)) {
            throw new au("File doesn't belong to current signed in user!!! Metadata=" + q63Var + " (" + bt3Var + ")");
        }
        gv7 gv7Var = w14.a;
        LocalMetadata localMetadata = (LocalMetadata) w14.c().c(str3, LocalMetadata.class);
        if (localMetadata != null) {
            return localMetadata;
        }
        throw new zt("Couldn't read metadata file! Metadata=" + q63Var + " (" + bt3Var + ")");
    }

    public final void f(LocalMetadata localMetadata, q63 q63Var) throws Exception {
        localMetadata.getClass();
        q63Var.getClass();
        try {
            q63.K(q63Var, a(this, localMetadata));
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "AppMetadataXml", xs1.i(q63Var, "saveMetadataFile: Error while writing metadata file at "), null, 4, null);
            throw e;
        }
    }
}
