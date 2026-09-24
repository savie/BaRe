package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.ResultReceiver;
import androidx.appcompat.widget.Toolbar;
import androidx.core.widget.NestedScrollView;
import com.android.billingclient.api.ProxyBillingActivityV2;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vk9 implements o53, wg7, t22, za2, c33, yi6, dh5, gl2, j58, m88, gg8, f59, h9 {
    public static final fa9 c = new fa9();
    public final /* synthetic */ int a;
    public Object b;

    public vk9(int i) {
        this.a = i;
        switch (i) {
            case 3:
                this.b = new HashMap();
                break;
            case 6:
                this.b = new ArrayDeque();
                break;
            case 12:
                this.b = new yg5(500L);
                break;
            default:
                int i2 = pg9.a;
                z28 z28Var = new z28(new dl9[]{lv1.n, c}, 20);
                Charset charset = nj9.a;
                this.b = z28Var;
                break;
        }
    }

    public lx1 a(lx1 lx1Var) {
        return lx1Var instanceof vi6 ? lx1Var : new fa(-((c95) this.b).l(), lx1Var);
    }

    @Override // defpackage.yi6
    public void accept(Object obj, Object obj2) {
        xw3 xw3Var = (xw3) this.b;
        ke4 ke4Var = new ke4((TaskCompletionSource) obj2);
        u84 u84Var = (u84) ((w84) ((km6) obj).p());
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken("com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService");
        int i = ya9.a;
        parcelObtain.writeInt(1);
        xw3Var.writeToParcel(parcelObtain, 0);
        parcelObtain.writeStrongBinder(ke4Var);
        u84Var.a(parcelObtain, 2);
    }

    @Override // defpackage.c33
    public Object b() {
        xw2 xw2Var = (xw2) this.b;
        return new dx2(xw2Var.a, xw2Var.b, xw2Var.c, xw2Var.d, xw2Var.e, xw2Var.f, xw2Var.g);
    }

    public byte[] d(byte[] bArr, byte[] bArr2) throws AEADBadTagException {
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
                return new la(i48Var.b).b(x50.k0(bArr, i48Var.a().length, bArr.length), bArr2);
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new AEADBadTagException("Deterministic decryption failed");
    }

    @Override // defpackage.wg7
    public void e() {
        AppsBatchActivity appsBatchActivity = (AppsBatchActivity) this.b;
        appsBatchActivity.Y = true;
        appsBatchActivity.A(true);
        ((Toolbar) ((tf2) appsBatchActivity.k0().b.d).c).setVisibility(4);
        sz8.F(appsBatchActivity.g0(), 300L);
        r20 r20VarL0 = appsBatchActivity.a0();
        l20 l20Var = appsBatchActivity.m0;
        if (l20Var == null) {
            pe4.F("mAdapter");
            throw null;
        }
        fm7 fm7Var = l20Var.e;
        fm7Var.getClass();
        r20VarL0.o = true;
        r20VarL0.q = fm7.a(fm7Var, null, null, false, 31);
    }

    @Override // defpackage.wg7
    public void f() {
        AppsBatchActivity appsBatchActivity = (AppsBatchActivity) this.b;
        appsBatchActivity.Y = false;
        appsBatchActivity.A(false);
        ((Toolbar) ((tf2) appsBatchActivity.k0().b.d).c).setVisibility(0);
        ExtendedFloatingActionButton extendedFloatingActionButtonG0 = appsBatchActivity.g0();
        extendedFloatingActionButtonG0.getClass();
        sz8.e0(extendedFloatingActionButtonG0, true);
        r20 r20VarL0 = appsBatchActivity.a0();
        l20 l20Var = appsBatchActivity.m0;
        if (l20Var == null) {
            pe4.F("mAdapter");
            throw null;
        }
        Set set = l20Var.e.b;
        set.getClass();
        r20VarL0.o = false;
        r20VarL0.m(r20VarL0.q.a, set);
    }

    @Override // defpackage.j58
    public void g(String str) {
        wj6 wj6Var = (wj6) this.b;
        wj6Var.i.c("App check token changed, triggering app check token refresh", null, new Object[0]);
        wz5 wz5Var = wj6Var.c;
        wz5Var.y.c("App check token refreshed.", null, new Object[0]);
        wz5Var.s = str;
        if (wz5Var.a()) {
            if (str != null) {
                wz5Var.i(false);
                return;
            }
            yc9.D(wz5Var.a(), "Must be connected to send unauth.", new Object[0]);
            yc9.D(wz5Var.s == null, "App check token must not be set.", new Object[0]);
            wz5Var.n("unappcheck", false, Collections.EMPTY_MAP, null);
        }
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        ProxyBillingActivityV2 proxyBillingActivityV2 = (ProxyBillingActivityV2) this.b;
        g9 g9Var = (g9) obj;
        Intent intent = g9Var.b;
        int i = ta9.e(intent, "ProxyBillingActivityV2").a;
        ResultReceiver resultReceiver = proxyBillingActivityV2.e;
        if (resultReceiver != null) {
            resultReceiver.send(i, intent == null ? null : intent.getExtras());
        }
        int i2 = g9Var.a;
        if (i2 != -1 || i != 0) {
            ta9.h("ProxyBillingActivityV2", "Alternative billing only dialog finished with resultCode " + i2 + " and billing's responseCode: " + i);
        }
        proxyBillingActivityV2.finish();
    }

    public byte[] i(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        i48 i48VarA = ((k48) this.b).a();
        byte[] bArrA = i48VarA.a();
        la laVar = new la(i48VarA.b);
        byte[] bArrH = laVar.h(bArr2, bArr);
        byte[] bArrCopyOf = Arrays.copyOf(bArrH, bArrH.length);
        bArrCopyOf[8] = (byte) (bArrCopyOf[8] & 127);
        bArrCopyOf[12] = (byte) (bArrCopyOf[12] & 127);
        Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
        cipher.init(1, new SecretKeySpec((byte[]) laVar.b, "AES"), new IvParameterSpec(bArrCopyOf));
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        bArrDoFinal.getClass();
        return x50.u0(bArrA, x50.u0(bArrH, bArrDoFinal));
    }

    @Override // defpackage.gg8
    public ra2 j(Uri uri) {
        return new g60((ContentResolver) this.b, uri, 1);
    }

    @Override // defpackage.gl2
    public boolean k(float f) {
        if (f == 0.0f) {
            return false;
        }
        n();
        ((NestedScrollView) this.b).j((int) f);
        return true;
    }

    @Override // defpackage.za2
    public Object l() {
        return this.b;
    }

    @Override // defpackage.gl2
    public float m() {
        return -((NestedScrollView) this.b).getVerticalScrollFactorCompat();
    }

    @Override // defpackage.gl2
    public void n() {
        ((NestedScrollView) this.b).d.abortAnimation();
    }

    public tw5 o(Constructor constructor, Annotation annotation, Annotation annotation2, int i) throws kd5 {
        dr drVar;
        if (annotation instanceof at2) {
            drVar = new dr(tt2.class, at2.class, null);
        } else if (annotation instanceof gt2) {
            drVar = new dr(it2.class, gt2.class, null);
        } else if (annotation instanceof ct2) {
            drVar = new dr(et2.class, ct2.class, null);
        } else if (annotation instanceof pt2) {
            drVar = new dr(rt2.class, pt2.class, mt2.class);
        } else if (annotation instanceof jt2) {
            drVar = new dr(lt2.class, jt2.class, gt2.class);
        } else if (annotation instanceof ut2) {
            drVar = new dr(wt2.class, ut2.class, at2.class);
        } else if (annotation instanceof mt2) {
            drVar = new dr(ot2.class, mt2.class, null);
        } else if (annotation instanceof u70) {
            drVar = new dr(y70.class, u70.class, null);
        } else {
            if (!(annotation instanceof q08)) {
                throw new kd5("Annotation %s not supported", annotation);
            }
            drVar = new dr(s18.class, q08.class, null);
        }
        Class cls = (Class) drVar.d;
        Class cls2 = (Class) drVar.b;
        Class cls3 = (Class) drVar.c;
        Class cls4 = Integer.TYPE;
        Constructor constructor2 = cls2 != null ? cls.getConstructor(Constructor.class, cls3, cls2, vq3.class, cls4) : cls.getConstructor(Constructor.class, cls3, vq3.class, cls4);
        if (!constructor2.isAccessible()) {
            constructor2.setAccessible(true);
        }
        vq3 vq3Var = (vq3) this.b;
        return annotation2 != null ? (tw5) constructor2.newInstance(constructor, annotation, annotation2, vq3Var, Integer.valueOf(i)) : (tw5) constructor2.newInstance(constructor, annotation, vq3Var, Integer.valueOf(i));
    }

    @Override // defpackage.t22
    public void onError(Object obj) {
        c12 c12Var = (c12) obj;
        c12Var.getClass();
        o21 o21Var = (o21) this.b;
        if (o21Var.t() instanceof ho5) {
            o21Var.resumeWith(new bn6(c12Var));
        }
    }

    @Override // defpackage.t22
    public void onResult(Object obj) {
        k12 k12Var = (k12) obj;
        k12Var.getClass();
        o21 o21Var = (o21) this.b;
        if (o21Var.t() instanceof ho5) {
            o21Var.resumeWith(k12Var);
        }
    }

    public void p(k31 k31Var) {
        HashMap map = (HashMap) this.b;
        int i = k31Var.a;
        sb4 sb4Var = k31Var.b;
        m61 m61Var = k31Var.d;
        zm5.r("Only child changes supported for tracking", i == 2 || i == 4 || i == 1);
        zm5.s(!m61Var.equals(m61.d));
        if (!map.containsKey(m61Var)) {
            map.put(m61Var, k31Var);
            return;
        }
        k31 k31Var2 = (k31) map.get(m61Var);
        int i2 = k31Var2.a;
        sb4 sb4Var2 = k31Var2.c;
        if (i == 2 && i2 == 1) {
            map.put(m61Var, new k31(4, sb4Var, m61Var, null, k31Var2.b));
            return;
        }
        if (i == 1 && i2 == 2) {
            map.remove(m61Var);
            return;
        }
        if (i == 1 && i2 == 4) {
            map.put(m61Var, new k31(1, sb4Var2, m61Var, null, null));
            return;
        }
        if (i == 4 && i2 == 2) {
            map.put(m61Var, new k31(2, sb4Var, m61Var, null, null));
            return;
        }
        if (i == 4 && i2 == 4) {
            map.put(m61Var, new k31(4, sb4Var, m61Var, null, sb4Var2));
            return;
        }
        throw new IllegalStateException("Illegal combination of changes: " + k31Var + " occurred after " + k31Var2);
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        switch (this.a) {
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return new r95((Context) this.b);
            default:
                return new hg8(this);
        }
    }

    @Override // defpackage.f59
    public f59 zza(String str) throws d49 {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.b = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("authorizedDomains");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    ((ArrayList) this.b).add(jSONArrayOptJSONArray.getString(i));
                }
            }
            return this;
        } catch (JSONException e) {
            throw yc9.C0(e, "vk9", str);
        }
    }

    @Override // defpackage.za2
    public void c() {
    }

    public /* synthetic */ vk9(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    public /* synthetic */ vk9(int i, boolean z) {
        this.a = i;
    }

    public vk9(x44 x44Var) {
        this.a = 14;
        this.b = (vq3) x44Var.n;
    }
}
