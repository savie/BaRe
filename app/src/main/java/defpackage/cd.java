package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Looper;
import android.view.Choreographer;
import android.view.View;
import android.widget.LinearLayout;
import java.io.File;
import java.nio.channels.FileChannel;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class cd implements gw6, tl6, jk8, ji3, wi8, w23, oy5, yu9 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;

    public cd(int i) {
        this.a = i;
        switch (i) {
            case 7:
                this.b = new ArrayList();
                this.c = new ArrayList();
                break;
            case 8:
                this.b = new s14(null);
                this.c = new HashMap();
                break;
            case XmlPullParser.COMMENT /* 9 */:
                this.b = new oe(6, false);
                this.c = null;
                break;
            default:
                this.b = Choreographer.getInstance();
                this.c = Looper.myLooper();
                break;
        }
    }

    @Override // defpackage.yu9
    public byte[] a(byte[] bArr, int i) throws NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (i > 16) {
            throw new InvalidAlgorithmParameterException("outputLength must not be larger than 16");
        }
        Mac mac = Mac.getInstance("AESCMAC", (Provider) this.c);
        mac.init((SecretKeySpec) this.b);
        byte[] bArrDoFinal = mac.doFinal(bArr);
        return i == bArrDoFinal.length ? bArrDoFinal : Arrays.copyOf(bArrDoFinal, i);
    }

    @Override // defpackage.oy5
    public Object b(fi7 fi7Var) {
        String str = fi7Var.b;
        j87 j87VarH = (j87) this.c;
        fi7 fi7Var2 = (fi7) this.b;
        String str2 = fi7Var.a;
        String str3 = fi7Var2.a;
        if (!w13.h(str2, str3)) {
            j87.x.a(str2, "Re-routing the connection to host {}");
            j87VarH = j87VarH.h(fi7Var);
        }
        if (w13.h(str2, str3) && w13.h(str, fi7Var2.b)) {
            return null;
        }
        return j87VarH.a(str);
    }

    @Override // defpackage.wi8
    public boolean c() {
        return false;
    }

    public Object d(s26 s26Var) {
        HashMap map = (HashMap) this.c;
        s14 s14Var = (s14) map.get(s26Var);
        if (s14Var == null) {
            s14Var = new s14(s26Var);
            map.put(s26Var, s14Var);
        } else {
            s26Var.a();
        }
        s14 s14Var2 = s14Var.d;
        s14Var2.c = s14Var.c;
        s14Var.c.d = s14Var2;
        s14 s14Var3 = (s14) this.b;
        s14Var.d = s14Var3;
        s14 s14Var4 = s14Var3.c;
        s14Var.c = s14Var4;
        s14Var4.d = s14Var;
        s14Var.d.c = s14Var;
        ArrayList arrayList = s14Var.b;
        int size = arrayList != null ? arrayList.size() : 0;
        if (size > 0) {
            return s14Var.b.remove(size - 1);
        }
        return null;
    }

    public Object e(oe oeVar) {
        return (fg7) this.c;
    }

    public Object f(Object obj, Object obj2) {
        oe oeVar = (oe) this.b;
        oeVar.b = obj;
        oeVar.c = obj2;
        return e(oeVar);
    }

    public boolean g() {
        return (((ArrayList) this.b).isEmpty() && ((ArrayList) this.c).isEmpty()) ? false : true;
    }

    @Override // defpackage.ea6
    public Object get() {
        return new j76((Context) ((id4) this.b).a, (ni8) ((ca6) this.c).get());
    }

    @Override // defpackage.wi8
    public int getLength() {
        return 0;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (LinearLayout) this.b;
    }

    @Override // defpackage.wi8
    public Class getType() {
        return (Class) this.c;
    }

    @Override // defpackage.wi8
    public Object getValue() {
        return this.b;
    }

    @Override // defpackage.zv2
    public boolean h(Object obj, File file, ou5 ou5Var) {
        return ((kr0) this.c).h(new or0((nr0) this.b, ((BitmapDrawable) ((ll6) obj).get()).getBitmap()), file, ou5Var);
    }

    public void i(s26 s26Var, Object obj) {
        HashMap map = (HashMap) this.c;
        s14 s14Var = (s14) map.get(s26Var);
        if (s14Var == null) {
            s14Var = new s14(s26Var);
            s14Var.d = s14Var;
            s14 s14Var2 = (s14) this.b;
            s14Var.d = s14Var2.d;
            s14Var.c = s14Var2;
            s14Var2.d = s14Var;
            s14Var.d.c = s14Var;
            map.put(s26Var, s14Var);
        } else {
            s26Var.a();
        }
        if (s14Var.b == null) {
            s14Var.b = new ArrayList();
        }
        s14Var.b.add(obj);
    }

    @Override // defpackage.gw6
    public boolean k() {
        return ((gw6) this.b).k();
    }

    public Object l() {
        s14 s14Var = (s14) this.b;
        s14 s14Var2 = s14Var.d;
        while (true) {
            boolean zEquals = s14Var2.equals(s14Var);
            Object obj = s14Var2.a;
            if (zEquals) {
                return null;
            }
            ArrayList arrayList = s14Var2.b;
            int size = arrayList != null ? arrayList.size() : 0;
            Object objRemove = size > 0 ? s14Var2.b.remove(size - 1) : null;
            if (objRemove != null) {
                return objRemove;
            }
            s14 s14Var3 = s14Var2.d;
            s14Var3.c = s14Var2.c;
            s14Var2.c.d = s14Var3;
            ((HashMap) this.c).remove(obj);
            ((s26) obj).a();
            s14Var2 = s14Var2.d;
        }
    }

    public Object m() {
        wc9 wc9Var = (wc9) this.b;
        String str = (String) this.c;
        ContentResolver contentResolver = ((Context) wc9Var.b).getContentResolver();
        Uri uri = hb9.a;
        synchronized (hb9.class) {
            try {
                String str2 = null;
                if (hb9.e == null) {
                    hb9.d.set(false);
                    hb9.e = new HashMap(16, 1.0f);
                    hb9.j = new Object();
                    contentResolver.registerContentObserver(hb9.a, true, new eb9(null));
                } else if (hb9.d.getAndSet(false)) {
                    hb9.e.clear();
                    hb9.f.clear();
                    hb9.g.clear();
                    hb9.h.clear();
                    hb9.i.clear();
                    hb9.j = new Object();
                }
                Object obj = hb9.j;
                if (hb9.e.containsKey(str)) {
                    String str3 = (String) hb9.e.get(str);
                    if (str3 != null) {
                        str2 = str3;
                    }
                    return str2;
                }
                int length = hb9.k.length;
                Cursor cursorQuery = contentResolver.query(hb9.a, null, null, new String[]{str}, null);
                if (cursorQuery != null) {
                    try {
                        if (!cursorQuery.moveToFirst()) {
                            synchronized (hb9.class) {
                                try {
                                    if (obj == hb9.j) {
                                        hb9.e.put(str, null);
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            cursorQuery.close();
                            return null;
                        }
                        String string = cursorQuery.getString(1);
                        cursorQuery.close();
                        if (string != null && string.equals(null)) {
                            string = null;
                        }
                        synchronized (hb9.class) {
                            try {
                                if (obj == hb9.j) {
                                    hb9.e.put(str, string);
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        if (string != null) {
                            return string;
                        }
                    } catch (Throwable th3) {
                        cursorQuery.close();
                        throw th3;
                    }
                }
                return null;
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    public tg9 n() throws GeneralSecurityException {
        Integer num = (Integer) this.b;
        if (num == null) {
            m0.h("Key size is not set");
            return null;
        }
        if (((sg9) this.c) != null) {
            return new tg9(num.intValue(), (sg9) this.c);
        }
        m0.h("Variant is not set");
        return null;
    }

    public void o(int i) throws InvalidAlgorithmParameterException {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.b = Integer.valueOf(i);
    }

    @Override // defpackage.gw6
    public fw6 open(String str) {
        FileChannel fileChannel;
        FileChannel fileChannel2;
        str.getClass();
        mi2 mi2Var = (mi2) this.c;
        if (!str.equals(":memory:")) {
            str = ((vc2) mi2Var.c).a.getDatabasePath(str).getAbsolutePath();
            str.getClass();
        }
        boolean z = true;
        kz2 kz2Var = new kz2(str, (mi2Var.a || mi2Var.b || str.equals(":memory:")) ? false : true);
        ReentrantLock reentrantLock = kz2Var.a;
        reentrantLock.lock();
        c00 c00Var = kz2Var.b;
        if (c00Var != null) {
            try {
                c00Var.k();
            } catch (Throwable th) {
                th = th;
                z = false;
            }
        }
        try {
            try {
                if (mi2Var.b) {
                    throw new IllegalStateException("Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?");
                }
                fw6 fw6VarOpen = ((gw6) this.b).open(str);
                if (mi2Var.a) {
                    mi2.f(fw6VarOpen);
                    if (((vc2) mi2Var.c).g == co6.c) {
                        ly8.t("PRAGMA synchronous = NORMAL", fw6VarOpen);
                    } else {
                        ly8.t("PRAGMA synchronous = FULL", fw6VarOpen);
                    }
                    ((gu2) mi2Var.d).t(fw6VarOpen);
                } else {
                    try {
                        mi2Var.b = true;
                        mi2.a(mi2Var, fw6VarOpen);
                        mi2Var.b = false;
                    } catch (Throwable th2) {
                        mi2Var.b = false;
                        throw th2;
                    }
                }
                if (c00Var != null && (fileChannel2 = (FileChannel) c00Var.c) != null) {
                    try {
                        fileChannel2.close();
                        c00Var.c = null;
                    } catch (Throwable th3) {
                        c00Var.c = null;
                        throw th3;
                    }
                }
                reentrantLock.unlock();
                return fw6VarOpen;
            } catch (Throwable th4) {
                if (c00Var != null && (fileChannel = (FileChannel) c00Var.c) != null) {
                    try {
                        fileChannel.close();
                    } finally {
                        c00Var.c = null;
                    }
                }
                throw th4;
            }
        } catch (Throwable th5) {
            th = th5;
        }
        th = th5;
        try {
            if (z) {
                throw th;
            }
            throw new IllegalStateException("Unable to open database '" + str + "'. Was a proper path / name used in Room's database builder?", th);
        } catch (Throwable th6) {
            reentrantLock.unlock();
            throw th6;
        }
    }

    @Override // defpackage.tl6
    public int q(ou5 ou5Var) {
        return 2;
    }

    @Override // defpackage.wi8
    public void setValue(Object obj) {
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0072, code lost:
    
        if (r7.t(r8, r0) == r5) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [kv1] */
    /* JADX WARN: Type inference failed for: r1v3, types: [kv1] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    @Override // defpackage.ji3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object t(defpackage.li3 r8, defpackage.kv1 r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof defpackage.pi3
            if (r0 == 0) goto L13
            r0 = r9
            pi3 r0 = (defpackage.pi3) r0
            int r1 = r0.b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.b = r1
            goto L18
        L13:
            pi3 r0 = new pi3
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.a
            int r1 = r0.b
            r2 = 2
            r3 = 1
            r4 = 0
            yx1 r5 = defpackage.yx1.a
            if (r1 == 0) goto L3f
            if (r1 == r3) goto L31
            if (r1 != r2) goto L2b
            defpackage.lg7.H(r9)
            goto L75
        L2b:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r7)
            return r4
        L31:
            int r8 = r0.f
            sw6 r1 = r0.e
            li3 r3 = r0.d
            defpackage.lg7.H(r9)     // Catch: java.lang.Throwable -> L3d
            r6 = r8
            r8 = r3
            goto L5f
        L3d:
            r7 = move-exception
            goto L78
        L3f:
            defpackage.lg7.H(r9)
            sw6 r1 = new sw6
            ox1 r9 = r0.getContext()
            r1.<init>(r8, r9)
            java.lang.Object r9 = r7.b     // Catch: java.lang.Throwable -> L3d
            lb2 r9 = (defpackage.lb2) r9     // Catch: java.lang.Throwable -> L3d
            r0.d = r8     // Catch: java.lang.Throwable -> L3d
            r0.e = r1     // Catch: java.lang.Throwable -> L3d
            r6 = 0
            r0.f = r6     // Catch: java.lang.Throwable -> L3d
            r0.b = r3     // Catch: java.lang.Throwable -> L3d
            java.lang.Object r9 = r9.invoke(r1, r0)     // Catch: java.lang.Throwable -> L3d
            if (r9 != r5) goto L5f
            goto L74
        L5f:
            r1.releaseIntercepted()
            java.lang.Object r7 = r7.c
            ji3 r7 = (defpackage.ji3) r7
            r0.d = r4
            r0.e = r4
            r0.f = r6
            r0.b = r2
            java.lang.Object r7 = r7.t(r8, r0)
            if (r7 != r5) goto L75
        L74:
            return r5
        L75:
            be8 r7 = defpackage.be8.a
            return r7
        L78:
            r1.releaseIntercepted()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cd.t(li3, kv1):java.lang.Object");
    }

    public String toString() {
        switch (this.a) {
            case 8:
                StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
                s14 s14Var = (s14) this.b;
                s14 s14Var2 = s14Var.c;
                boolean z = false;
                while (!s14Var2.equals(s14Var)) {
                    sb.append('{');
                    sb.append(s14Var2.a);
                    sb.append(':');
                    ArrayList arrayList = s14Var2.b;
                    sb.append(arrayList != null ? arrayList.size() : 0);
                    sb.append("}, ");
                    s14Var2 = s14Var2.c;
                    z = true;
                }
                if (z) {
                    sb.delete(sb.length() - 2, sb.length());
                }
                sb.append(" )");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ cd(int i, boolean z) {
        this.a = i;
    }

    public cd(byte[] bArr, Provider provider) throws GeneralSecurityException {
        this.a = 16;
        if (u48.e(1)) {
            this.b = new SecretKeySpec(bArr, "AES");
            this.c = provider;
        } else {
            m0.h("Cannot use AES-CMAC in FIPS-mode, as BoringCrypto module is not available");
            throw null;
        }
    }

    public cd(l22 l22Var) {
        this.a = 10;
        ai5 ai5Var = new ai5(l22Var);
        this.c = new bb2(3);
        this.b = ai5Var;
    }

    public cd(fg7 fg7Var) {
        this.a = 9;
        this.b = new oe(6, false);
        this.c = fg7Var;
    }

    public cd(mi2 mi2Var, gw6 gw6Var) {
        this.a = 1;
        gw6Var.getClass();
        this.c = mi2Var;
        this.b = gw6Var;
    }

    public cd(j87 j87Var, fi7 fi7Var) {
        this.a = 13;
        this.c = j87Var;
        this.b = fi7Var;
    }

    public cd(iu iuVar, hk hkVar) {
        this.a = 5;
        iuVar.getClass();
        hkVar.getClass();
        this.b = iuVar;
        this.c = hkVar;
    }

    public /* synthetic */ cd(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
