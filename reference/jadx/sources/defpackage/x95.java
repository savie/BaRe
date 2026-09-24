package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.clients.MegaClient$Credentials;
import org.swiftapps.swiftbackup.cloud.model.CloudResult;
import org.swiftapps.swiftbackup.cloud.protocols.mega.MegaLoginResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class x95 extends tb1 {
    public static final x95 g = new x95();
    public static final dd1 h = dd1.MegaNz;
    public static final nb5 i = nb5.a;

    public static String o() {
        Log.d("MegaClient", "getOrCreateMainFolder");
        String mainCloudFolderName = h.getMainCloudFolderName();
        i.getClass();
        mainCloudFolderName.getClass();
        gt7 gt7Var = nb5.b;
        if (gt7Var.c(mainCloudFolderName)) {
            Log.d("MegaClient", "Main folder already exists");
            return mainCloudFolderName;
        }
        Log.d("MegaClient", "Main folder not found, Creating folder");
        if (!gt7Var.b(mainCloudFolderName)) {
            return null;
        }
        Log.d("MegaClient", "Main folder created: ".concat(mainCloudFolderName));
        return mainCloudFolderName;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static MegaClient$Credentials p() {
        String string;
        String strA;
        String str = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("mega_credentials", null);
            if (string != null) {
                gv7 gv7Var = y32.a;
                strA = y32.a(string);
            } else {
                strA = null;
            }
            MegaClient$Credentials megaClient$Credentials = (MegaClient$Credentials) io4.j("MegaClient", "savedCredentials", false, new v95(strA, 0), 12);
            if (megaClient$Credentials == null) {
                megaClient$Credentials = new MegaClient$Credentials(str, objArr2 == true ? 1 : 0, 3, objArr == true ? 1 : 0);
            }
            String lowerCase = megaClient$Credentials.getEmail().toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            return MegaClient$Credentials.copy$default(megaClient$Credentials, lowerCase, null, 2, null);
        } catch (ClassCastException unused) {
            string = null;
        }
    }

    public static ui1 q(String str, boolean z) {
        Exception exc;
        ArrayList arrayList = new ArrayList();
        String mainCloudFolderName = h.getMainCloudFolderName();
        if (z) {
            try {
                mainCloudFolderName = mainCloudFolderName + "/" + qb1.e();
            } catch (Exception e) {
                exc = e;
                vr6.e$default(vr6.INSTANCE, "MegaClient", "search: ".concat(io4.b(exc)), null, 4, null);
            }
        }
        i.getClass();
        arrayList.addAll(nb5.c(mainCloudFolderName));
        exc = null;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (nq7.Z(((pg1) obj).a, str, false)) {
                arrayList2.add(obj);
            }
        }
        Log.d("MegaClient", dj7.j("search: ", arrayList2.size(), "/", " valid drive files found", arrayList.size()));
        return new ui1(exc, arrayList2);
    }

    public static void r(MegaClient$Credentials megaClient$Credentials) {
        megaClient$Credentials.getClass();
        String lowerCase = megaClient$Credentials.getEmail().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        MegaClient$Credentials megaClient$CredentialsCopy$default = MegaClient$Credentials.copy$default(megaClient$Credentials, lowerCase, null, 2, null);
        gv7 gv7Var = w14.a;
        String strI = w14.c().i(megaClient$CredentialsCopy$default);
        gv7 gv7Var2 = y32.a;
        String strE = y32.e(strI);
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString("mega_credentials", strE).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public static void s(String str) {
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString("mega_swift_session", str).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    @Override // defpackage.tb1
    public final xh2 b(zv1 zv1Var) {
        return new y95(i, zv1Var);
    }

    @Override // defpackage.tb1
    public final no2 c(fo2 fo2Var) {
        fo2Var.getClass();
        return new aa5(i, fo2Var);
    }

    @Override // defpackage.tb1
    public final ag8 d(rf8 rf8Var) {
        rf8Var.getClass();
        return new vb5(i, rf8Var);
    }

    @Override // defpackage.tb1
    public final boolean e(String str) {
        boolean z;
        String strK = dj7.k(h.getMainCloudFolderName(), "/", qb1.e());
        try {
            vr6.i$default(vr6.INSTANCE, "MegaClient", "deleteTaggedBackups: Deleting folder=".concat(strK), null, 4, null);
            i.getClass();
            if (nb5.b.c(strK)) {
                nb5.a(strK);
            }
            z = true;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "MegaClient", "deleteTaggedBackups: ".concat(io4.b(e)), null, 4, null);
            z = false;
        }
        if (z) {
            vr6.i$default(vr6.INSTANCE, "MegaClient", "deleteTaggedBackups: Successful", null, 4, null);
        }
        return z;
    }

    @Override // defpackage.tb1
    public final ui1 f() {
        return q(".cls (" + qb1.e() + ")", true);
    }

    @Override // defpackage.tb1
    public final dd1 g() {
        return h;
    }

    @Override // defpackage.tb1
    public final String h() {
        return "MegaClient";
    }

    @Override // defpackage.tb1
    public final ui1 j() {
        return q(".msg (" + qb1.e() + ")", true);
    }

    @Override // defpackage.tb1
    public final ui1 k() {
        return q(".wal", false);
    }

    @Override // defpackage.tb1
    public final ui1 l() {
        return q(".wfi", false);
    }

    @Override // defpackage.tb1
    public final jm1 m() {
        return k55.i(h.getMainCloudFolderName(), qf1.CASE_SENSITIVE_PATH, new hc1(4), new w95());
    }

    @Override // defpackage.tb1
    public final CloudResult n() {
        Object bn6Var;
        Log.d("MegaClient", "startCheckAccess()");
        MegaClient$Credentials megaClient$CredentialsP = p();
        boolean zIsValid = megaClient$CredentialsP.isValid();
        nb5 nb5Var = i;
        if (zIsValid) {
            Log.i("MegaClient", "Valid creds available, setting credentials");
            nb5Var.getClass();
            nb5.b.getClass();
            gt7.b = megaClient$CredentialsP;
            gh ghVar = gt7.h;
            if (ghVar != null) {
                Arrays.fill((byte[]) ghVar.b, (byte) 0);
            }
            gt7.h = null;
            gt7.i = null;
        } else {
            Log.e("MegaClient", "Invalid creds, not setting credentials");
        }
        SwiftApp.Companion companion = SwiftApp.d;
        if (!ai8.i(SwiftApp.Companion.c())) {
            Log.e("MegaClient", "Network not available!");
            return qi1.a;
        }
        if (!qb1.m() || !megaClient$CredentialsP.isValid()) {
            RuntimeException runtimeException = new RuntimeException("isConnected=" + qb1.m() + ", " + MegaClient$Credentials.class.getSimpleName() + ".isValid=" + megaClient$CredentialsP.isValid() + ". Signing out " + qb1.f() + "!");
            vr6.e$default(vr6.INSTANCE, "MegaClient", xs1.j("startCheckAccess: ", runtimeException.getMessage()), null, 4, null);
            qb1.a();
            return new oi1(runtimeException, false);
        }
        nb5Var.getClass();
        gt7 gt7Var = nb5.b;
        MegaLoginResult megaLoginResultE = gt7Var.e(null);
        if (!(megaLoginResultE instanceof MegaLoginResult.Success)) {
            if (megaLoginResultE instanceof MegaLoginResult.Failed) {
                MegaLoginResult.Failed failed = (MegaLoginResult.Failed) megaLoginResultE;
                vr6.e$default(vr6.INSTANCE, "MegaClient", "Failed exception = ".concat(io4.b(failed.getE())), null, 4, null);
                qb1.a();
                return new oi1(failed.getE(), false);
            }
            if (!(megaLoginResultE instanceof MegaLoginResult.MultiFactorAuthRequired)) {
                q.j();
                return null;
            }
            MegaLoginResult.MultiFactorAuthRequired multiFactorAuthRequired = (MegaLoginResult.MultiFactorAuthRequired) megaLoginResultE;
            vr6.e$default(vr6.INSTANCE, "MegaClient", "2FA required exception = ".concat(io4.b(multiFactorAuthRequired.getE())), null, 4, null);
            qb1.a();
            return new oi1(multiFactorAuthRequired.getE(), false);
        }
        Log.d("MegaClient", "startCheckAccess: Login successful");
        String strJ = qb1.j();
        if (strJ == null) {
            strJ = o();
        }
        if (strJ == null || strJ.length() == 0) {
            vr6.e$default(vr6.INSTANCE, "MegaClient", "startCheckAccess: Null folder id!", null, 4, null);
            return pi1.a;
        }
        qb1.s(strJ);
        try {
            gt7Var.getClass();
            try {
                bn6Var = ((ba5) gt7.f.getValue()).a(gt7Var.f());
            } catch (Throwable th) {
                bn6Var = new bn6(th);
            }
            Object ni1Var = new ni1(null, null);
            if (bn6Var instanceof bn6) {
                bn6Var = ni1Var;
            }
            String email = megaClient$CredentialsP.getEmail();
            qb1.q(email);
            return new si1((ni1) bn6Var, email);
        } catch (Exception e) {
            Log.e("MegaClient", "startCheckAccess:", e);
            vr6.e$default(vr6.INSTANCE, "MegaClient", "startCheckAccess: " + e, null, 4, null);
            return new oi1(e, false);
        }
    }
}
