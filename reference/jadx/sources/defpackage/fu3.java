package defpackage;

import android.accounts.Account;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.microsoft.identity.client.claims.ClaimsRequest;
import com.nimbusds.jose.HeaderParameterNames;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.cloud.model.CloudResult;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fu3 extends tb1 {
    public final dd1 g = dd1.GoogleDrive;
    public final d04 h;
    public String i;

    public fu3() {
        int i = 0;
        int i2 = 0;
        this.h = new d04(new q02(i2, this, fu3.class, "restAccessToken", "restAccessToken()Ljava/lang/String;", i, 1), new rk(i2, this, fu3.class, "refreshRestAccessToken", "refreshRestAccessToken()Z", i, 2));
    }

    public static final List q(fu3 fu3Var, String str) throws IOException {
        OkHttpClient okHttpClient = d04.i;
        ArrayList arrayListK = d04.k(fu3Var.h, eq3.l("name = ", jm1.N(str), " and mimeType = ", jm1.N("application/vnd.google-apps.folder"), " and trashed = false"), "files(id, name, createdTime)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListK) {
            if (((yz3) obj).b.equals(str)) {
                arrayList.add(obj);
            }
        }
        return el1.n1(arrayList, new xg(6));
    }

    @Override // defpackage.tb1
    public final xh2 b(zv1 zv1Var) {
        return new ju3(this.h, zv1Var);
    }

    @Override // defpackage.tb1
    public final no2 c(fo2 fo2Var) {
        fo2Var.getClass();
        return new lu3(this, this.h, fo2Var);
    }

    @Override // defpackage.tb1
    public final ag8 d(rf8 rf8Var) {
        rf8Var.getClass();
        return new pu3(this, this.h, rf8Var);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00fc  */
    @Override // defpackage.tb1
    public final boolean e(String str) {
        String message;
        boolean z;
        Boolean boolValueOf;
        tb1 tb1Var;
        OkHttpClient okHttpClient = d04.i;
        String strL = eq3.l("properties has { key=", jm1.N(HeaderParameterNames.AUTHENTICATION_TAG), " and value=", jm1.N(str), " }");
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "GClient", "deleteTaggedBackups: Querying cloud for files tagged with ".concat(str), null, 4, null);
        ui1 ui1VarV = v("files(id, name)", strL, qb1.j());
        Exception exc = ui1VarV.b;
        if (exc != null) {
            message = exc != null ? exc.getMessage() : null;
            if (message == null) {
                message = "";
            }
            vr6.e$default(vr6Var, "GClient", "deleteTaggedBackups:".concat(message), null, 4, null);
            return false;
        }
        vr6.i$default(vr6Var, "GClient", fz5.j(ui1VarV.a.size(), "deleteTaggedBackups: Cloud files to be deleted = "), null, 4, null);
        if (!ui1VarV.a.isEmpty()) {
            List list = ui1VarV.a;
            ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((pg1) it.next()).b);
            }
            vr6 vr6Var2 = vr6.INSTANCE;
            vr6.i$default(vr6Var2, "GClient", "deleteTaggedBackups: Deleting cloud files", null, 4, null);
            try {
                d45.b.getClass();
                MFirebaseUser mFirebaseUserA = d45.a();
                boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
            } catch (Exception unused) {
            }
            if (pe4.d(boolValueOf, Boolean.TRUE)) {
                tb1Var = kv2.i;
            } else {
                if (tb1.a == null) {
                    synchronized (qb1.class) {
                        if (tb1.a == null) {
                            tb1.a = qb1.f().getClient();
                        }
                    }
                }
                tb1Var = tb1.a;
                tb1Var.getClass();
            }
            jq6 jq6VarC = tb1Var.b(new jd1(eq3.p(arrayList))).c();
            if (!jq6VarC.q()) {
                Exception exc2 = (Exception) jq6VarC.b;
                message = exc2 != null ? exc2.getMessage() : null;
                if (message == null) {
                    message = "";
                }
                vr6.e$default(vr6Var2, "GClient", "deleteTaggedBackups: ".concat(message), null, 4, null);
            }
            z = jq6VarC.q();
        }
        if (z) {
            vr6.i$default(vr6.INSTANCE, "GClient", "deleteTaggedBackups: Successful", null, 4, null);
        }
        return z;
    }

    @Override // defpackage.tb1
    public final ui1 f() {
        OkHttpClient okHttpClient = d04.i;
        return v("files(id, name, size)", "name contains ".concat(jm1.N(".cls (" + qb1.e() + ")")), qb1.j());
    }

    @Override // defpackage.tb1
    public final dd1 g() {
        return this.g;
    }

    @Override // defpackage.tb1
    public final String h() {
        return "GClient";
    }

    @Override // defpackage.tb1
    public final ui1 j() {
        OkHttpClient okHttpClient = d04.i;
        return v("files(id, name, size)", "name contains ".concat(jm1.N(".msg (" + qb1.e() + ")")), qb1.j());
    }

    @Override // defpackage.tb1
    public final ui1 k() {
        OkHttpClient okHttpClient = d04.i;
        return v("files(id, name, size, createdTime, modifiedTime, thumbnailLink)", "name contains ".concat(jm1.N(".wal")), qb1.j());
    }

    @Override // defpackage.tb1
    public final ui1 l() {
        OkHttpClient okHttpClient = d04.i;
        return v("files(id, name, size, createdTime, modifiedTime, thumbnailLink)", "name contains ".concat(jm1.N(".wfi")), qb1.j());
    }

    @Override // defpackage.tb1
    public final jm1 m() {
        try {
            String strJ = qb1.j();
            if (strJ == null || nq7.j0(strJ)) {
                strJ = null;
            }
            if (strJ == null) {
                throw new IllegalArgumentException("Google Drive main folder id is not initialized");
            }
            OkHttpClient okHttpClient = d04.i;
            return k55.h(og1.b(d04.k(this.h, jm1.N(strJ).concat(" in parents and trashed = false"), "files(id, name, size, createdTime, modifiedTime, mimeType)")), qf1.OPAQUE);
        } catch (Exception e) {
            return new xa1(e);
        }
    }

    @Override // defpackage.tb1
    public final CloudResult n() {
        return w(0);
    }

    public final List o(String str, String str2, String str3) {
        Log.d("GClient", "doQueryRest called");
        if (str3 == null || str3.length() == 0 || nq7.j0(str3)) {
            vr6.e$default(vr6.INSTANCE, "GClient", "doQueryRest: Cloud main folder id is null! Clearing cloud connection.", null, 4, null);
            qb1.a();
            qb1.c().a(true);
            return ov2.a;
        }
        OkHttpClient okHttpClient = d04.i;
        String strConcat = jm1.N(str3).concat(" in parents and trashed = false");
        if (str2 != null && str2.length() != 0 && !nq7.j0(str2)) {
            strConcat = dj7.k(strConcat, " and ", str2);
        }
        Log.d("GClient", "doQueryRest: Querying cloud with fields = " + str + ", query = " + strConcat);
        return d04.k(this.h, strConcat, str);
    }

    public final synchronized yz3 p(boolean z) {
        yz3 yz3Var;
        try {
            String str = "getMainFolderRest(createIfNeeded: " + z + ")";
            String mainCloudFolderName = this.g.getMainCloudFolderName();
            List listQ = q(this, mainCloudFolderName);
            if (!listQ.isEmpty()) {
                if (listQ.size() == 1) {
                    yz3Var = (yz3) el1.S0(listQ);
                    Log.i(str, "Main folder already exists: " + yz3Var);
                } else {
                    vr6.w$default(vr6.INSTANCE, str, "More than 1 main folders found!", null, 4, null);
                    yz3Var = (yz3) el1.S0(listQ);
                    try {
                        s(yz3Var, el1.N0(1, listQ));
                    } catch (Exception e) {
                        vr6.e$default(vr6.INSTANCE, str, "Error while merging folders", e, null, 8, null);
                    }
                }
                return yz3Var;
            }
            if (!z) {
                return null;
            }
            Log.i(str, "Main folder not found, Creating folder");
            yz3 yz3VarC = this.h.c(mainCloudFolderName);
            String str2 = yz3VarC.a;
            if (str2 == null || str2.length() == 0) {
                vr6.e$default(vr6.INSTANCE, "GClient", "Main folder creation failed (" + mainCloudFolderName + ")", null, 4, null);
            } else {
                vr6.i$default(vr6.INSTANCE, str, "Main folder created: " + yz3VarC, null, 4, null);
            }
            return yz3VarC;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean r(Exception exc) {
        exc.getClass();
        if (!(exc instanceof vz3) || ((vz3) exc).b != 401) {
            return false;
        }
        CloudResult cloudResultW = w(0);
        vr6.i$default(vr6.INSTANCE, "GClient", "handleUnauthorizedStatus: " + cloudResultW, null, 4, null);
        return cloudResultW instanceof si1;
    }

    public final void s(yz3 yz3Var, List list) {
        vr6.i$default(vr6.INSTANCE, "GClient", "mergeFoldersRest() called with: mainFolder = " + yz3Var + ", duplicateFolders = " + list, null, 4, null);
        String str = yz3Var.a;
        if (str == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            yz3 yz3Var2 = (yz3) it.next();
            String str2 = yz3Var2.a;
            if (str2 != null) {
                vr6 vr6Var = vr6.INSTANCE;
                vr6.i$default(vr6Var, "GClient: mergeFoldersRest", "Merging duplicate folder '" + yz3Var2 + "' into original folder '" + yz3Var + "'", null, 4, null);
                String str3 = null;
                List listO = o("files(id, name, size)", null, str2);
                boolean zIsEmpty = listO.isEmpty();
                d04 d04Var = this.h;
                if (zIsEmpty) {
                    vr6.i$default(vr6Var, "GClient: mergeFoldersRest", "Duplicate folder '" + yz3Var2 + "' is empty, deleting it.", null, 4, null);
                    new ju3(d04Var, new jd1(el1.v1(new LinkedHashSet(nc8.I(str2))))).c();
                    vr6.i$default(vr6Var, "GClient: mergeFoldersRest", "Deleted " + yz3Var2, null, 4, null);
                } else {
                    Iterator it2 = listO.iterator();
                    while (it2.hasNext()) {
                        String str4 = ((yz3) it2.next()).a;
                        if (str4 != null) {
                            d04Var.getClass();
                            Request.Builder builder = new Request.Builder();
                            HttpUrl.Builder builderG = d04.u(d04Var.d, "/drive/v3/files/".concat(str4)).g();
                            builderG.d("addParents", str);
                            builderG.d("removeParents", str2);
                            builderG.d("fields", "id");
                            builderG.d("supportsAllDrives", "true");
                            builder.a = builderG.e();
                            fl4 fl4Var = new fl4();
                            RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
                            builder.c("PATCH", RequestBody.Companion.a(fl4Var.toString(), d04.j));
                            d04Var.e(new Request(builder)).close();
                        }
                        str3 = null;
                    }
                    List listO2 = o("files(id, name, size)", str3, str2);
                    if (listO2.isEmpty()) {
                        vr6 vr6Var2 = vr6.INSTANCE;
                        vr6.i$default(vr6Var2, "GClient: mergeFoldersRest", "Duplicate folder '" + yz3Var2 + "' cleaned, deleting it.", null, 4, null);
                        new ju3(d04Var, new jd1(el1.v1(new LinkedHashSet(nc8.I(str2))))).c();
                        vr6.i$default(vr6Var2, "GClient: mergeFoldersRest", "Deleted " + yz3Var2, null, 4, null);
                    } else {
                        vr6.e$default(vr6.INSTANCE, "GClient: mergeFoldersRest", "Failed moving " + listO2.size() + " files from duplicate folder '" + yz3Var2 + "'!", null, 4, null);
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ca  */
    public final void t(String str, boolean z) {
        Object if1Var;
        Object obj;
        d45.b.getClass();
        MFirebaseUser mFirebaseUserA = d45.a();
        if (mFirebaseUserA == null) {
            throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
        }
        String email = mFirebaseUserA.getEmail();
        if (uq7.P(email, str, true)) {
            return;
        }
        dd1 dd1Var = this.g;
        dd1Var.getClass();
        email.getClass();
        zc2 zc2Var = re3.a;
        String strM = re3.m(qb1.h(dd1Var, email));
        str.getClass();
        String strM2 = re3.m(qb1.h(dd1Var, str));
        dw dwVar = new dw(2, email, str, this);
        dq dqVar = new dq(6);
        jf1 jf1Var = jf1.i;
        kf1 kf1Var = kf1.i;
        boolean zEquals = strM.equals(strM2);
        se3 se3Var = se3.a;
        te3 te3Var = te3.a;
        if (zEquals) {
            if1Var = kf1Var;
        } else {
            w13 w13Var = (w13) dqVar.invoke(strM2);
            if (w13Var instanceof lf1) {
                if1Var = jf1Var;
            } else if ((w13Var instanceof mf1) && ((mf1) w13Var).g) {
                if1Var = kf1Var;
            } else {
                w13 w13Var2 = (w13) dqVar.invoke(strM);
                if (w13Var2 instanceof lf1) {
                    if1Var = jf1Var;
                } else if (w13Var2 instanceof mf1) {
                    mf1 mf1Var = (mf1) w13Var2;
                    if (mf1Var.g && (obj = mf1Var.h) != null && ((Boolean) dwVar.invoke(obj)).booleanValue()) {
                        ve3 ve3VarB = cf3.b(re3.k().d("cloud_v1").d(strM2), new ox(obj, 12));
                        if (ve3VarB.equals(te3Var)) {
                            if1Var = new if1(obj);
                        } else if (ve3VarB.equals(se3Var)) {
                            if1Var = kf1Var;
                        } else {
                            if (!(ve3VarB instanceof ue3)) {
                                q.j();
                                return;
                            }
                            if1Var = jf1Var;
                        }
                    } else {
                        if1Var = kf1Var;
                    }
                } else {
                    if1Var = kf1Var;
                }
            }
        }
        if (!(if1Var instanceof if1)) {
            if (if1Var.equals(kf1Var)) {
                return;
            }
            if (if1Var.equals(jf1Var)) {
                vr6.w$default(vr6.INSTANCE, "GClient", "Unable to migrate Google Drive backup metadata after account email change", null, 4, null);
                return;
            } else {
                q.j();
                return;
            }
        }
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "GClient", "Migrated Google Drive backup metadata after account email change", null, 4, null);
        Object obj2 = ((if1) if1Var).i;
        obj2.getClass();
        int i = 15;
        ve3 ve3VarB2 = cf3.b(re3.e(strM), new hj(obj2, i));
        if (ve3VarB2.equals(te3Var)) {
            vr6.i$default(vr6Var, "GClient", "Deleted old Google Drive backup metadata after account email change", null, 4, null);
            return;
        }
        if (!ve3VarB2.equals(se3Var)) {
            if (ve3VarB2 instanceof ue3) {
                vr6.w$default(vr6Var, "GClient", xs1.j("Unable to delete old Google Drive backup metadata after account email change: ", ((ue3) ve3VarB2).a.b), null, 4, null);
                return;
            } else {
                q.j();
                return;
            }
        }
        vr6.w$default(vr6Var, "GClient", "Skipped old Google Drive backup metadata cleanup because source changed during migration", null, 4, null);
        ve3 ve3VarB3 = cf3.b(re3.e(strM2), new hj(obj2, i));
        if (ve3VarB3.equals(te3Var)) {
            vr6.w$default(vr6Var, "GClient", "Rolled back Google Drive backup metadata migration because source changed during migration", null, 4, null);
            if (z) {
                vr6.i$default(vr6Var, "GClient", "Retrying Google Drive backup metadata migration after source changed", null, 4, null);
                t(str, false);
                return;
            }
            return;
        }
        if (ve3VarB3.equals(se3Var)) {
            vr6.w$default(vr6Var, "GClient", "Skipped Google Drive backup metadata migration rollback because destination changed", null, 4, null);
        } else if (ve3VarB3 instanceof ue3) {
            vr6.w$default(vr6Var, "GClient", xs1.j("Unable to roll back Google Drive backup metadata migration after source changed: ", ((ue3) ve3VarB3).a.b), null, 4, null);
        } else {
            q.j();
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0309  */
    /* JADX WARN: Code duplicated, block: B:118:0x0334  */
    /* JADX WARN: Code duplicated, block: B:120:0x033a  */
    /* JADX WARN: Code duplicated, block: B:121:0x034c  */
    /* JADX WARN: Code duplicated, block: B:125:0x0355 A[Catch: all -> 0x035b, TryCatch #5 {all -> 0x035b, blocks: (B:123:0x034f, B:125:0x0355, B:126:0x0358, B:130:0x035e, B:131:0x0368), top: B:165:0x034f }] */
    /* JADX WARN: Code duplicated, block: B:130:0x035e A[Catch: all -> 0x035b, TryCatch #5 {all -> 0x035b, blocks: (B:123:0x034f, B:125:0x0355, B:126:0x0358, B:130:0x035e, B:131:0x0368), top: B:165:0x034f }] */
    /* JADX WARN: Code duplicated, block: B:134:0x036f  */
    /* JADX WARN: Code duplicated, block: B:136:0x0375  */
    /* JADX WARN: Code duplicated, block: B:138:0x0396  */
    /* JADX WARN: Code duplicated, block: B:140:0x039d  */
    /* JADX WARN: Code duplicated, block: B:142:0x03cb  */
    /* JADX WARN: Code duplicated, block: B:143:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:145:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:149:0x03da  */
    /* JADX WARN: Code duplicated, block: B:151:0x03e4  */
    /* JADX WARN: Code duplicated, block: B:152:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:157:0x03f2  */
    /* JADX WARN: Code duplicated, block: B:159:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:165:0x034f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x02e3  */
    public final boolean u() throws JSONException, UserRecoverableAuthException, InterruptedException {
        String string;
        f80 f80Var;
        Long l;
        Long l2;
        ArrayList arrayList;
        g90 g90Var;
        l90 l90Var;
        String str;
        String str2;
        n58 n58Var;
        g90 g90Var2;
        String str3;
        String str4;
        Object bn6Var;
        if (!V.INSTANCE.getG()) {
            lz3 lz3Var = lz3.d;
            SwiftApp.Companion companion = SwiftApp.d;
            if (lz3Var.c(SwiftApp.Companion.c(), mz3.a) == 0) {
                Account accountA = hz3.a();
                if (accountA == null) {
                    vr6.e$default(vr6.INSTANCE, "GClient", "Failed to refresh Google Drive GMS access token: signed-in Google account is missing", null, 4, null);
                    return false;
                }
                String str5 = this.i;
                if (str5 != null) {
                    if (nq7.j0(str5)) {
                        str5 = null;
                    }
                    if (str5 != null) {
                        try {
                            SwiftApp.Companion companion2 = SwiftApp.d;
                            sz3.a(SwiftApp.Companion.c(), str5);
                            bn6Var = be8.a;
                        } catch (Throwable th) {
                            bn6Var = new bn6(th);
                        }
                        Throwable thA = en6.a(bn6Var);
                        if (thA != null) {
                            vr6.e$default(vr6.INSTANCE, "GClient", "Failed to clear stale Google Drive token", thA, null, 8, null);
                        }
                    }
                }
                try {
                    SwiftApp.Companion companion3 = SwiftApp.d;
                    String strB = sz3.b(SwiftApp.Companion.c(), accountA);
                    strB.getClass();
                    this.i = strB;
                    return !nq7.j0(strB);
                } catch (UserRecoverableAuthException e) {
                    this.i = null;
                    throw e;
                } catch (IOException e2) {
                    vr6.e$default(vr6.INSTANCE, "GClient", "Failed to refresh Google Drive GMS access token", e2, null, 8, null);
                    this.i = null;
                    return false;
                } catch (rz3 e3) {
                    vr6.e$default(vr6.INSTANCE, "GClient", "Failed to refresh Google Drive GMS access token", e3, null, 8, null);
                    this.i = null;
                    return false;
                } catch (Exception e4) {
                    vr6.e$default(vr6.INSTANCE, "GClient", "Failed to refresh Google Drive GMS access token", e4, null, 8, null);
                    this.i = null;
                    return false;
                }
            }
        }
        String str6 = gn5.a;
        vr6.i$default(vr6.INSTANCE, "NoGmsClient", "refreshToken", null, 4, null);
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("nogms_auth_state", null);
            if (string == null || string.length() == 0) {
                f80Var = null;
            } else {
                jb9.i(string, "jsonStr cannot be null or empty");
                JSONObject jSONObject = new JSONObject(string);
                f80 f80Var2 = new f80();
                f80Var2.a = jm1.u(jSONObject, "refreshToken");
                f80Var2.b = jm1.u(jSONObject, "scope");
                if (jSONObject.has("config")) {
                    f80Var2.c = l90.e(jSONObject.getJSONObject("config"));
                }
                if (jSONObject.has("mAuthorizationException")) {
                    f80Var2.g = z80.f(jSONObject.getJSONObject("mAuthorizationException"));
                }
                if (jSONObject.has("lastAuthorizationResponse")) {
                    f80Var2.d = g90.K(jSONObject.getJSONObject("lastAuthorizationResponse"));
                }
                if (jSONObject.has("mLastTokenResponse")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("mLastTokenResponse");
                    HashSet hashSet = n58.i;
                    if (!jSONObject2.has("request")) {
                        c6.f("token request not provided and not found in JSON");
                        return false;
                    }
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("request");
                    Set set = l58.k;
                    jb9.j(jSONObject3, "json object cannot be null");
                    f80Var2.e = new n58(new l58(l90.e(jSONObject3.getJSONObject("configuration")), jm1.t(jSONObject3, "clientId"), jm1.u(jSONObject3, "nonce"), jm1.t(jSONObject3, "grantType"), jm1.y(jSONObject3, "redirectUri"), jm1.u(jSONObject3, "scope"), jm1.u(jSONObject3, "authorizationCode"), jm1.u(jSONObject3, "refreshToken"), jm1.u(jSONObject3, "codeVerifier"), jm1.w(jSONObject3, "additionalParameters")), jm1.u(jSONObject2, "token_type"), jm1.u(jSONObject2, ClaimsRequest.ACCESS_TOKEN), jm1.p(jSONObject2, "expires_at"), jm1.u(jSONObject2, ClaimsRequest.ID_TOKEN), jm1.u(jSONObject2, "refresh_token"), jm1.u(jSONObject2, "scope"), jm1.w(jSONObject2, "additionalParameters"));
                }
                if (jSONObject.has("lastRegistrationResponse")) {
                    JSONObject jSONObject4 = jSONObject.getJSONObject("lastRegistrationResponse");
                    int i = fi6.j;
                    jb9.j(jSONObject4, "json cannot be null");
                    if (!jSONObject4.has("request")) {
                        c6.f("registration request not found in JSON");
                        return false;
                    }
                    JSONObject jSONObject5 = jSONObject4.getJSONObject("request");
                    int i2 = ei6.j;
                    jb9.j(jSONObject5, "json must not be null");
                    l90 l90VarE = l90.e(jSONObject5.getJSONObject("configuration"));
                    if (!jSONObject5.has("redirect_uris")) {
                        throw new JSONException("field \"redirect_uris\" not found in json object");
                    }
                    JSONArray jSONArray = jSONObject5.getJSONArray("redirect_uris");
                    ArrayList arrayList2 = new ArrayList();
                    if (jSONArray != null) {
                        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                            Object obj = jSONArray.get(i3);
                            obj.getClass();
                            arrayList2.add(Uri.parse(obj.toString()));
                        }
                    }
                    f80Var2.f = new fi6(new ei6(l90VarE, arrayList2, jm1.v(jSONObject5, "response_types"), jm1.v(jSONObject5, "grant_types"), jm1.u(jSONObject5, "subject_type"), jm1.y(jSONObject5, "jwks_uri"), jm1.o(jSONObject5, "jwks"), jm1.u(jSONObject5, "token_endpoint_auth_method"), jm1.w(jSONObject5, "additionalParameters")), jm1.t(jSONObject4, "client_id"), jm1.p(jSONObject4, "client_id_issued_at"), jm1.u(jSONObject4, "client_secret"), jm1.p(jSONObject4, "client_secret_expires_at"), jm1.u(jSONObject4, "registration_access_token"), jm1.y(jSONObject4, "registration_client_uri"), jm1.u(jSONObject4, "token_endpoint_auth_method"), jm1.w(jSONObject4, "additionalParameters"));
                }
                f80Var = f80Var2;
            }
            if (f80Var == null) {
                vr6.e$default(vr6.INSTANCE, "NoGmsClient", "refreshNoGmsToken: Null auth state!", null, 4, null);
                return false;
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ih6 ih6Var = new ih6();
            SwiftApp.Companion companion4 = SwiftApp.d;
            k90 k90Var = new k90(SwiftApp.Companion.c());
            cn5 cn5Var = new cn5(ih6Var, f80Var, countDownLatch);
            q34 q34Var = q34.d;
            Map map = Collections.EMPTY_MAP;
            jb9.j(map, "additional params cannot be null");
            z80 z80Var = (z80) f80Var.g;
            if (z80Var == null) {
                n58 n58Var2 = (n58) f80Var.e;
                if (n58Var2 == null || n58Var2.c == null) {
                    g90 g90Var3 = (g90) f80Var.d;
                    if (g90Var3 == null || g90Var3.A == null) {
                        l = null;
                    } else {
                        l = g90Var3.B;
                    }
                } else {
                    l = n58Var2.d;
                }
            } else {
                l = null;
            }
            if (l != null) {
                if (z80Var == null) {
                    n58 n58Var3 = (n58) f80Var.e;
                    if (n58Var3 == null || n58Var3.c == null) {
                        g90 g90Var4 = (g90) f80Var.d;
                        if (g90Var4 == null || g90Var4.A == null) {
                            l2 = null;
                        } else {
                            l2 = g90Var4.B;
                        }
                    } else {
                        l2 = n58Var3.d;
                    }
                } else {
                    l2 = null;
                }
                if (l2.longValue() > System.currentTimeMillis() + 60000) {
                    String strA = f80Var.a();
                    if (((z80) f80Var.g) == null) {
                        n58Var = (n58) f80Var.e;
                        if (n58Var != null) {
                            g90Var2 = (g90) f80Var.d;
                            if (g90Var2 != null) {
                                str3 = g90Var2.C;
                            } else {
                                str3 = null;
                            }
                        } else {
                            g90Var2 = (g90) f80Var.d;
                            if (g90Var2 != null) {
                                str3 = g90Var2.C;
                            } else {
                                str3 = null;
                            }
                        }
                    } else {
                        str3 = null;
                    }
                    cn5Var.a(strA, str3, null);
                } else if (((String) f80Var.a) == null) {
                    cn5Var.a(null, null, z80.g(w80.b, new IllegalStateException("No refresh token available and token have expired")));
                } else {
                    synchronized (f80Var.h) {
                        arrayList = (ArrayList) f80Var.i;
                        if (arrayList != null) {
                            arrayList.add(cn5Var);
                        } else {
                            ArrayList arrayList3 = new ArrayList();
                            f80Var.i = arrayList3;
                            arrayList3.add(cn5Var);
                            if (((String) f80Var.a) != null) {
                                l0.e("No refresh token available for refresh request");
                                return false;
                            }
                            g90Var = (g90) f80Var.d;
                            if (g90Var != null) {
                                l0.e("No authorization configuration available for refresh request");
                                return false;
                            }
                            e90 e90Var = g90Var.w;
                            l90Var = e90Var.a;
                            str = e90Var.b;
                            l90Var.getClass();
                            jb9.i(str, "clientId cannot be null or empty");
                            new LinkedHashMap();
                            jb9.i("refresh_token", "grantType cannot be null or empty");
                            if (TextUtils.isEmpty(null)) {
                                throw null;
                            }
                            str2 = (String) f80Var.a;
                            if (str2 != null) {
                                jb9.i(str2, "refresh token cannot be empty if defined");
                            }
                            Map mapE = ji8.e(map, l58.k);
                            jb9.j(str2, "refresh token must be specified for grant_type = refresh_token");
                            k90Var.c(new l58(l90Var, str, null, "refresh_token", null, null, null, str2, null, Collections.unmodifiableMap(mapE)), q34Var, new z28(f80Var, 6));
                        }
                    }
                }
            } else if (f80Var.a() != null) {
                String strA2 = f80Var.a();
                if (((z80) f80Var.g) == null) {
                    n58Var = (n58) f80Var.e;
                    if (n58Var != null || (str4 = n58Var.e) == null) {
                        g90Var2 = (g90) f80Var.d;
                        if (g90Var2 != null) {
                            str3 = g90Var2.C;
                        } else {
                            str3 = null;
                        }
                    } else {
                        str3 = str4;
                    }
                } else {
                    str3 = null;
                }
                cn5Var.a(strA2, str3, null);
            } else if (((String) f80Var.a) == null) {
                cn5Var.a(null, null, z80.g(w80.b, new IllegalStateException("No refresh token available and token have expired")));
            } else {
                synchronized (f80Var.h) {
                    try {
                        arrayList = (ArrayList) f80Var.i;
                        if (arrayList != null) {
                            arrayList.add(cn5Var);
                        } else {
                            ArrayList arrayList4 = new ArrayList();
                            f80Var.i = arrayList4;
                            arrayList4.add(cn5Var);
                            if (((String) f80Var.a) != null) {
                                l0.e("No refresh token available for refresh request");
                                return false;
                            }
                            g90Var = (g90) f80Var.d;
                            if (g90Var != null) {
                                l0.e("No authorization configuration available for refresh request");
                                return false;
                            }
                            e90 e90Var2 = g90Var.w;
                            l90Var = e90Var2.a;
                            str = e90Var2.b;
                            l90Var.getClass();
                            jb9.i(str, "clientId cannot be null or empty");
                            new LinkedHashMap();
                            jb9.i("refresh_token", "grantType cannot be null or empty");
                            if (TextUtils.isEmpty(null)) {
                                throw null;
                            }
                            str2 = (String) f80Var.a;
                            if (str2 != null) {
                                jb9.i(str2, "refresh token cannot be empty if defined");
                            }
                            Map mapE2 = ji8.e(map, l58.k);
                            jb9.j(str2, "refresh token must be specified for grant_type = refresh_token");
                            k90Var.c(new l58(l90Var, str, null, "refresh_token", null, null, null, str2, null, Collections.unmodifiableMap(mapE2)), q34Var, new z28(f80Var, 6));
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            countDownLatch.await();
            return ih6Var.a;
        } catch (ClassCastException unused) {
            string = null;
        }
    }

    public final ui1 v(String str, String str2, String str3) {
        Exception exc;
        List arrayList = new ArrayList();
        try {
            arrayList = o(str, str2, str3);
            exc = null;
        } catch (Exception e) {
            exc = e;
            Log.e("GClient", "searchRest: ", exc);
            if (exc instanceof vz3) {
                vr6.e$default(vr6.INSTANCE, "GClient", rs9.w((vz3) exc), null, 4, null);
            }
        }
        Log.d("GClient", "searchRest: Total drive files = " + arrayList.size());
        return new ui1(exc, arrayList.isEmpty() ? ov2.a : og1.b(arrayList));
    }

    public final CloudResult w(int i) {
        String strJ;
        Log.d("GClient", "startCheckAccessRest()");
        SwiftApp.Companion companion = SwiftApp.d;
        if (!ai8.i(SwiftApp.Companion.c())) {
            return qi1.a;
        }
        String strJ2 = qb1.j();
        if (strJ2 == null || strJ2.length() == 0) {
            try {
                yz3 yz3VarP = p(true);
                strJ = yz3VarP != null ? yz3VarP.a : null;
            } catch (Exception e) {
                ai6 ai6Var = nf1.a;
                if ((e instanceof UserRecoverableAuthException) || (e instanceof t04)) {
                    return new oi1(e, true);
                }
                vr6 vr6Var = vr6.INSTANCE;
                vr6.e$default(vr6Var, "GClient", "getMainFolderRest(createIfNeeded: true)", e, null, 8, null);
                if (e instanceof vz3) {
                    vr6.e$default(vr6Var, "GClient", rs9.w((vz3) e), null, 4, null);
                }
            } catch (VerifyError e2) {
                Const.g("Error: " + e2.getMessage(), true);
                throw null;
            }
        } else {
            strJ = qb1.j();
        }
        if (strJ == null || strJ.length() == 0) {
            vr6.e$default(vr6.INSTANCE, "GClient", "Null folder id!", null, 4, null);
            return pi1.a;
        }
        qb1.s(strJ);
        try {
            tz3 tz3VarH = this.h.h();
            a04 a04Var = tz3VarH.a;
            ni1 ni1Var = new ni1(a04Var != null ? a04Var.a : null, a04Var != null ? a04Var.b : null);
            String str = tz3VarH.b;
            if (str == null || str.length() == 0) {
                throw new IllegalStateException("Email address not received to uniquely identify the cloud drive!");
            }
            qb1.q(str);
            t(str, true);
            return new si1(ni1Var, str);
        } catch (Exception e3) {
            vr6 vr6Var2 = vr6.INSTANCE;
            vr6.e$default(vr6Var2, "GClient", "startCheckAccessRest: Error while checking access", e3, null, 8, null);
            boolean z = e3 instanceof vz3;
            if (z) {
                vr6.e$default(vr6Var2, "GClient", rs9.w((vz3) e3), null, 4, null);
            }
            if (z && ((vz3) e3).b == 401) {
                vr6.i$default(vr6Var2, "GClient", "Retrying authentication", null, 4, null);
                return (i >= 1 || !u()) ? new ti1(e3) : w(i + 1);
            }
            if (e3 instanceof UserRecoverableAuthException) {
                return new oi1(e3, true);
            }
            vr6.e$default(vr6Var2, "GClient", e3.toString(), null, 4, null);
            return new oi1(e3, false);
        } catch (VerifyError e4) {
            Const.g("Error: " + e4.getMessage(), true);
            throw null;
        }
    }
}
