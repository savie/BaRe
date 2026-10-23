package defpackage;

import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import com.swiftapps.sba.SbaZstdNative;
import java.io.IOException;
import java.util.List;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.folders.data.Manifest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class tm3 {
    public static String a(Manifest manifest) {
        d45.b.getClass();
        MFirebaseUser mFirebaseUserA = d45.a();
        if (mFirebaseUserA == null) {
            throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
        }
        String uid = mFirebaseUserA.getUid();
        gv7 gv7Var = y32.a;
        String strE = y32.e(uid);
        gv7 gv7Var2 = w14.a;
        byte[] bytes = w14.c().i(manifest).getBytes(f51.a);
        bytes.getClass();
        String strEncodeToString = Base64.encodeToString(ge.q(bytes), 2);
        strEncodeToString.getClass();
        return el1.Y0(fl1.A0("v1", strE, y32.e(strEncodeToString)), ":::", null, null, null, 62);
    }

    public static Manifest b(q63 q63Var) {
        q63Var.getClass();
        if (!q63Var.j()) {
            return null;
        }
        try {
            return c(q63Var);
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "FolderManifestJson", "Error in getManifestVersioned: ".concat(io4.b(e)), null, 4, null);
            return null;
        }
    }

    public static Manifest c(q63 q63Var) {
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
                Manifest manifestD = d(q63Var, b45.a().getUid());
                Log.i("FolderManifestJson", "Using anonymous backups with Google Sign-in!");
                return manifestD;
            } catch (Exception unused2) {
                throw th;
            }
        }
    }

    public static Manifest d(q63 q63Var, String str) throws qm3, sm3, rm3, IOException {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        final long jA = q63Var.A();
        p93 p93Var = p93.a;
        final String strC = p93.c(Long.valueOf(jA));
        final String strH = q63.H(q63Var);
        String strC0 = nq7.C0(strH, ":::", strH);
        if (!strC0.equals("v1")) {
            throw new rm3("Manifest version incompatible with current version of Swift Backup: ".concat(strC0));
        }
        List listN0 = el1.N0(1, nq7.x0(strH, new String[]{":::"}, 6));
        gv7 gv7Var = y32.a;
        String strA = y32.a((String) listN0.get(0));
        byte[] bArrDecode = Base64.decode(y32.a((String) listN0.get(1)), 2);
        bArrDecode.getClass();
        try {
            String str2 = new String(SbaZstdNative.a.decompressZstdBytes(bArrDecode), f51.a);
            bt3 bt3Var = new bt3() { // from class: pm3
                @Override // defpackage.bt3
                public final Object invoke() {
                    String strG0 = nq7.G0(100, strH);
                    StringBuilder sb = new StringBuilder("Size=");
                    sb.append(jA);
                    sb.append(" b (");
                    sb.append(strC);
                    return dj7.n(sb, "), Content = ", strG0);
                }
            };
            if (strA.length() == 0) {
                throw new qm3("Empty id! Manifest=" + q63Var + " (" + bt3Var + ")");
            }
            if (!strA.equals(str)) {
                throw new sm3("File doesn't belong to current signed in user!!! Manifest=" + q63Var + " (" + bt3Var + ")");
            }
            gv7 gv7Var2 = w14.a;
            Manifest manifest = (Manifest) w14.c().c(str2, Manifest.class);
            if (manifest != null) {
                return manifest;
            }
            throw new rm3("Couldn't read manifest file! Manifest=" + q63Var + " (" + bt3Var + ")");
        } catch (IOException e) {
            throw new yy6(xs1.j("Native zstd decompress bytes failed: ", e.getMessage()), e);
        }
    }
}
