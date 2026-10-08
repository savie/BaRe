package defpackage;

import android.util.Log;
import java.io.EOFException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONException;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.helpers.BoxRecentUploadCache$CachedBoxFile;
import org.swiftapps.swiftbackup.cloud.helpers.BoxRecentUploadCache$Data;
import org.swiftapps.swiftbackup.cloud.model.CloudResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kh0 extends tb1 {
    public final dd1 g;
    public final gv7 h;

    public kh0() {
        q9 q9Var = new q9(2);
        this.g = dd1.Box;
        this.h = new gv7(q9Var);
    }

    public static InputStream v(q63 q63Var, long j) throws IOException {
        boolean z = q63.d;
        InputStream inputStreamW = q63Var.w(true);
        while (j > 0) {
            try {
                long jSkip = inputStreamW.skip(j);
                if (jSkip > 0) {
                    j -= jSkip;
                } else {
                    if (inputStreamW.read() == -1) {
                        throw new EOFException("Unexpected EOF while seeking Box upload source");
                    }
                    j--;
                }
            } catch (Throwable th) {
                inputStreamW.close();
                throw th;
            }
        }
        return inputStreamW;
    }

    @Override // defpackage.tb1
    public final xh2 b(zv1 zv1Var) {
        return new oh0(this, zv1Var);
    }

    @Override // defpackage.tb1
    public final no2 c(fo2 fo2Var) {
        fo2Var.getClass();
        return new rh0(this, fo2Var);
    }

    @Override // defpackage.tb1
    public final ag8 d(rf8 rf8Var) {
        rf8Var.getClass();
        return new sj0(this, rf8Var);
    }

    @Override // defpackage.tb1
    public final boolean e(String str) {
        String strK = eq3.k(" (", str, ")");
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "BClient", "deleteTaggedBackups: Querying cloud for files tagged with ".concat(str), null, 4, null);
        ui1 ui1VarW = w(strK, null);
        List list = ui1VarW.a;
        Exception exc = ui1VarW.b;
        if (exc != null) {
            vr6.e$default(vr6Var, "BClient", xs1.j("deleteTaggedBackups: ", exc != null ? exc.getMessage() : null), null, 4, null);
            return false;
        }
        vr6.i$default(vr6Var, "BClient", fz5.j(list.size(), "deleteTaggedBackups: Cloud files to be deleted = "), null, 4, null);
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((pg1) it.next()).b);
        }
        vr6 vr6Var2 = vr6.INSTANCE;
        vr6.i$default(vr6Var2, "BClient", "deleteTaggedBackups: Deleting cloud files", null, 4, null);
        jq6 jq6VarC = new oh0(this, new jd1(eq3.p(arrayList))).c();
        if (jq6VarC.q()) {
            vr6.i$default(vr6Var2, "BClient", "deleteTaggedBackups: Successful", null, 4, null);
            return true;
        }
        Exception exc2 = (Exception) jq6VarC.b;
        vr6.e$default(vr6Var2, "BClient", xs1.j("deleteTaggedBackups: ", exc2 != null ? exc2.getMessage() : null), null, 4, null);
        return false;
    }

    @Override // defpackage.tb1
    public final ui1 f() {
        return w(".cls (" + qb1.e() + ")", fl1.A0("id", "name", "size", "created_at", "modified_at"));
    }

    @Override // defpackage.tb1
    public final dd1 g() {
        return this.g;
    }

    @Override // defpackage.tb1
    public final String h() {
        return "BClient";
    }

    @Override // defpackage.tb1
    public final ui1 j() {
        return w(".msg (" + qb1.e() + ")", fl1.A0("id", "name", "size", "created_at", "modified_at"));
    }

    @Override // defpackage.tb1
    public final ui1 k() {
        return w(".wal", fl1.A0("id", "name", "size", "created_at", "modified_at"));
    }

    @Override // defpackage.tb1
    public final ui1 l() {
        return w(".wfi", fl1.A0("id", "name", "size", "created_at", "modified_at"));
    }

    @Override // defpackage.tb1
    public final jm1 m() {
        try {
            String strJ = qb1.j();
            if (strJ == null || nq7.j0(strJ)) {
                strJ = null;
            }
            if (strJ == null) {
                throw new IllegalArgumentException("Box main folder id is not initialized");
            }
            ArrayList<av0> arrayList = t(strJ, fl1.A0("id", "name", "size", "created_at", "modified_at")).a;
            ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
            for (av0 av0Var : arrayList) {
                pg1 pg1Var = new pg1(av0Var.b, av0Var.a);
                pg1Var.c = av0Var.c;
                pg1Var.d = av0Var.d;
                pg1Var.e = av0Var.e;
                pg1Var.f = null;
                arrayList2.add(pg1Var);
            }
            return k55.h(arrayList2, qf1.OPAQUE);
        } catch (Exception e) {
            return new xa1(e);
        }
    }

    @Override // defpackage.tb1
    public final CloudResult n() {
        String strU;
        Log.d("BClient", "startCheckAccess()");
        SwiftApp.Companion companion = SwiftApp.d;
        if (!ai8.i(SwiftApp.Companion.c())) {
            return qi1.a;
        }
        String strJ = qb1.j();
        if (strJ == null || strJ.length() == 0) {
            try {
                strU = u();
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "BClient", "startCheckAccess: ".concat(dv0.a(e)), null, 4, null);
                strU = null;
            }
        } else {
            strU = qb1.j();
        }
        if (strU == null || strU.length() == 0) {
            vr6.e$default(vr6.INSTANCE, "BClient", "startCheckAccess: Null folder id!", null, 4, null);
            return pi1.a;
        }
        qb1.s(strU);
        try {
            zu0 zu0Var = zu0.a;
            sv0 sv0VarC = zu0.c();
            ni1 ni1Var = new ni1(sv0VarC.d, sv0VarC.c);
            String str = sv0VarC.b;
            if (str == null || str.length() == 0) {
                throw new IllegalStateException("startCheckAccess: Email address null to uniquely identify the cloud drive!");
            }
            qb1.q(str);
            return new si1(ni1Var, str);
        } catch (Exception e2) {
            u48.s("startCheckAccess: Error while checking access + ", e2.getMessage(), "BClient");
            vr6.e$default(vr6.INSTANCE, "BClient", "startCheckAccess: " + e2, null, 4, null);
            return new oi1(e2, false);
        }
    }

    public final void o(String str, OutputStream outputStream, long j, long j2) throws hv0, InterruptedIOException {
        str.getClass();
        outputStream.getClass();
        mv0 mv0VarS = s();
        mv0VarS.getClass();
        Request.Builder builderB = mv0.b(mv0VarS.a("/2.0/files/" + str + "/content"));
        StringBuilder sbT = dj7.t("bytes=", "-", j);
        sbT.append(j2);
        builderB.c.d("Range", sbT.toString());
        builderB.b();
        Request request = new Request(builderB);
        Response responseE = mv0VarS.e(request, mv0.j(request), null);
        try {
            InputStream inputStreamA = responseE.k.a();
            try {
                cy0.j(inputStreamA, outputStream, 8192);
                inputStreamA.close();
                responseE.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(inputStreamA, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                rs9.c(responseE, th3);
                throw th4;
            }
        }
    }

    public final void p(String str, FileOutputStream fileOutputStream) throws hv0, InterruptedIOException {
        str.getClass();
        mv0 mv0VarS = s();
        mv0VarS.getClass();
        HttpUrl.Builder builderG = mv0VarS.a("/2.0/files/" + str + "/thumbnail.jpg").g();
        builderG.d("min_width", String.valueOf(320));
        builderG.d("min_height", String.valueOf(320));
        builderG.d("max_width", String.valueOf(320));
        builderG.d("max_height", String.valueOf(320));
        Request.Builder builderB = mv0.b(builderG.e());
        builderB.b();
        Request request = new Request(builderB);
        Response responseE = mv0VarS.e(request, mv0.j(request), null);
        ResponseBody responseBody = responseE.k;
        int i = responseE.d;
        try {
            if (i == 202) {
                Long lN = mv0.n(responseE);
                String strN = responseBody.n();
                throw new hv0(i, strN, lN, mv0.c(request, i, strN));
            }
            InputStream inputStreamA = responseBody.a();
            try {
                cy0.j(inputStreamA, fileOutputStream, 8192);
                inputStreamA.close();
                responseE.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(inputStreamA, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                rs9.c(responseE, th3);
                throw th4;
            }
        }
    }

    public final String q(String str, String str2) {
        Object next;
        str2.getClass();
        Iterator it = t(str, fl1.A0("id", "name", "type")).a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((av0) next).b.equals(str2));
        av0 av0Var = (av0) next;
        if (av0Var != null) {
            String str3 = av0Var.a;
            if (str3.length() > 0) {
                return str3;
            }
        }
        return null;
    }

    public final String r(String str) {
        Object next;
        Iterator it = t("0", fl1.A0("id", "name", "type")).b.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((bv0) next).b.equals(str));
        bv0 bv0Var = (bv0) next;
        if (bv0Var != null) {
            String str2 = bv0Var.a;
            if (str2.length() > 0) {
                return str2;
            }
        }
        return null;
    }

    public final mv0 s() {
        return (mv0) this.h.getValue();
    }

    public final cv0 t(String str, List list) {
        bv0 bv0VarR;
        mv0 mv0VarS = s();
        mv0VarS.getClass();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String strY0 = el1.Y0(eq3.p(el1.f1("type", list)), ",", null, null, null, 62);
        String strOptString = null;
        do {
            HttpUrl.Builder builderG = mv0VarS.a("/2.0/folders/" + str + "/items").g();
            builderG.d("fields", strY0);
            builderG.d("usemarker", "true");
            builderG.d("limit", "1000");
            if (strOptString != null) {
                builderG.d("marker", strOptString);
            }
            Request.Builder builderB = mv0.b(builderG.e());
            builderB.b();
            JSONObject jSONObjectH = mv0.h(mv0VarS, new Request(builderB), null, 6);
            for (JSONObject jSONObject : mv0.m(jSONObjectH.optJSONArray("entries"))) {
                String strOptString2 = jSONObject.optString("type");
                if (pe4.d(strOptString2, "file")) {
                    av0 av0VarQ = mv0.q(jSONObject);
                    if (av0VarQ != null) {
                        arrayList.add(av0VarQ);
                    }
                } else if (pe4.d(strOptString2, "folder") && (bv0VarR = mv0.r(jSONObject)) != null) {
                    arrayList2.add(bv0VarR);
                }
            }
            strOptString = jSONObjectH.optString("next_marker");
            strOptString.getClass();
            if (nq7.j0(strOptString)) {
                strOptString = null;
            }
            if (strOptString == null) {
                break;
            }
        } while (!nq7.j0(strOptString));
        return new cv0(arrayList, arrayList2);
    }

    public final synchronized String u() {
        String strR;
        try {
            Log.d("BClient", "getOrCreateMainFolder");
            String mainCloudFolderName = this.g.getMainCloudFolderName();
            strR = r(mainCloudFolderName);
            if (strR != null) {
                Log.d("BClient", "Main folder already exists: ".concat(strR));
            } else {
                Log.d("BClient", "Main folder not found, Creating folder");
                strR = s().d(mainCloudFolderName).a;
                Log.d("BClient", "Main folder created: ".concat(strR));
            }
        } catch (Throwable th) {
            throw th;
        }
        return strR;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r3v8, types: [ov2] */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.util.ArrayList] */
    public final ui1 w(String str, List list) {
        Exception exc;
        ?? arrayList;
        ArrayList arrayList2 = new ArrayList();
        try {
            String strJ = qb1.j();
            if (strJ == null) {
                throw new IllegalArgumentException("Box main folder id is not initialized");
            }
            arrayList2.addAll(x(strJ, str, list != null ? el1.v1(new LinkedHashSet(el1.f1("parent", list))) : fl1.A0("id", "name", "size", "created_at", "modified_at", "parent")));
            Log.d("BClient", "search: Total files = " + arrayList2.size());
            exc = null;
            String strJ2 = qb1.j();
            ArrayList<av0> arrayList3 = new ArrayList();
            for (Object obj : arrayList2) {
                av0 av0Var = (av0) obj;
                if (nq7.Z(av0Var.b, str, false) && pe4.d(av0Var.f, strJ2)) {
                    arrayList3.add(obj);
                }
            }
            List list2 = gv0.a;
            ArrayList arrayList4 = new ArrayList(hl1.G0(arrayList3, 10));
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                arrayList4.add(((av0) it.next()).a);
            }
            gv0.c(arrayList4);
            BoxRecentUploadCache$Data boxRecentUploadCache$DataA = gv0.a();
            List<BoxRecentUploadCache$CachedBoxFile> items = boxRecentUploadCache$DataA != null ? boxRecentUploadCache$DataA.getItems() : null;
            if (items != null) {
                arrayList = new ArrayList();
                for (Object obj2 : items) {
                    BoxRecentUploadCache$CachedBoxFile boxRecentUploadCache$CachedBoxFile = (BoxRecentUploadCache$CachedBoxFile) obj2;
                    if (nq7.Z(boxRecentUploadCache$CachedBoxFile.getName(), str, false)) {
                        if (!arrayList3.isEmpty()) {
                            Iterator it2 = arrayList3.iterator();
                            do {
                                if (it2.hasNext()) {
                                }
                            } while (!((av0) it2.next()).a.equals(boxRecentUploadCache$CachedBoxFile.getId()));
                        }
                        arrayList.add(obj2);
                        break;
                    }
                }
            } else {
                arrayList = 0;
            }
            if (arrayList == 0) {
                arrayList = ov2.a;
            }
            ArrayList arrayList5 = new ArrayList(hl1.G0(arrayList3, 10));
            for (av0 av0Var2 : arrayList3) {
                pg1 pg1Var = new pg1(av0Var2.b, av0Var2.a);
                pg1Var.c = av0Var2.c;
                pg1Var.d = av0Var2.d;
                pg1Var.e = av0Var2.e;
                pg1Var.f = null;
                arrayList5.add(pg1Var);
            }
            ArrayList arrayList6 = new ArrayList(hl1.G0(arrayList, 10));
            for (BoxRecentUploadCache$CachedBoxFile boxRecentUploadCache$CachedBoxFile2 : arrayList) {
                pg1 pg1Var2 = new pg1(boxRecentUploadCache$CachedBoxFile2.getName(), boxRecentUploadCache$CachedBoxFile2.getId());
                pg1Var2.c = boxRecentUploadCache$CachedBoxFile2.getSize();
                pg1Var2.d = boxRecentUploadCache$CachedBoxFile2.getModifiedAtMillis();
                pg1Var2.e = boxRecentUploadCache$CachedBoxFile2.getModifiedAtMillis();
                pg1Var2.f = null;
                arrayList6.add(pg1Var2);
            }
            return new ui1(exc, el1.g1(arrayList5, arrayList6));
        } catch (Exception e) {
            exc = e;
            vr6.e$default(vr6.INSTANCE, "BClient", "search: ".concat(dv0.a(exc)), null, 4, null);
        }
    }

    public final ArrayList x(String str, String str2, List list) {
        mv0 mv0VarS = s();
        mv0VarS.getClass();
        ArrayList arrayList = new ArrayList();
        int iIntValue = 0;
        while (true) {
            List list2 = !list.isEmpty() ? list : null;
            String strY0 = list2 != null ? el1.Y0(eq3.p(el1.f1("parent", list2)), ",", null, null, null, 62) : null;
            HttpUrl.Builder builderG = mv0VarS.a("/2.0/search").g();
            builderG.d("query", str2);
            builderG.d("type", "file");
            builderG.d("ancestor_folder_ids", str);
            builderG.d("limit", "200");
            builderG.d("offset", String.valueOf(iIntValue));
            if (strY0 != null) {
                builderG.d("fields", strY0);
            }
            Request.Builder builderB = mv0.b(builderG.e());
            builderB.b();
            JSONObject jSONObjectH = mv0.h(mv0VarS, new Request(builderB), null, 6);
            List listM = mv0.m(jSONObjectH.optJSONArray("entries"));
            int size = listM.size();
            ArrayList arrayList2 = new ArrayList();
            Iterator it = listM.iterator();
            while (it.hasNext()) {
                av0 av0VarQ = mv0.q((JSONObject) it.next());
                if (av0VarQ != null) {
                    arrayList2.add(av0VarQ);
                }
            }
            el1.K0(arrayList2, arrayList);
            int iOptInt = jSONObjectH.optInt("total_count", -1);
            Integer numValueOf = Integer.valueOf(iOptInt);
            if (iOptInt < 0) {
                numValueOf = null;
            }
            int iOptInt2 = jSONObjectH.optInt("limit", 200);
            Integer numValueOf2 = iOptInt2 > 0 ? Integer.valueOf(iOptInt2) : null;
            iIntValue += numValueOf2 != null ? numValueOf2.intValue() : 200;
            if (size <= 0 || iIntValue > 10000 || (numValueOf != null && iIntValue >= numValueOf.intValue())) {
                break;
            }
        }
        return arrayList;
    }

    public final av0 y(String str, String str2, d86 d86Var, long j, jv0 jv0Var) throws JSONException, IOException {
        str2.getClass();
        mv0 mv0VarS = s();
        mv0VarS.getClass();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("name", str2);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("id", str);
        jSONObject.put("parent", jSONObject2);
        MultipartBody multipartBodyK = mv0VarS.k(str2, jSONObject, d86Var, j);
        HttpUrl.Builder builderG = mv0VarS.u("/api/2.0/files/content").g();
        builderG.d("fields", "id,name,size,modified_at");
        Request.Builder builderB = mv0.b(builderG.e());
        builderB.c("POST", multipartBodyK);
        av0 av0VarI = mv0.i(mv0VarS.g(new Request(builderB), false, jv0Var));
        if (av0VarI != null) {
            return av0VarI;
        }
        y5.m("Box upload response did not contain uploaded file");
        return null;
    }

    public final av0 z(String str, String str2, d86 d86Var, long j, jv0 jv0Var) throws JSONException, IOException {
        str.getClass();
        str2.getClass();
        mv0 mv0VarS = s();
        mv0VarS.getClass();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("name", str2);
        MultipartBody multipartBodyK = mv0VarS.k(str2, jSONObject, d86Var, j);
        HttpUrl.Builder builderG = mv0VarS.u("/api/2.0/files/" + str + "/content").g();
        builderG.d("fields", "id,name,size,modified_at");
        Request.Builder builderB = mv0.b(builderG.e());
        builderB.c("POST", multipartBodyK);
        av0 av0VarI = mv0.i(mv0VarS.g(new Request(builderB), false, jv0Var));
        if (av0VarI != null) {
            return av0VarI;
        }
        y5.m("Box upload version response did not contain uploaded file");
        return null;
    }
}
