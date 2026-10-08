package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.WindowInsetsAnimation;
import android.widget.FrameLayout;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.material.card.MaterialCardView;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.locks.ReentrantLock;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l39 implements jk8, be9 {
    public static l39 d;
    public static l39 e;
    public final /* synthetic */ int a;
    public Object b;
    public Object c;

    public l39(Context context, String str) {
        tr9 tr9VarB;
        this.a = 12;
        this.b = str;
        try {
            wq9.a();
            so8 so8Var = new so8();
            String str2 = "com.google.firebase.auth.api.crypto." + str;
            if (context == null) {
                throw new IllegalArgumentException("need an Android context");
            }
            so8Var.a = context;
            so8Var.b = "GenericIdpKeyset";
            so8Var.c = str2;
            so8Var.k = ar9.a;
            String str3 = "android-keystore://firebear_master_key_id." + str;
            if (!str3.startsWith("android-keystore://")) {
                throw new IllegalArgumentException("key URI must start with android-keystore://");
            }
            so8Var.d = str3;
            tr9VarB = so8Var.b();
            this.c = tr9VarB;
        } catch (IOException e2) {
            e = e2;
            u48.s("Exception encountered during crypto setup:\n", e.getMessage(), "FirebearCryptoHelper");
            tr9VarB = null;
        } catch (GeneralSecurityException e3) {
            e = e3;
            u48.s("Exception encountered during crypto setup:\n", e.getMessage(), "FirebearCryptoHelper");
            tr9VarB = null;
        }
    }

    public static byte[] c(byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        if (bArr2.length < 28) {
            m0.h("Ciphertext too short");
            return null;
        }
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(2, new SecretKeySpec(bArr, "AES"), new GCMParameterSpec(128, bArr2, 0, 12));
        if (bArr3.length != 0) {
            cipher.updateAAD(bArr3);
        }
        byte[] bArrDoFinal = cipher.doFinal(bArr2, 12, bArr2.length - 12);
        bArrDoFinal.getClass();
        return bArrDoFinal;
    }

    public static int f(int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            i3++;
            if (i3 == i2) {
                i4++;
                i3 = 0;
            } else if (i3 > i2) {
                i4++;
                i3 = 1;
            }
        }
        return i3 + 1 > i2 ? i4 + 1 : i4;
    }

    public static l39 i(String... strArr) {
        try {
            hy0[] hy0VarArr = new hy0[strArr.length];
            nw0 nw0Var = new nw0();
            for (int i = 0; i < strArr.length; i++) {
                dn4.u(nw0Var, strArr[i]);
                nw0Var.readByte();
                hy0VarArr[i] = nw0Var.o(nw0Var.b);
            }
            return new l39(6, (String[]) strArr.clone(), wx3.w(hy0VarArr));
        } catch (IOException e2) {
            e6.e(e2);
            return null;
        }
    }

    public static synchronized l39 k(Context context) {
        l39 l39Var;
        Context applicationContext = context.getApplicationContext();
        synchronized (l39.class) {
            l39Var = d;
            if (l39Var == null) {
                l39Var = new l39(applicationContext, 0);
                d = l39Var;
            }
        }
        return l39Var;
        return l39Var;
    }

    public static l39 o(Context context, String str) {
        l39 l39Var = e;
        if (l39Var == null || !Objects.equals((String) l39Var.b, str)) {
            e = new l39(context, str);
        }
        return e;
    }

    public void a(String str, long j, InputStream inputStream, long j2, lq2 lq2Var) throws Exception {
        n92 n92Var = (n92) this.c;
        inputStream.getClass();
        try {
            n92Var.i.o(str, j, inputStream, j2, lq2Var);
        } catch (Exception e2) {
            throw n92Var.k(e2);
        }
    }

    public byte[] b(byte[] bArr, byte[] bArr2) throws AEADBadTagException {
        List list = ((k48) this.b).b;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((i48) obj).d == 1) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            byte[] bArrA = ((i48) obj2).a();
            if (bArr.length >= bArrA.length && Arrays.equals(x50.k0(bArr, 0, bArrA.length), bArrA)) {
                arrayList2.add(obj2);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            i48 i48Var = (i48) it.next();
            try {
                return c(i48Var.b, x50.k0(bArr, i48Var.a().length, bArr.length), bArr2);
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new AEADBadTagException("Decryption failed");
    }

    public View d(int i, int i2, int i3, int i4) {
        kk8 kk8Var = (kk8) this.c;
        lk8 lk8Var = (lk8) this.b;
        int iO = lk8Var.o();
        int iS = lk8Var.s();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View viewW = lk8Var.w(i);
            int iH = lk8Var.h(viewW);
            int iA = lk8Var.A(viewW);
            kk8Var.b = iO;
            kk8Var.c = iS;
            kk8Var.d = iH;
            kk8Var.e = iA;
            if (i3 != 0) {
                kk8Var.a = i3;
                if (kk8Var.a()) {
                    return viewW;
                }
            }
            if (i4 != 0) {
                kk8Var.a = i4;
                if (kk8Var.a()) {
                    view = viewW;
                }
            }
            i += i5;
        }
        return view;
    }

    public vq2 e(String str, long j, InputStream inputStream, long j2, lq2 lq2Var) throws Exception {
        n92 n92Var = (n92) this.c;
        inputStream.getClass();
        try {
            vq2 vq2VarP = n92Var.i.p(str, j, (String) this.b, inputStream, j2, lq2Var);
            Log.d(n92Var.k, vq2VarP.toString());
            return vq2VarP;
        } catch (Exception e2) {
            throw n92Var.k(e2);
        }
    }

    public void g() {
        ((SparseIntArray) this.b).clear();
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 1:
                return (MaterialCardView) this.b;
            default:
                return (FrameLayout) this.b;
        }
    }

    public boolean h(View view) {
        kk8 kk8Var = (kk8) this.c;
        lk8 lk8Var = (lk8) this.b;
        int iO = lk8Var.o();
        int iS = lk8Var.s();
        int iH = lk8Var.h(view);
        int iA = lk8Var.A(view);
        kk8Var.b = iO;
        kk8Var.c = iS;
        kk8Var.d = iH;
        kk8Var.e = iA;
        kk8Var.a = 24579;
        return kk8Var.a();
    }

    public String j(InputStream inputStream, long j, lq2 lq2Var) throws Exception {
        n92 n92Var = (n92) this.c;
        inputStream.getClass();
        try {
            return n92Var.i.q(inputStream, j, lq2Var);
        } catch (Exception e2) {
            throw n92Var.k(e2);
        }
    }

    public synchronized void l() {
        ao7 ao7Var = (ao7) this.b;
        ReentrantLock reentrantLock = ao7Var.a;
        reentrantLock.lock();
        try {
            ao7Var.b.edit().clear().apply();
            reentrantLock.unlock();
            this.c = null;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public String m() {
        if (((tr9) this.c) == null) {
            Log.e("FirebearCryptoHelper", "KeysetManager failed to initialize - unable to get Public key");
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        nh nhVar = new nh(byteArrayOutputStream, 21);
        try {
            synchronized (((tr9) this.c)) {
                ((tr9) this.c).g().u().s(nhVar);
            }
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 8);
        } catch (IOException | GeneralSecurityException e2) {
            u48.s("Exception encountered when attempting to get Public Key:\n", e2.getMessage(), "FirebearCryptoHelper");
            return null;
        }
    }

    public String n(String str) {
        String str2;
        tr9 tr9Var = (tr9) this.c;
        if (tr9Var == null) {
            Log.e("FirebearCryptoHelper", "KeysetManager failed to initialize - unable to decrypt payload");
            return null;
        }
        try {
            synchronized (tr9Var) {
                ix0 ix0VarG = ((tr9) this.c).g();
                try {
                    if (po9.a()) {
                        throw new GeneralSecurityException("Cannot use non-FIPS-compliant HybridConfigurationV1 in FIPS mode");
                    }
                    str2 = new String(((ca9) ix0VarG.n(w13.e, ca9.class)).zza(Base64.decode(str, 8)), StandardCharsets.UTF_8);
                } catch (GeneralSecurityException e2) {
                    throw new IllegalStateException(e2);
                }
            }
            return str2;
        } catch (GeneralSecurityException e3) {
            u48.s("Exception encountered while decrypting bytes:\n", e3.getMessage(), "FirebearCryptoHelper");
            return null;
        }
    }

    public void p(do9 do9Var) {
        try {
            w(do9Var, (hp9) this.b);
        } catch (Throwable th) {
            ta9.i("BillingLogger", "Unable to log.", th);
        }
    }

    public void q(do9 do9Var, int i, long j) {
        try {
            fp9 fp9Var = (fp9) ((hp9) this.b).l();
            fp9Var.b();
            hp9.C((hp9) fp9Var.b, i);
            hp9 hp9Var = (hp9) fp9Var.a();
            this.b = hp9Var;
            if (j != 0) {
                fp9 fp9Var2 = (fp9) hp9Var.l();
                fp9Var2.b();
                hp9.E((hp9) fp9Var2.b, j);
                hp9Var = (hp9) fp9Var2.a();
            }
            w(do9Var, hp9Var);
        } catch (Throwable th) {
            ta9.i("BillingLogger", "Unable to log.", th);
        }
    }

    public void r(do9 do9Var, long j, boolean z) {
        try {
            co9 co9Var = (co9) do9Var.l();
            op9 op9Var = (op9) do9Var.u().l();
            op9Var.b();
            vp9.q((vp9) op9Var.b, z);
            co9Var.b();
            do9.p((do9) co9Var.b, (vp9) op9Var.a());
            do9 do9Var2 = (do9) co9Var.a();
            hp9 hp9Var = (hp9) this.b;
            if (j != 0) {
                fp9 fp9Var = (fp9) hp9Var.l();
                fp9Var.b();
                hp9.E((hp9) fp9Var.b, j);
                hp9Var = (hp9) fp9Var.a();
            }
            w(do9Var2, hp9Var);
        } catch (Throwable th) {
            ta9.i("BillingLogger", "Unable to log.", th);
        }
    }

    public void s(do9 do9Var, int i, long j, boolean z) {
        try {
            fp9 fp9Var = (fp9) ((hp9) this.b).l();
            fp9Var.b();
            hp9.C((hp9) fp9Var.b, i);
            this.b = (hp9) fp9Var.a();
            co9 co9Var = (co9) do9Var.l();
            op9 op9Var = (op9) do9Var.u().l();
            op9Var.b();
            vp9.q((vp9) op9Var.b, z);
            co9Var.b();
            do9.p((do9) co9Var.b, (vp9) op9Var.a());
            do9 do9Var2 = (do9) co9Var.a();
            hp9 hp9Var = (hp9) this.b;
            if (j != 0) {
                fp9 fp9Var2 = (fp9) hp9Var.l();
                fp9Var2.b();
                hp9.E((hp9) fp9Var2.b, j);
                hp9Var = (hp9) fp9Var2.a();
            }
            w(do9Var2, hp9Var);
        } catch (Throwable th) {
            ta9.i("BillingLogger", "Unable to log.", th);
        }
    }

    public void t(uo9 uo9Var) {
        try {
            bq9 bq9VarQ = dq9.q();
            bq9VarQ.c((hp9) this.b);
            bq9VarQ.b();
            dq9.t((dq9) bq9VarQ.b, uo9Var);
            ((be) this.c).g((dq9) bq9VarQ.a());
        } catch (Throwable th) {
            ta9.i("BillingLogger", "Unable to log.", th);
        }
    }

    public String toString() {
        switch (this.a) {
            case XmlPullParser.COMMENT /* 9 */:
                return "Bounds{lower=" + ((vc4) this.b) + " upper=" + ((vc4) this.c) + "}";
            default:
                return super.toString();
        }
    }

    public void u(pq9 pq9Var) {
        try {
            be beVar = (be) this.c;
            bq9 bq9VarQ = dq9.q();
            bq9VarQ.c((hp9) this.b);
            bq9VarQ.b();
            dq9.v((dq9) bq9VarQ.b, pq9Var);
            beVar.g((dq9) bq9VarQ.a());
        } catch (Throwable th) {
            ta9.i("BillingLogger", "Unable to log.", th);
        }
    }

    public void v(sq9 sq9Var) {
        if (sq9Var == null) {
            return;
        }
        try {
            bq9 bq9VarQ = dq9.q();
            bq9VarQ.c((hp9) this.b);
            bq9VarQ.b();
            dq9.p((dq9) bq9VarQ.b, sq9Var);
            ((be) this.c).g((dq9) bq9VarQ.a());
        } catch (Throwable th) {
            ta9.i("BillingLogger", "Unable to log.", th);
        }
    }

    public void w(do9 do9Var, hp9 hp9Var) {
        if (do9Var == null) {
            return;
        }
        try {
            bq9 bq9VarQ = dq9.q();
            bq9VarQ.c(hp9Var);
            bq9VarQ.b();
            dq9.r((dq9) bq9VarQ.b, do9Var);
            ((be) this.c).g((dq9) bq9VarQ.a());
        } catch (Throwable th) {
            ta9.i("BillingLogger", "Unable to log.", th);
        }
    }

    public void x(no9 no9Var, hp9 hp9Var) {
        try {
            bq9 bq9VarQ = dq9.q();
            bq9VarQ.c(hp9Var);
            bq9VarQ.b();
            dq9.s((dq9) bq9VarQ.b, no9Var);
            ((be) this.c).g((dq9) bq9VarQ.a());
        } catch (Throwable th) {
            ta9.i("BillingLogger", "Unable to log.", th);
        }
    }

    public /* synthetic */ l39(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public l39(Context context, int i) {
        String strD;
        this.a = i;
        switch (i) {
            case 10:
                String packageName = context.getPackageName();
                ly8.e(packageName);
                this.b = packageName;
                try {
                    byte[] bArrX = ly8.x(context, packageName);
                    if (bArrX == null) {
                        u48.s("single cert required: ", packageName, "FBA-PackageInfo");
                        this.c = null;
                    } else {
                        this.c = l73.f(bArrX);
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    u48.s("no pkg: ", packageName, "FBA-PackageInfo");
                    this.c = null;
                    return;
                }
                break;
            default:
                ao7 ao7VarA = ao7.a(context);
                this.b = ao7VarA;
                this.c = ao7VarA.b();
                String strD2 = ao7VarA.d("defaultGoogleSignInAccount");
                if (!TextUtils.isEmpty(strD2) && (strD = ao7VarA.d(ao7.f("googleSignInOptions", strD2))) != null) {
                    try {
                        GoogleSignInOptions.n(strD);
                    } catch (JSONException unused2) {
                        return;
                    }
                }
                break;
        }
    }

    public l39(Context context, hp9 hp9Var) {
        this.a = 11;
        be beVar = new be();
        try {
            ya8.b(context);
            beVar.b = ya8.a().c(oy0.e).a("PLAY_BILLING_LIBRARY", new dw2("proto"), new nh4(15));
        } catch (Throwable unused) {
            beVar.a = true;
        }
        this.c = beVar;
        this.b = hp9Var;
    }

    public l39(int i) {
        this.a = i;
        switch (i) {
            case 5:
                this.b = new SparseIntArray();
                this.c = new SparseIntArray();
                break;
            default:
                this.b = new int[16];
                this.c = new int[16];
                break;
        }
    }

    public l39(lk8 lk8Var) {
        this.a = 8;
        this.b = lk8Var;
        kk8 kk8Var = new kk8();
        kk8Var.a = 0;
        this.c = kk8Var;
    }

    public l39(n92 n92Var, String str) {
        this.a = 2;
        this.c = n92Var;
        this.b = str;
    }

    public l39(WindowInsetsAnimation.Bounds bounds) {
        this.a = 9;
        this.b = wu8.g(bounds);
        this.c = wu8.f(bounds);
    }

    public l39(k48 k48Var) {
        this.a = 7;
        this.b = k48Var;
        this.c = new SecureRandom();
    }
}
