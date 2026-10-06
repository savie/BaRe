package defpackage;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.internal.RecaptchaActivity;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ix0 implements t36, jk8, uc6, OnCompleteListener {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;

    public ix0(List list, Map map) throws GeneralSecurityException {
        this.a = 12;
        this.b = list;
        this.c = map;
        if (go9.a.a.get()) {
            HashSet hashSet = new HashSet();
            Iterator it = list.iterator();
            boolean z = false;
            while (it.hasNext()) {
                lb9 lb9Var = (lb9) it.next();
                int i = lb9Var.d;
                if (hashSet.contains(Integer.valueOf(i))) {
                    throw new GeneralSecurityException(xs1.h(i, "KeyID ", " is duplicated in the keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing."));
                }
                hashSet.add(Integer.valueOf(i));
                if (lb9Var.e) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            m0.h("Primary key id not found in keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing.");
            throw null;
        }
    }

    public static final ix0 h(rb rbVar) throws GeneralSecurityException {
        int i;
        bd9 bd9VarT0 = (bd9) rbVar.b;
        if (bd9VarT0 == null) {
            try {
                bd9VarT0 = nc8.t0((bd9VarT0 instanceof qs9 ? (mz9) ((qs9) bd9VarT0).a.b : (mz9) ((ot9) xs9.b.d(bd9VarT0)).b).c());
            } catch (GeneralSecurityException e) {
                throw new yt9("Parsing parameters failed in getProto(). You probably want to call some Tink register function for ".concat(String.valueOf(bd9VarT0)), e);
            }
        }
        ik6 ik6Var = new ik6();
        ArrayList<gb9> arrayList = (ArrayList) ik6Var.d;
        gb9 gb9Var = new gb9(bd9VarT0);
        ge geVar = ge.f;
        gb9Var.c = geVar;
        gb9Var.a = true;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((gb9) it.next()).a = false;
        }
        arrayList.add(gb9Var);
        if (ik6Var.b) {
            m0.h("KeysetHandle.Builder#build must only be called once");
            return null;
        }
        ik6Var.b = true;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i2 = 0; i2 < arrayList.size() - 1; i2++) {
            if (((gb9) arrayList.get(i2)).c == geVar && ((gb9) arrayList.get(i2 + 1)).c != geVar) {
                m0.h("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
                return null;
            }
        }
        HashSet hashSet = new HashSet();
        Integer numValueOf = null;
        for (gb9 gb9Var2 : arrayList) {
            gb9Var2.getClass();
            bd9 bd9Var = gb9Var2.b;
            ge geVar2 = gb9Var2.c;
            if (geVar2 == null) {
                m0.h("No ID was set (with withFixedId or withRandomId)");
                return null;
            }
            if (geVar2 == geVar) {
                int i3 = 0;
                while (true) {
                    if (i3 != 0 && !hashSet.contains(Integer.valueOf(i3))) {
                        break;
                    }
                    Charset charset = au9.a;
                    i3 = 0;
                    while (i3 == 0) {
                        byte[] bArrA = rt9.a(4);
                        i3 = (bArrA[3] & 255) | ((bArrA[0] & 255) << 24) | ((bArrA[1] & 255) << 16) | ((bArrA[2] & 255) << 8);
                    }
                }
                i = i3;
            } else {
                i = 0;
            }
            if (hashSet.contains(Integer.valueOf(i))) {
                throw new GeneralSecurityException(xs1.h(i, "Id ", " is used twice in the keyset"));
            }
            hashSet.add(Integer.valueOf(i));
            lb9 lb9Var = new lb9(ts9.b.a(bd9Var, bd9Var.a() ? Integer.valueOf(i) : null), 2, i, gb9Var2.a, false);
            if (gb9Var2.a) {
                if (numValueOf != null) {
                    m0.h("Two primaries were set");
                    return null;
                }
                numValueOf = Integer.valueOf(i);
            }
            arrayList2.add(lb9Var);
        }
        if (numValueOf == null) {
            m0.h("No primary was set");
            return null;
        }
        ix0 ix0Var = new ix0(arrayList2, (HashMap) ik6Var.c);
        ix0Var.q();
        return ix0Var;
    }

    public static final ix0 i(tr9 tr9Var, xr9 xr9Var, byte[] bArr) throws GeneralSecurityException, IOException {
        ByteArrayInputStream byteArrayInputStream = (ByteArrayInputStream) tr9Var.b;
        try {
            f79 f79Var = f79.a;
            gy9 gy9VarT = gy9.t(byteArrayInputStream, f79Var);
            byteArrayInputStream.close();
            if (gy9VarT.x().d() == 0) {
                m0.h("empty keyset");
                return null;
            }
            try {
                uz9 uz9VarW = uz9.w(xr9Var.a(gy9VarT.x().w(), bArr), f79Var);
                if (uz9VarW == null || uz9VarW.t() <= 0) {
                    throw new GeneralSecurityException("empty keyset");
                }
                return j(uz9VarW);
            } catch (p79 unused) {
                m0.h("invalid keyset, corrupted key material");
                return null;
            }
        } catch (Throwable th) {
            byteArrayInputStream.close();
            throw th;
        }
    }

    public static final ix0 j(uz9 uz9Var) throws GeneralSecurityException {
        Object ns9Var;
        boolean z;
        if (uz9Var.t() <= 0) {
            m0.h("empty keyset");
            return null;
        }
        ArrayList arrayList = new ArrayList(uz9Var.t());
        for (sz9 sz9Var : uz9Var.B()) {
            int iT = sz9Var.t();
            try {
                ns9Var = k(sz9Var);
                z = false;
            } catch (GeneralSecurityException e) {
                if (go9.a.a.get()) {
                    throw e;
                }
                ns9Var = new ns9(v(sz9Var));
                z = true;
            }
            if (go9.a.a.get() && !t(sz9Var.z())) {
                m0.h("Parsing of a single key failed (wrong status) and Tink is configured via validateKeysetsOnParsing to reject such keysets.");
                return null;
            }
            arrayList.add(new lb9(ns9Var, sz9Var.z(), iT, iT == uz9Var.z(), z));
        }
        return new ix0(Collections.unmodifiableList(arrayList), new HashMap());
    }

    public static vm4 k(sz9 sz9Var) {
        pt9 pt9VarV = v(sz9Var);
        xs9 xs9Var = xs9.b;
        ut9 ut9Var = (ut9) xs9Var.a.get();
        ut9Var.getClass();
        return !ut9Var.b.containsKey(new wt9(pt9.class, pt9VarV.b)) ? new ns9(pt9VarV) : xs9Var.a(pt9VarV);
    }

    public static p49 o(FirebaseApp firebaseApp, x59 x59Var) {
        ly8.h(firebaseApp);
        ly8.h(x59Var);
        ArrayList arrayList = new ArrayList();
        w1a w1aVar = new w1a();
        ly8.e("firebase");
        String str = x59Var.a;
        ly8.e(str);
        w1aVar.a = str;
        w1aVar.b = "firebase";
        w1aVar.f = x59Var.b;
        w1aVar.c = x59Var.d;
        Uri uri = !TextUtils.isEmpty(x59Var.e) ? Uri.parse(x59Var.e) : null;
        if (uri != null) {
            w1aVar.d = uri.toString();
            w1aVar.e = uri;
        }
        w1aVar.n = x59Var.c;
        w1aVar.p = null;
        w1aVar.k = x59Var.g;
        arrayList.add(w1aVar);
        List list = (List) x59Var.f.b;
        if (list != null && !list.isEmpty()) {
            for (int i = 0; i < list.size(); i++) {
                d69 d69Var = (d69) list.get(i);
                w1a w1aVar2 = new w1a();
                ly8.h(d69Var);
                w1aVar2.a = d69Var.a;
                String str2 = d69Var.d;
                ly8.e(str2);
                w1aVar2.b = str2;
                w1aVar2.c = d69Var.b;
                String str3 = d69Var.c;
                Uri uri2 = !TextUtils.isEmpty(str3) ? Uri.parse(str3) : null;
                if (uri2 != null) {
                    w1aVar2.d = uri2.toString();
                    w1aVar2.e = uri2;
                }
                w1aVar2.f = d69Var.g;
                w1aVar2.k = d69Var.f;
                w1aVar2.n = false;
                w1aVar2.p = d69Var.e;
                arrayList.add(w1aVar2);
            }
        }
        p49 p49Var = new p49(firebaseApp, arrayList);
        p49Var.p = new l59(x59Var.i, x59Var.h);
        p49Var.q = x59Var.j;
        p49Var.r = x59Var.k;
        p49Var.v(od2.A(x59Var.l));
        List arrayList2 = x59Var.m;
        if (arrayList2 == null) {
            arrayList2 = new ArrayList();
        }
        p49Var.x = arrayList2;
        return p49Var;
    }

    public static boolean t(int i) {
        int i2 = qa9.a[dj7.A(i)];
        return i2 == 1 || i2 == 2 || i2 == 3;
    }

    public static pt9 v(sz9 sz9Var) {
        return pt9.a(sz9Var.y().A(), sz9Var.y().z(), sz9Var.y().x(), sz9Var.B(), sz9Var.B() == r0a.RAW ? null : Integer.valueOf(sz9Var.t()));
    }

    @Override // defpackage.uc6
    public void a(tc6 tc6Var, int i) throws IOException {
        int[] iArr = (int[]) this.c;
        try {
            tc6Var.read((byte[]) this.b, iArr[0], i);
            iArr[0] = iArr[0] + i;
        } finally {
            tc6Var.close();
        }
    }

    public synchronized void b(wy5 wy5Var) {
        try {
            wy5 wy5Var2 = (wy5) this.c;
            if (wy5Var2 != null) {
                wy5Var2.c = wy5Var;
                this.c = wy5Var;
            } else {
                if (((wy5) this.b) != null) {
                    throw new IllegalStateException("Head present, but no tail");
                }
                this.c = wy5Var;
                this.b = wy5Var;
            }
            notifyAll();
        } catch (Throwable th) {
            throw th;
        }
    }

    public Object c(String str) {
        HashMap map = (HashMap) this.c;
        if (map.containsKey(str)) {
            return map.get(str);
        }
        throw new lj4(eq3.k("The property ", str, " is not available in this runtime"));
    }

    @Override // defpackage.t36
    public boolean d(Preference preference) {
        ((PreferenceGroup) this.b).k0 = Integer.MAX_VALUE;
        f46 f46Var = (f46) this.c;
        Handler handler = f46Var.h;
        w7 w7Var = f46Var.i;
        handler.removeCallbacks(w7Var);
        handler.post(w7Var);
        return true;
    }

    public synchronized List e(String str) {
        List arrayList;
        try {
            if (!((ArrayList) this.b).contains(str)) {
                ((ArrayList) this.b).add(str);
            }
            arrayList = (List) ((HashMap) this.c).get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                ((HashMap) this.c).put(str, arrayList);
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public synchronized ArrayList f(Class cls, Class cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = ((ArrayList) this.b).iterator();
        while (it.hasNext()) {
            List<rl6> list = (List) ((HashMap) this.c).get((String) it.next());
            if (list != null) {
                for (rl6 rl6Var : list) {
                    if ((rl6Var.a.isAssignableFrom(cls) && cls2.isAssignableFrom(rl6Var.b)) && !arrayList.contains(rl6Var.b)) {
                        arrayList.add(rl6Var.b);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized wy5 g() {
        wy5 wy5Var;
        wy5Var = (wy5) this.b;
        if (wy5Var != null) {
            wy5 wy5Var2 = wy5Var.c;
            this.b = wy5Var2;
            if (wy5Var2 == null) {
                this.c = null;
            }
        }
        return wy5Var;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 6:
                return (CircularProgressIndicator) this.b;
            default:
                return (Toolbar) this.b;
        }
    }

    public Task l(FirebaseApp firebaseApp, p49 p49Var, d80 d80Var, String str, yb9 yb9Var) {
        ly8.h(firebaseApp);
        ly8.h(d80Var);
        ly8.h(yb9Var);
        ArrayList arrayList = p49Var.f;
        if (arrayList != null && arrayList.contains(d80Var.n())) {
            return Tasks.forException(y49.a(new Status(17015, null, null, null)));
        }
        if (d80Var instanceof au2) {
            au2 au2Var = (au2) d80Var;
            if (TextUtils.isEmpty(au2Var.c)) {
                f49 f49Var = new f49(au2Var, str);
                f49Var.c = firebaseApp;
                f49Var.d = p49Var;
                f49Var.e = yb9Var;
                f49Var.f = yb9Var;
                return m(f49Var);
            }
            j49 j49Var = new j49(au2Var);
            j49Var.c = firebaseApp;
            j49Var.d = p49Var;
            j49Var.e = yb9Var;
            j49Var.f = yb9Var;
            return m(j49Var);
        }
        if (!(d80Var instanceof xz5)) {
            i49 i49Var = new i49(d80Var);
            i49Var.c = firebaseApp;
            i49Var.d = p49Var;
            i49Var.e = yb9Var;
            i49Var.f = yb9Var;
            return m(i49Var);
        }
        o59.a.clear();
        h49 h49Var = new h49((xz5) d80Var);
        h49Var.c = firebaseApp;
        h49Var.d = p49Var;
        h49Var.e = yb9Var;
        h49Var.f = yb9Var;
        return m(h49Var);
    }

    public Task m(h59 h59Var) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        Executor executor = (Executor) this.c;
        i59 i59Var = new i59();
        i59Var.a = this;
        i59Var.b = h59Var;
        i59Var.c = taskCompletionSource;
        executor.execute(i59Var);
        return taskCompletionSource.getTask();
    }

    public Object n(aa9 aa9Var, Class cls) throws GeneralSecurityException {
        List list = (List) this.b;
        uz9 uz9VarX = x();
        int i = wd9.a;
        int iZ = uz9VarX.z();
        boolean z = true;
        int i2 = 0;
        boolean z2 = false;
        for (sz9 sz9Var : uz9VarX.B()) {
            if (sz9Var.z() == 2) {
                if (!sz9Var.C()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(sz9Var.t())));
                }
                if (sz9Var.B() == r0a.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(sz9Var.t())));
                }
                if (sz9Var.z() == 1) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(sz9Var.t())));
                }
                if (sz9Var.t() == iZ) {
                    if (z2) {
                        m0.h("keyset contains multiple primary keys");
                        return null;
                    }
                    z2 = true;
                }
                if (sz9Var.y().x() != 4) {
                    z = false;
                }
                i2++;
            }
        }
        if (i2 == 0) {
            m0.h("keyset must contain at least one ENABLED key");
            return null;
        }
        if (!z2 && !z) {
            m0.h("keyset doesn't contain a valid primary key");
            return null;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (((lb9) list.get(i3)).f || !t(((lb9) list.get(i3)).b)) {
                throw new GeneralSecurityException("Key parsing of key with index " + i3 + " and type_url " + uz9VarX.u(i3).y().A() + " failed, unable to get primitive");
            }
        }
        return aa9Var.d(this, cls);
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        RecaptchaActivity recaptchaActivity = (RecaptchaActivity) this.b;
        String str = (String) this.c;
        ec9 ec9Var = RecaptchaActivity.c;
        if (recaptchaActivity.getPackageManager().resolveActivity(new Intent("android.intent.action.VIEW"), 0) == null) {
            Log.e("RecaptchaActivity", "Device cannot resolve intent for: android.intent.action.VIEW");
            recaptchaActivity.o();
            return;
        }
        List<ResolveInfo> listQueryIntentServices = recaptchaActivity.getPackageManager().queryIntentServices(new Intent("android.support.customtabs.action.CustomTabsService"), 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            Intent intent = new Intent("android.intent.action.VIEW", (Uri) task.getResult());
            intent.putExtra("com.android.browser.application_id", str);
            intent.addFlags(1073741824);
            intent.addFlags(268435456);
            recaptchaActivity.startActivity(intent);
            return;
        }
        ix0 ix0VarA = new h72().a();
        Intent intent2 = (Intent) ix0VarA.b;
        intent2.addFlags(1073741824);
        intent2.addFlags(268435456);
        intent2.setData((Uri) task.getResult());
        recaptchaActivity.startActivity(intent2, (Bundle) ix0VarA.c);
    }

    public lb9 p(int i) {
        List list = (List) this.b;
        if (i < 0 || i >= list.size()) {
            a6.d(dj7.i("Invalid index ", i, list.size(), " for keyset of size "));
            return null;
        }
        lb9 lb9Var = (lb9) list.get(i);
        if (!t(lb9Var.b)) {
            l0.e(xs1.h(i, "Keyset-Entry at position ", " has wrong status"));
            return null;
        }
        if (!lb9Var.f) {
            return (lb9) list.get(i);
        }
        l0.e(xs1.h(i, "Keyset-Entry at position ", " didn't parse correctly"));
        return null;
    }

    public void q() {
        if (((Map) this.c).get(rs9.class) == null) {
            return;
        }
        e6.d();
    }

    public void r(la laVar, xr9 xr9Var, byte[] bArr) throws IOException {
        uz9 uz9VarX = x();
        byte[] bArrB = xr9Var.b(uz9VarX.c(), bArr);
        fy9 fy9VarW = gy9.w();
        x69 x69VarG = t69.g(bArrB, 0, bArrB.length);
        fy9VarW.c();
        gy9.u((gy9) fy9VarW.b, x69VarG);
        zz9 zz9VarA = wd9.a(uz9VarX);
        fy9VarW.c();
        gy9.v((gy9) fy9VarW.b, zz9VarA);
        if (((SharedPreferences.Editor) laVar.a).putString((String) laVar.b, ho6.a0(((gy9) fy9VarW.b()).c())).commit()) {
            return;
        }
        y5.m("Failed to write to SharedPreferences");
    }

    public void s(nh nhVar) throws GeneralSecurityException, IOException {
        String str;
        uz9 uz9VarX = x();
        for (sz9 sz9Var : uz9VarX.B()) {
            if (sz9Var.y().x() == 1 || sz9Var.y().x() == 2 || sz9Var.y().x() == 3) {
                switch (sz9Var.y().x()) {
                    case 1:
                        str = "UNKNOWN_KEYMATERIAL";
                        break;
                    case 2:
                        str = "SYMMETRIC";
                        break;
                    case 3:
                        str = "ASYMMETRIC_PRIVATE";
                        break;
                    case 4:
                        str = "ASYMMETRIC_PUBLIC";
                        break;
                    case 5:
                        str = "REMOTE";
                        break;
                    case 6:
                        str = "UNRECOGNIZED";
                        break;
                    default:
                        throw null;
                }
                throw new GeneralSecurityException(dj7.l("keyset contains key material of type ", str, " for type url ", sz9Var.y().A()));
            }
        }
        ByteArrayOutputStream byteArrayOutputStream = (ByteArrayOutputStream) nhVar.b;
        try {
            uz9 uz9Var = uz9VarX;
            int iA = uz9Var.a(null);
            boolean z = c79.b;
            if (iA > 4096) {
                iA = 4096;
            }
            d79 d79Var = new d79(byteArrayOutputStream, iA);
            uz9Var.k(d79Var);
            if (d79Var.e > 0) {
                d79Var.v();
            }
        } finally {
            byteArrayOutputStream.close();
        }
    }

    public String toString() {
        switch (this.a) {
            case 12:
                return wd9.a(x()).toString();
            default:
                return super.toString();
        }
    }

    public ix0 u() throws GeneralSecurityException {
        vm4 ns9Var;
        boolean z;
        lb9 lb9Var;
        uz9 uz9VarX = x();
        List<lb9> list = (List) this.b;
        ArrayList arrayList = new ArrayList(list.size());
        int i = 0;
        for (lb9 lb9Var2 : list) {
            if (lb9Var2.a() instanceof br9) {
                vm4 vm4VarJ = ((br9) lb9Var2.a()).J();
                lb9Var = new lb9(vm4VarJ, lb9Var2.b, lb9Var2.d, lb9Var2.e, false);
                int i2 = lb9Var2.d;
                Integer numH = vm4VarJ.H();
                if (numH != null && numH.intValue() != i2) {
                    m0.h("Wrong ID set for key with ID requirement");
                    return null;
                }
            } else {
                sz9 sz9VarU = uz9VarX.u(i);
                jz9 jz9VarY = sz9VarU.y();
                if (jz9VarY.x() != 3) {
                    m0.h("The keyset contains a non-private key");
                    return null;
                }
                String strA = jz9VarY.A();
                t69 t69VarZ = jz9VarY.z();
                int i3 = jd9.a;
                gs9 gs9VarA = bs9.d.a(strA);
                if (!(gs9VarA instanceof os9)) {
                    throw new GeneralSecurityException(eq3.k("manager for key type ", strA, " is not a PrivateKeyManager"));
                }
                os9 os9Var = (os9) gs9VarA;
                pt9 pt9VarA = pt9.a(os9Var.a, t69VarZ, os9Var.b, r0a.RAW, null);
                xs9 xs9Var = xs9.b;
                vm4 vm4VarA = xs9Var.a(pt9VarA);
                if (!(vm4VarA instanceof br9)) {
                    m0.h("Key not private key");
                    return null;
                }
                pt9 pt9Var = (pt9) xs9Var.c(((br9) vm4VarA).J());
                iz9 iz9VarT = jz9.t();
                String str = pt9Var.a;
                iz9VarT.c();
                jz9.v((jz9) iz9VarT.b, str);
                t69 t69Var = pt9Var.c;
                iz9VarT.c();
                jz9.w((jz9) iz9VarT.b, t69Var);
                int i4 = pt9Var.d;
                iz9VarT.c();
                jz9.u((jz9) iz9VarT.b, i4);
                jz9 jz9Var = (jz9) iz9VarT.b();
                j79 j79Var = (j79) sz9VarU.d(5);
                if (!j79Var.a.equals(sz9VarU)) {
                    if (!j79Var.b.s()) {
                        j79Var.d();
                    }
                    j79.a(j79Var.b, sz9VarU);
                }
                rz9 rz9Var = (rz9) j79Var;
                rz9Var.c();
                sz9.v((sz9) rz9Var.b, jz9Var);
                sz9 sz9Var = (sz9) rz9Var.b();
                try {
                    ns9Var = k(sz9Var);
                    z = false;
                } catch (GeneralSecurityException e) {
                    if (go9.a.a.get()) {
                        throw e;
                    }
                    ns9Var = new ns9(v(sz9Var));
                    z = true;
                }
                vm4 vm4Var = ns9Var;
                int iT = sz9Var.t();
                lb9Var = new lb9(vm4Var, lb9Var2.b, iT, iT == uz9VarX.z(), z);
            }
            arrayList.add(lb9Var);
            i++;
        }
        ix0 ix0Var = new ix0(arrayList, (Map) this.c);
        ix0Var.q();
        return ix0Var;
    }

    public lb9 w() {
        for (lb9 lb9Var : (List) this.b) {
            if (lb9Var != null && lb9Var.e) {
                if (lb9Var.c == ia9.c) {
                    return lb9Var;
                }
                l0.e("Keyset has primary which isn't enabled");
                return null;
            }
        }
        l0.e("Keyset has no valid primary");
        return null;
    }

    public uz9 x() {
        try {
            tz9 tz9VarA = uz9.A();
            for (lb9 lb9Var : (List) this.b) {
                vm4 vm4VarA = lb9Var.a();
                int i = lb9Var.d;
                int i2 = lb9Var.b;
                pt9 pt9Var = (pt9) xs9.b.c(vm4VarA);
                Integer numH = vm4VarA.H();
                if (numH != null && numH.intValue() != i) {
                    throw new GeneralSecurityException("Wrong ID set for key with ID requirement");
                }
                rz9 rz9VarA = sz9.A();
                iz9 iz9VarT = jz9.t();
                String str = pt9Var.a;
                iz9VarT.c();
                jz9.v((jz9) iz9VarT.b, str);
                t69 t69Var = pt9Var.c;
                iz9VarT.c();
                jz9.w((jz9) iz9VarT.b, t69Var);
                int i3 = pt9Var.d;
                iz9VarT.c();
                jz9.u((jz9) iz9VarT.b, i3);
                rz9VarA.c();
                sz9.v((sz9) rz9VarA.b, (jz9) iz9VarT.b());
                rz9VarA.c();
                ((sz9) rz9VarA.b).zzg = u48.d(i2);
                rz9VarA.c();
                ((sz9) rz9VarA.b).zzh = i;
                r0a r0aVar = pt9Var.e;
                rz9VarA.c();
                ((sz9) rz9VarA.b).zzi = r0aVar.zza();
                sz9 sz9Var = (sz9) rz9VarA.b();
                tz9VarA.c();
                uz9.y((uz9) tz9VarA.b, sz9Var);
                if (lb9Var.e) {
                    tz9VarA.c();
                    ((uz9) tz9VarA.b).zze = i;
                }
            }
            return (uz9) tz9VarA.b();
        } catch (GeneralSecurityException e) {
            throw new yt9(e);
        }
    }

    public /* synthetic */ ix0(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public /* synthetic */ ix0(int i, boolean z) {
        this.a = i;
    }

    public ix0(int i) {
        this.a = i;
        switch (i) {
            case 8:
                this.b = new ArrayList();
                this.c = new HashMap();
                break;
            default:
                this.b = new int[10];
                this.c = new int[10];
                break;
        }
    }

    public ix0(ArrayList arrayList, ArrayList arrayList2) {
        this.a = 3;
        int size = arrayList.size();
        this.b = new int[size];
        this.c = new float[size];
        for (int i = 0; i < size; i++) {
            ((int[]) this.b)[i] = ((Integer) arrayList.get(i)).intValue();
            ((float[]) this.c)[i] = ((Float) arrayList2.get(i)).floatValue();
        }
    }

    public ix0(int i, int i2) {
        this.a = 3;
        this.b = new int[]{i, i2};
        this.c = new float[]{0.0f, 1.0f};
    }

    public ix0(int i, int i2, int i3) {
        this.a = 3;
        this.b = new int[]{i, i2, i3};
        this.c = new float[]{0.0f, 0.5f, 1.0f};
    }

    public ix0(f46 f46Var, PreferenceGroup preferenceGroup) {
        this.a = 5;
        this.c = f46Var;
        this.b = preferenceGroup;
    }
}
