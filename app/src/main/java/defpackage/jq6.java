package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Parcel;
import android.os.StrictMode;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.a;
import com.ferfalk.simplesearchview.SimpleSearchView;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import javax.crypto.KeyAgreement;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jq6 implements sr9, vc5, wg7, ug7, kw5, er5, ls5, ji3, dz7, w23, yi6, lk8, j58, dh5, xe9, t1a {
    public static jq6 c;
    public static final kq6 d = new kq6(0, false, false, 0, 0);
    public static final byte[] e = {48, 46, 2, 1, 0, 48, 5, 6, 3, 43, 101, 110, 4, 34, 4, 32};
    public static final byte[] f = {48, 42, 48, 5, 6, 3, 43, 101, 110, 3, 33, 0};
    public final /* synthetic */ int a;
    public Object b;

    public jq6(c79 c79Var) {
        this.a = 21;
        byte[] bArr = l79.a;
        if (c79Var == null) {
            f6.n("output");
            throw null;
        }
        this.b = c79Var;
        c79Var.a = this;
    }

    public static jq6 B() {
        Provider providerH = l73.H();
        if (providerH == null) {
            m0.h("Conscrypt is not available.");
            return null;
        }
        KeyFactory.getInstance("XDH", providerH);
        KeyAgreement.getInstance("XDH", providerH);
        jq6 jq6Var = new jq6(providerH, 1);
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("XDH", providerH);
        keyPairGenerator.initialize(255);
        KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
        byte[] encoded = keyPairGenerateKeyPair.getPrivate().getEncoded();
        if (encoded.length != 48) {
            m0.h("Invalid encoded private key length");
            return null;
        }
        if (!au9.b(e, encoded)) {
            m0.h("Invalid encoded private key prefix");
            return null;
        }
        Arrays.copyOfRange(encoded, 16, encoded.length);
        byte[] encoded2 = keyPairGenerateKeyPair.getPublic().getEncoded();
        if (encoded2.length != 44) {
            m0.h("Invalid encoded public key length");
            return null;
        }
        if (au9.b(f, encoded2)) {
            Arrays.copyOfRange(encoded2, 12, encoded2.length);
            return jq6Var;
        }
        m0.h("Invalid encoded public key prefix");
        return null;
    }

    public static synchronized jq6 i() {
        try {
            if (c == null) {
                c = new jq6(0);
            }
        } catch (Throwable th) {
            throw th;
        }
        return c;
    }

    public static String v(String str) {
        if (str == null || nq7.j0(str)) {
            c6.f("LegacySevenZipArchive: Empty archive entry name");
            return null;
        }
        if (nq7.a0(str, '\\')) {
            f6.g("LegacySevenZipArchive: Backslash path separators are not allowed: ".concat(str));
            return null;
        }
        if (nq7.y0(str, '/')) {
            f6.g("LegacySevenZipArchive: Absolute archive entry path is not allowed: ".concat(str));
            return null;
        }
        List listW0 = nq7.w0(nq7.I0(str, '/'), new char[]{'/'}, 6);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listW0) {
            String str2 = (String) obj;
            if (str2.length() > 0 && !str2.equals(".")) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            c6.f("LegacySevenZipArchive: Empty archive entry name");
            return null;
        }
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (pe4.d((String) it.next(), "..")) {
                    f6.g("LegacySevenZipArchive: Parent path traversal is not allowed: ".concat(str));
                    return null;
                }
            }
        }
        return el1.Y0(arrayList, "/", null, null, null, 62);
    }

    public static boolean x(String str, ArrayList arrayList) {
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (uq7.V(str, (String) it.next(), false)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.lk8
    public int A(View view) {
        return a.J(view) + ((ViewGroup.MarginLayoutParams) ((qg6) view.getLayoutParams())).bottomMargin;
    }

    public void C(int i, Object obj, e89 e89Var) {
        o69 o69Var = (o69) obj;
        c79 c79Var = (c79) this.b;
        c79Var.p(i, 2);
        c79Var.o(o69Var.a(e89Var));
        e89Var.c(o69Var, this);
    }

    @Override // defpackage.sr9
    public byte[] a(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException, NoSuchAlgorithmException, InvalidKeyException {
        Provider provider = (Provider) this.b;
        KeyFactory keyFactory = KeyFactory.getInstance("XDH", provider);
        if (bArr.length != 32) {
            d6.f("Invalid X25519 private key");
            return null;
        }
        PrivateKey privateKeyGeneratePrivate = keyFactory.generatePrivate(new PKCS8EncodedKeySpec(z85.N(e, bArr)));
        if (bArr2.length != 32) {
            d6.f("Invalid X25519 public key");
            return null;
        }
        PublicKey publicKeyGeneratePublic = keyFactory.generatePublic(new X509EncodedKeySpec(z85.N(f, bArr2)));
        KeyAgreement keyAgreement = KeyAgreement.getInstance("XDH", provider);
        keyAgreement.init(privateKeyGeneratePrivate);
        keyAgreement.doPhase(publicKeyGeneratePublic, true);
        return keyAgreement.generateSecret();
    }

    @Override // defpackage.yi6
    public void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 13:
                m91 m91Var = (m91) this.b;
                je4 je4Var = new je4((TaskCompletionSource) obj2);
                u84 u84Var = (u84) ((w84) ((km6) obj).p());
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken("com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService");
                int i = ya9.a;
                parcelObtain.writeInt(1);
                m91Var.writeToParcel(parcelObtain, 0);
                parcelObtain.writeStrongBinder(je4Var);
                u84Var.a(parcelObtain, 4);
                break;
            case 20:
                qh9 qh9Var = new qh9((TaskCompletionSource) obj2);
                vu9 vu9Var = (vu9) ((bt9) obj).p();
                qa6 qa6Var = (qa6) this.b;
                Parcel parcelObtain2 = Parcel.obtain();
                parcelObtain2.writeInterfaceToken(vu9Var.b);
                int i2 = ab9.a;
                parcelObtain2.writeStrongBinder(qh9Var);
                if (qa6Var == null) {
                    parcelObtain2.writeInt(0);
                } else {
                    parcelObtain2.writeInt(1);
                    qa6Var.writeToParcel(parcelObtain2, 0);
                }
                vu9Var.a(parcelObtain2, 1);
                break;
            default:
                ij9 ij9Var = new ij9((TaskCompletionSource) obj2);
                vu9 vu9Var2 = (vu9) ((bt9) obj).p();
                ta6 ta6Var = (ta6) this.b;
                Parcel parcelObtain3 = Parcel.obtain();
                parcelObtain3.writeInterfaceToken(vu9Var2.b);
                int i3 = ab9.a;
                parcelObtain3.writeStrongBinder(ij9Var);
                parcelObtain3.writeInt(1);
                ta6Var.writeToParcel(parcelObtain3, 0);
                vu9Var2.a(parcelObtain3, 2);
                break;
        }
    }

    @Override // defpackage.dz7
    public String b() {
        Exception exc = (Exception) this.b;
        String message = exc != null ? exc.getMessage() : null;
        return message == null ? "" : message;
    }

    @Override // defpackage.dz7
    public boolean c() {
        return ((Exception) this.b) != null;
    }

    @Override // defpackage.er5
    public Object construct() {
        return ((hd4) this.b).a();
    }

    @Override // defpackage.vc5
    public void d(fc5 fc5Var, boolean z) {
        ((fo) this.b).r(fc5Var);
    }

    @Override // defpackage.wg7
    public void e() {
        AppListActivity appListActivity = (AppListActivity) this.b;
        appListActivity.Y = true;
        appListActivity.A(true);
        ((Toolbar) ((tf2) appListActivity.p0().b.d).c).setVisibility(4);
        sz8.F(appListActivity.i0(), 300L);
        appListActivity.o0().setEnabled(false);
        tt ttVarQ0 = appListActivity.U();
        List list = appListActivity.l0().e.a;
        list.getClass();
        ttVarQ0.k = true;
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(ji.copy$default((ji) it.next(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, false, false, null, null, null, false, null, false, null, null, 134217727, null));
        }
        ttVarQ0.m = arrayList;
        ttVarQ0.l();
    }

    @Override // defpackage.wg7
    public void f() {
        AppListActivity appListActivity = (AppListActivity) this.b;
        appListActivity.Y = false;
        appListActivity.A(false);
        ExtendedFloatingActionButton extendedFloatingActionButtonI0 = appListActivity.i0();
        extendedFloatingActionButtonI0.getClass();
        sz8.e0(extendedFloatingActionButtonI0, true);
        appListActivity.o0().setEnabled(true);
        ((Toolbar) ((tf2) appListActivity.p0().b.d).c).setVisibility(0);
        tt ttVarQ0 = appListActivity.U();
        ttVarQ0.k = false;
        ttVarQ0.k(false, false);
    }

    @Override // defpackage.j58
    public void g(String str) {
        wj6 wj6Var = (wj6) this.b;
        wj6Var.i.c("Auth token changed, triggering auth token refresh", null, new Object[0]);
        wz5 wz5Var = wj6Var.c;
        wz5Var.y.c("Auth token refreshed.", null, new Object[0]);
        wz5Var.q = str;
        if (wz5Var.a()) {
            if (str != null) {
                wz5Var.j(false);
                return;
            }
            yc9.D(wz5Var.a(), "Must be connected to send unauth.", new Object[0]);
            yc9.D(wz5Var.q == null, "Auth token must not be set.", new Object[0]);
            wz5Var.n("unauth", false, Collections.EMPTY_MAP, null);
        }
    }

    @Override // defpackage.ea6
    public Object get() {
        return new sy2((ga6) ((id4) this.b).a);
    }

    @Override // defpackage.lk8
    public int h(View view) {
        return a.P(view) - ((ViewGroup.MarginLayoutParams) ((qg6) view.getLayoutParams())).topMargin;
    }

    public boolean k() {
        Object next;
        q63 q63Var = (q63) this.b;
        try {
            c73 c73VarL = q63Var.l(1);
            if (c73VarL == null) {
                throw new IllegalStateException(("LegacySevenZipArchive: Unable to open archive channel: " + q63Var).toString());
            }
            try {
                db7 db7VarB = eb7.b();
                db7VarB.t = c73VarL.a;
                eb7 eb7VarK = db7VarB.K();
                try {
                    Iterator it = new ArrayList(Arrays.asList(eb7VarK.c.g)).iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (((wa7) next).c);
                    wa7 wa7Var = (wa7) next;
                    if (wa7Var != null) {
                        InputStream inputStreamJ = eb7VarK.j(wa7Var);
                        try {
                            inputStreamJ.read();
                            inputStreamJ.close();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                rs9.c(inputStreamJ, th);
                                throw th2;
                            }
                        }
                    }
                    eb7VarK.close();
                    c73VarL.close();
                    return false;
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        rs9.c(eb7VarK, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    rs9.c(c73VarL, th5);
                    throw th6;
                }
            }
        } catch (Exception unused) {
            return true;
        }
    }

    @Override // defpackage.dz7
    public boolean l() {
        return false;
    }

    @Override // defpackage.ug7
    public void m(String str) {
        AppsBatchActivity appsBatchActivity = (AppsBatchActivity) this.b;
        r20 r20VarL0 = appsBatchActivity.a0();
        l20 l20Var = appsBatchActivity.m0;
        if (l20Var == null) {
            pe4.F("mAdapter");
            throw null;
        }
        r20VarL0.l(str, r20VarL0.q.a, l20Var.e.b);
    }

    @Override // defpackage.ls5
    public tv8 n(View view, tv8 tv8Var) {
        qv8 qv8Var = tv8Var.a;
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.b;
        if (!Objects.equals(coordinatorLayout.y, tv8Var)) {
            coordinatorLayout.y = tv8Var;
            boolean z = tv8Var.d() > 0;
            coordinatorLayout.G = z;
            coordinatorLayout.setWillNotDraw(!z && coordinatorLayout.getBackground() == null);
            if (!qv8Var.r()) {
                int childCount = coordinatorLayout.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = coordinatorLayout.getChildAt(i);
                    WeakHashMap weakHashMap = dl8.a;
                    if (childAt.getFitsSystemWindows() && ((hw1) childAt.getLayoutParams()).a != null && qv8Var.r()) {
                        break;
                    }
                }
            }
            coordinatorLayout.requestLayout();
        }
        return tv8Var;
    }

    @Override // defpackage.lk8
    public int o() {
        return ((a) this.b).getPaddingTop();
    }

    @Override // defpackage.kw5
    public boolean p(byte[] bArr) {
        for (kw5 kw5Var : (kw5[]) this.b) {
            if (kw5Var.p(bArr)) {
                return true;
            }
        }
        return false;
    }

    public boolean q() {
        return !c();
    }

    @Override // defpackage.vc5
    public boolean r(fc5 fc5Var) {
        Window.Callback callback = ((fo) this.b).t.getCallback();
        if (callback == null) {
            return true;
        }
        callback.onMenuOpened(108, fc5Var);
        return true;
    }

    @Override // defpackage.kw5
    public ev6 read(byte[] bArr) throws IOException {
        for (kw5 kw5Var : (kw5[]) this.b) {
            if (kw5Var.p(bArr)) {
                return kw5Var.read(bArr);
            }
        }
        y5.m("Unknown packet format received.");
        return null;
    }

    @Override // defpackage.lk8
    public int s() {
        a aVar = (a) this.b;
        return aVar.G - aVar.getPaddingBottom();
    }

    @Override // defpackage.ji3
    public Object t(li3 li3Var, kv1 kv1Var) {
        Object objT = ((c00) this.b).t(new ob2(li3Var), kv1Var);
        return objT == yx1.a ? objT : be8.a;
    }

    public void u(View view) {
        if (view.getParent() != null) {
            view.setVisibility(8);
        }
        ((fo0) this.b).a(0);
    }

    @Override // defpackage.lk8
    public View w(int i) {
        return ((a) this.b).F(i);
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new wl6((Resources) this.b, fe8.b);
    }

    @Override // defpackage.ug7
    public void z() {
        Context context;
        AppsBatchActivity appsBatchActivity = (AppsBatchActivity) this.b;
        int i = AppsBatchActivity.s0;
        SimpleSearchView simpleSearchViewJ0 = appsBatchActivity.j0();
        InputMethodManager inputMethodManager = (simpleSearchViewJ0 == null || (context = simpleSearchViewJ0.getContext()) == null) ? null : (InputMethodManager) context.getSystemService(InputMethodManager.class);
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(simpleSearchViewJ0.getWindowToken(), 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0036 A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:4:0x0009, B:6:0x000d, B:8:0x0019, B:18:0x0036, B:71:0x0171, B:13:0x0025, B:15:0x002d, B:19:0x003b, B:21:0x0041, B:22:0x0045, B:70:0x016d, B:72:0x0174, B:73:0x0177, B:74:0x0178, B:23:0x0049, B:25:0x004d, B:26:0x005a, B:28:0x0060, B:34:0x0076, B:36:0x007c, B:37:0x0080, B:57:0x013f, B:58:0x0142, B:66:0x0164, B:65:0x014f, B:67:0x0165, B:68:0x016a, B:69:0x016b, B:29:0x0066, B:33:0x006d), top: B:79:0x0009, inners: #3 }] */
    @Override // defpackage.xe9
    public Object zza() {
        ve9 ve9Var;
        ve9 we9Var;
        ve9 we9Var2;
        Context contextCreateDeviceProtectedStorageContext = (Context) this.b;
        Object obj = je9.f;
        synchronized (yc9.class) {
            try {
                ve9Var = yc9.a;
                if (ve9Var == null) {
                    String str = Build.TYPE;
                    String str2 = Build.TAGS;
                    if (!str.equals("eng") && !str.equals("userdebug")) {
                        ve9Var = re9.a;
                    } else if (str2.contains("dev-keys") || str2.contains("test-keys")) {
                        if (!contextCreateDeviceProtectedStorageContext.isDeviceProtectedStorage()) {
                            contextCreateDeviceProtectedStorageContext = contextCreateDeviceProtectedStorageContext.createDeviceProtectedStorageContext();
                        }
                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            StrictMode.allowThreadDiskWrites();
                            try {
                                File file = new File(contextCreateDeviceProtectedStorageContext.getDir("phenotype_hermetic", 0), "overrides.txt");
                                we9Var = file.exists() ? new we9(file) : re9.a;
                            } catch (RuntimeException e2) {
                                Log.e("HermeticFileOverrides", "no data dir", e2);
                                we9Var = re9.a;
                            }
                            if (we9Var.b()) {
                                Object objA = we9Var.a();
                                try {
                                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream((File) objA)));
                                    try {
                                        dg7 dg7Var = new dg7(0);
                                        HashMap map = new HashMap();
                                        while (true) {
                                            String line = bufferedReader.readLine();
                                            if (line == null) {
                                                break;
                                            }
                                            String[] strArrSplit = line.split(TokenAuthenticationScheme.SCHEME_DELIMITER, 3);
                                            if (strArrSplit.length != 3) {
                                                Log.e("HermeticFileOverrides", "Invalid: " + line);
                                            } else {
                                                String str3 = new String(strArrSplit[0]);
                                                String strDecode = Uri.decode(new String(strArrSplit[1]));
                                                String strDecode2 = (String) map.get(strArrSplit[2]);
                                                if (strDecode2 == null) {
                                                    String str4 = new String(strArrSplit[2]);
                                                    strDecode2 = Uri.decode(str4);
                                                    if (strDecode2.length() < 1024 || strDecode2 == str4) {
                                                        map.put(str4, strDecode2);
                                                    }
                                                }
                                                if (!dg7Var.containsKey(str3)) {
                                                    dg7Var.put(str3, new dg7(0));
                                                }
                                                ((dg7) dg7Var.get(str3)).put(strDecode, strDecode2);
                                            }
                                        }
                                        Log.w("HermeticFileOverrides", "Parsed " + objA.toString() + " for Android package " + contextCreateDeviceProtectedStorageContext.getPackageName());
                                        cc9 cc9Var = new cc9(dg7Var);
                                        bufferedReader.close();
                                        we9Var2 = new we9(cc9Var);
                                    } catch (Throwable th) {
                                        try {
                                            bufferedReader.close();
                                        } catch (Throwable th2) {
                                            try {
                                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                                            } catch (Exception unused) {
                                            }
                                        }
                                        throw th;
                                    }
                                } catch (IOException e3) {
                                    throw new RuntimeException(e3);
                                }
                            } else {
                                we9Var2 = re9.a;
                            }
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            ve9Var = we9Var2;
                        } catch (Throwable th3) {
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            throw th3;
                        }
                    } else {
                        ve9Var = re9.a;
                    }
                    yc9.a = ve9Var;
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        return ve9Var;
    }

    public /* synthetic */ jq6(c63 c63Var, d80 d80Var, int i) {
        this.a = i;
        this.b = d80Var;
    }

    public /* synthetic */ jq6(ty3 ty3Var) {
        this.a = 15;
        this.b = (ma9) ty3Var.a;
    }

    public /* synthetic */ jq6(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    public /* synthetic */ jq6(int i) {
        this.a = i;
    }

    public jq6(q63 q63Var) {
        this.a = 14;
        q63Var.getClass();
        this.b = q63Var;
    }

    public jq6(hd4 hd4Var, Type type) {
        this.a = 7;
        this.b = hd4Var;
    }

    @Override // defpackage.t1a
    public Object zza(String str) {
        return ((y1a) this.b).e(str, null);
    }
}
