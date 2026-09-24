package defpackage;

import android.content.SharedPreferences;
import com.google.gson.a;
import java.io.BufferedInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.OkHttpClient;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;
import org.swiftapps.swiftbackup.cloud.protocols.filen.FilenCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.filen.FilenSession;
import org.swiftapps.swiftbackup.cloud.protocols.filen.c;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sb3 implements jh1, k21 {
    public FilenCredentials d;
    public FilenSession e;
    public c f;
    public boolean i;
    public final OkHttpClient a = new OkHttpClient();
    public final String b = "FilenService";
    public final dd1 c = dd1.Filen;
    public final ConcurrentHashMap.KeySetView g = ConcurrentHashMap.newKeySet();
    public final gv7 h = new gv7(new ah(this, 23));

    @Override // defpackage.jh1
    public final boolean a() {
        return false;
    }

    @Override // defpackage.jh1
    public final void b() {
        this.d = null;
        this.e = null;
        this.f = null;
        FilenCredentials.Companion.getClass();
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString("filen_credentials", null).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    @Override // defpackage.jh1
    public final tc4 c(String str, t15 t15Var) {
        str.getClass();
        ob3 ob3VarE = u().e(str);
        bt3 bt3Var = null;
        nb3 nb3Var = ob3VarE instanceof nb3 ? (nb3) ob3VarE : null;
        if (nb3Var == null) {
            throw new NoSuchElementException("Filen file not found: ".concat(str));
        }
        if (t15Var != null && (t15Var.a != 0 || t15Var.b < nb3Var.d - 1)) {
            c6.f("Filen partial ranged downloads are not supported");
            return null;
        }
        FilenSession filenSession = this.e;
        if (filenSession != null) {
            return new tc4(new kb3(nb3Var, this.a, filenSession.getApiKey()), bt3Var, 2);
        }
        l0.e("Filen is not authenticated");
        return null;
    }

    @Override // defpackage.jh1
    public final CloudOperationsImpl$LoginResult d(boolean z) {
        return t("", true);
    }

    @Override // defpackage.jh1
    public final void e(c62 c62Var, String str, long j, cz czVar) {
        Object bn6Var;
        String strE0 = nq7.E0('/', nq7.I0(str, '/'), "");
        h(strE0);
        ob3 ob3VarE = u().e(strE0);
        ob3VarE.getClass();
        mb3 mb3Var = (mb3) ob3VarE;
        ob3 ob3VarE2 = u().e(str);
        FilenSession filenSession = this.e;
        if (filenSession == null) {
            l0.e("Filen is not authenticated");
            return;
        }
        jc3 jc3Var = new jc3(filenSession, (wa3) this.h.getValue(), this.a);
        ConcurrentHashMap.KeySetView keySetView = this.g;
        keySetView.getClass();
        keySetView.add(jc3Var);
        try {
            c cVarU = u();
            c cVarU2 = u();
            BufferedInputStream bufferedInputStreamA = c62Var.a();
            try {
                nb3 nb3VarC = jc3Var.c(bufferedInputStreamA, mb3Var.a, nq7.B0(str, '/'), j, new lm(czVar, 9));
                bufferedInputStreamA.close();
                if (ob3VarE2 != null) {
                    try {
                        cVarU.a(ob3VarE2);
                    } catch (Throwable th) {
                        try {
                            cVarU2.a(nb3VarC);
                            bn6Var = be8.a;
                        } catch (Throwable th2) {
                            bn6Var = new bn6(th2);
                        }
                        Throwable thA = en6.a(bn6Var);
                        if (thA == null) {
                            throw th;
                        }
                        th.addSuppressed(thA);
                        throw th;
                    }
                }
                keySetView.remove(jc3Var);
                u().b(mb3Var.a);
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    rs9.c(bufferedInputStreamA, th3);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            keySetView.remove(jc3Var);
            throw th5;
        }
    }

    @Override // defpackage.jh1
    public final pg1 f(String str) {
        long j;
        str.getClass();
        ob3 ob3VarE = u().e(str);
        if (ob3VarE == null) {
            return null;
        }
        String strE0 = nq7.E0('/', nq7.I0(str, '/'), "");
        pg1 pg1Var = new pg1(ob3VarE.getName(), nq7.I0(str, '/'));
        boolean z = ob3VarE instanceof nb3;
        nb3 nb3Var = z ? (nb3) ob3VarE : null;
        pg1Var.c = nb3Var != null ? nb3Var.d : 0L;
        if (z) {
            j = ((nb3) ob3VarE).g;
        } else {
            if (!(ob3VarE instanceof mb3)) {
                q.j();
                return null;
            }
            j = ((mb3) ob3VarE).d;
        }
        pg1Var.d = j;
        nb3 nb3Var2 = z ? (nb3) ob3VarE : null;
        if (nb3Var2 != null) {
            j = nb3Var2.h;
        }
        pg1Var.e = j;
        pg1Var.g = ob3VarE instanceof mb3;
        pg1Var.f = strE0;
        return pg1Var;
    }

    @Override // defpackage.jh1
    public final dd1 g() {
        return this.c;
    }

    @Override // defpackage.jh1
    public final void h(String str) {
        String strO;
        str.getClass();
        String strY0 = "";
        int i = 0;
        List listW0 = nq7.w0(str, new char[]{'/'}, 6);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listW0) {
            if (!nq7.j0((String) obj)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            List listA0 = fl1.A0(strY0, (String) it.next());
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : listA0) {
                if (!nq7.j0((String) obj2)) {
                    arrayList2.add(obj2);
                }
            }
            strY0 = el1.Y0(arrayList2, "/", null, null, null, 62);
            if (!r(strY0)) {
                c cVarU = u();
                synchronized (cVarU) {
                    try {
                        ArrayList arrayListD = c.d(strY0);
                        if (arrayListD.isEmpty()) {
                            throw new IllegalArgumentException("Cannot create Filen root");
                        }
                        String str2 = (String) el1.a1(arrayListD);
                        String strY1 = el1.Y0(el1.O0(1, arrayListD), "/", null, null, null, 62);
                        ob3 ob3VarE = cVarU.e(strY1);
                        mb3 mb3Var = ob3VarE instanceof mb3 ? (mb3) ob3VarE : null;
                        if (mb3Var == null) {
                            throw new NoSuchElementException("Filen parent not found: ".concat(strY1));
                        }
                        List listC = cVarU.c(mb3Var.a);
                        if (listC == null || !listC.isEmpty()) {
                            Iterator it2 = listC.iterator();
                            while (it2.hasNext()) {
                                if (uq7.P(((ob3) it2.next()).getName(), str2, true)) {
                                    throw new IllegalStateException(("Filen item already exists: " + strY0).toString());
                                }
                            }
                        }
                        byte[] bArr = hb3.a;
                        String strM = hb3.m(str2, cVarU.a);
                        ww4 ww4VarN = hb3.n(str2, cVarU.a);
                        int i2 = 9;
                        if (ww4VarN == null || !ww4VarN.isEmpty()) {
                            ListIterator listIterator = ww4VarN.listIterator(i);
                            while (true) {
                                vw4 vw4Var = (vw4) listIterator;
                                if (!vw4Var.hasNext()) {
                                    break;
                                }
                                String str3 = (String) vw4Var.next();
                                wa3 wa3Var = cVarU.b;
                                Map mapR0 = x65.r0(new pw5("parent", mb3Var.a), new pw5("nameHashed", str3));
                                String apiKey = cVarU.a.getApiKey();
                                wa3Var.getClass();
                                qj4 qj4VarX = wa3Var.b("POST", "/v3/dir/exists", mapR0, apiKey, null, new zk(i2)).i().x("exists");
                                if (qj4VarX != null && qj4VarX.e()) {
                                    throw new IllegalStateException(("Filen item already exists: " + strY0).toString());
                                }
                            }
                        }
                        String str4 = (String) cVarU.c.invoke();
                        String strI = new a().i(x65.r0(new pw5("name", str2), new pw5("creation", Long.valueOf(((Number) cVarU.e.invoke()).longValue()))));
                        wa3 wa3Var2 = cVarU.b;
                        Map mapR1 = x65.r0(new pw5("uuid", str4), new pw5("name", cVarU.g.e(strI, (byte[]) cVarU.d.invoke())), new pw5("nameHashed", strM), new pw5("parent", mb3Var.a));
                        String apiKey2 = cVarU.a.getApiKey();
                        wa3Var2.getClass();
                        fl4 fl4VarI = wa3Var2.b("POST", "/v3/dir/create", mapR1, apiKey2, null, new zk(i2)).i();
                        cVarU.b(mb3Var.a);
                        qj4 qj4VarX2 = fl4VarI.x("uuid");
                        if (qj4VarX2 != null && (strO = qj4VarX2.o()) != null) {
                            str4 = strO;
                        }
                        String str5 = mb3Var.a;
                        str4.getClass();
                        str5.getClass();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            i = 0;
        }
    }

    @Override // defpackage.jh1
    public final boolean i() {
        FilenCredentials.Companion.getClass();
        SharedPreferences sharedPreferences = cz4.f;
        if (sharedPreferences != null) {
            return sharedPreferences.contains("filen_credentials");
        }
        pe4.F("prefs");
        throw null;
    }

    @Override // defpackage.jh1
    public final void j(String str) {
        str.getClass();
        c cVarU = u();
        synchronized (cVarU) {
            ob3 ob3VarE = cVarU.e(str);
            if (ob3VarE == null) {
                return;
            }
            cVarU.a(ob3VarE);
        }
    }

    @Override // defpackage.jh1
    public final boolean k() {
        String string;
        Object bn6Var;
        FilenCredentials filenCredentials;
        FilenCredentials.Companion.getClass();
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("filen_credentials", null);
            if (string == null) {
                filenCredentials = null;
            } else {
                try {
                    gv7 gv7Var = w14.a;
                    a aVarC = w14.c();
                    gv7 gv7Var2 = y32.a;
                    bn6Var = (FilenCredentials) aVarC.c(y32.a(string), FilenCredentials.class);
                } catch (Throwable th) {
                    bn6Var = new bn6(th);
                }
                if (bn6Var instanceof bn6) {
                    bn6Var = null;
                }
                filenCredentials = (FilenCredentials) bn6Var;
            }
            this.d = filenCredentials;
            this.e = null;
            this.f = null;
            return filenCredentials != null && filenCredentials.isValid();
        } catch (ClassCastException unused) {
            string = null;
        }
    }

    @Override // defpackage.jh1
    public final ni1 l() {
        wa3 wa3Var = (wa3) this.h.getValue();
        FilenSession filenSession = this.e;
        if (filenSession == null) {
            l0.e("Filen is not authenticated");
            return null;
        }
        fl4 fl4VarI = wa3Var.a("/v3/user/info", filenSession.getApiKey()).i();
        qj4 qj4VarX = fl4VarI.x("storageUsed");
        Long lValueOf = qj4VarX != null ? Long.valueOf(qj4VarX.l()) : null;
        qj4 qj4VarX2 = fl4VarI.x("maxStorage");
        return new ni1(lValueOf, qj4VarX2 != null ? Long.valueOf(qj4VarX2.l()) : null);
    }

    @Override // defpackage.jh1
    public final boolean m() {
        FilenCredentials filenCredentials = this.d;
        return filenCredentials != null && filenCredentials.isValid();
    }

    @Override // defpackage.jh1
    public final String n() {
        return this.b;
    }

    @Override // defpackage.jh1
    public final String p() {
        String email;
        FilenSession filenSession = this.e;
        if (filenSession != null && (email = filenSession.getEmail()) != null) {
            return email;
        }
        FilenCredentials filenCredentials = this.d;
        if (filenCredentials != null) {
            return filenCredentials.getEmail();
        }
        l0.e("Filen credentials are not loaded");
        return null;
    }

    @Override // defpackage.jh1
    public final boolean r(String str) {
        str.getClass();
        return u().e(str) != null;
    }

    @Override // defpackage.jh1
    public final List s(String str) {
        List<ob3> listC;
        long j;
        str.getClass();
        c cVarU = u();
        synchronized (cVarU) {
            ob3 ob3VarE = cVarU.e(str);
            if (ob3VarE == null) {
                throw new NoSuchElementException("Filen path not found: ".concat(str));
            }
            if (!(ob3VarE instanceof mb3)) {
                throw new IllegalArgumentException("Filen path is not a directory: ".concat(str).toString());
            }
            listC = cVarU.c(((mb3) ob3VarE).a);
        }
        ArrayList arrayList = new ArrayList(hl1.G0(listC, 10));
        for (ob3 ob3Var : listC) {
            String name = ob3Var.getName();
            List listA0 = fl1.A0(nq7.I0(str, '/'), ob3Var.getName());
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : listA0) {
                if (!nq7.j0((String) obj)) {
                    arrayList2.add(obj);
                }
            }
            pg1 pg1Var = new pg1(name, el1.Y0(arrayList2, "/", null, null, null, 62));
            boolean z = ob3Var instanceof nb3;
            nb3 nb3Var = z ? (nb3) ob3Var : null;
            pg1Var.c = nb3Var != null ? nb3Var.d : 0L;
            if (z) {
                j = ((nb3) ob3Var).g;
            } else {
                if (!(ob3Var instanceof mb3)) {
                    q.j();
                    return null;
                }
                j = ((mb3) ob3Var).d;
            }
            pg1Var.d = j;
            nb3 nb3Var2 = z ? (nb3) ob3Var : null;
            if (nb3Var2 != null) {
                j = nb3Var2.h;
            }
            pg1Var.e = j;
            pg1Var.g = ob3Var instanceof mb3;
            arrayList.add(pg1Var);
        }
        return arrayList;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:70:0x0128  */
    /* JADX WARN: Code duplicated, block: B:78:0x0140  */
    /* JADX WARN: Code duplicated, block: B:82:0x014e  */
    public final CloudOperationsImpl$LoginResult t(String str, boolean z) {
        Object next;
        cb3 cb3Var;
        String logLabel;
        Exception exc;
        FilenSession filenSessionT;
        try {
            this.i = false;
            FilenCredentials filenCredentials = this.d;
            if (filenCredentials == null) {
                return CloudOperationsImpl$LoginResult.InvalidCredentials.INSTANCE;
            }
            FilenSession filenSessionRestorableSession = filenCredentials.restorableSession();
            gv7 gv7Var = this.h;
            if (filenSessionRestorableSession == null || (filenSessionT = new ai5((wa3) gv7Var.getValue()).z(filenSessionRestorableSession)) == null) {
                filenSessionT = new ai5((wa3) gv7Var.getValue()).t(filenCredentials.getEmail(), filenCredentials.getPassword(), str);
            }
            this.e = filenSessionT;
            this.f = new c(filenSessionT, (wa3) gv7Var.getValue());
            FilenCredentials filenCredentialsWithSession = filenCredentials.withSession(filenSessionT);
            if (z) {
                FilenCredentials.Companion.getClass();
                gb3.a(filenCredentialsWithSession);
            }
            this.d = filenCredentialsWithSession;
            return new CloudOperationsImpl$LoginResult.Success();
        } catch (Exception e) {
            le3 le3Var = new le3(new me3(h77.y0(e, new ou(6)), true, ab3.a));
            do {
                if (!le3Var.hasNext()) {
                    next = null;
                    break;
                }
                next = le3Var.next();
                exc = (Exception) next;
                if (exc instanceof lb3) {
                    break;
                }
            } while (!(exc instanceof ua3));
            Exception exc2 = (Exception) next;
            if (exc2 == null) {
                cb3Var = cb3.Unknown;
            } else if ((exc2 instanceof lb3) && ((lb3) exc2).a == 401) {
                cb3Var = cb3.InvalidSession;
            } else if (exc2 instanceof ua3) {
                String lowerCase = ((ua3) exc2).a.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                StringBuilder sb = new StringBuilder();
                int length = lowerCase.length();
                for (int i = 0; i < length; i++) {
                    char cCharAt = lowerCase.charAt(i);
                    if (Character.isLetterOrDigit(cCharAt)) {
                        sb.append(cCharAt);
                    }
                }
                switch (sb.toString()) {
                    case "enter2fa":
                        cb3Var = cb3.TwoFactorRequired;
                        break;
                    case "unauthenticated":
                        cb3Var = cb3.InvalidSession;
                        break;
                    case "wrong2fa":
                        cb3Var = cb3.TwoFactorWrong;
                        break;
                    case "wrongpassword":
                        cb3Var = cb3.InvalidCredentials;
                        break;
                    case "invalidapikey":
                    case "apikeyinvalid":
                    case "apikeynotfound":
                    case "apikeyexpired":
                        cb3Var = cb3.InvalidSession;
                        break;
                    case "emailorpasswordwrong":
                    case "invalidcredentials":
                        cb3Var = cb3.InvalidCredentials;
                        break;
                    default:
                        cb3Var = cb3.Unknown;
                        break;
                }
            } else {
                cb3Var = cb3.Unknown;
            }
            le3 le3Var2 = (le3) new me3(h77.y0(e, new hi(4)), true, rb3.a).iterator();
            bb3 bb3Var = (bb3) (!le3Var2.hasNext() ? null : le3Var2.next());
            db3 db3Var = bb3Var != null ? bb3Var.a : null;
            if (cb3Var != cb3.TwoFactorRequired && cb3Var != cb3.TwoFactorWrong) {
                vr6 vr6Var = vr6.INSTANCE;
                if (db3Var == null || (logLabel = db3Var.getLogLabel()) == null) {
                    logLabel = "an unknown stage";
                }
                vr6.e$default(vr6Var, this.b, "loginWithTwoFactorCode: Filen authentication failed during ".concat(logLabel), e, null, 8, null);
            }
            int i2 = qb3.a[cb3Var.ordinal()];
            if (i2 == 1 || i2 == 2) {
                this.i = true;
                return CloudOperationsImpl$LoginResult.InvalidCredentials.INSTANCE;
            }
            if (i2 == 3 || i2 == 4) {
                return CloudOperationsImpl$LoginResult.InvalidCredentials.INSTANCE;
            }
            if (i2 == 5) {
                return new CloudOperationsImpl$LoginResult.TempConnectionError(e);
            }
            q.j();
            return null;
        }
    }

    public final c u() {
        c cVar = this.f;
        if (cVar != null) {
            return cVar;
        }
        l0.e("Filen is not authenticated");
        return null;
    }
}
