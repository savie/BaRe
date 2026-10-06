package defpackage;

import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ot9 implements vt9, cz2, ls5, yi6, yu9 {
    public static final ge c = new ge();
    public Object a;
    public Object b;

    public ot9(int i) {
        switch (i) {
            case 5:
                this.a = new int[10];
                this.b = new int[10];
                break;
            case 8:
                this.a = new f62(1000L);
                this.b = tu0.z(10, new ge());
                break;
            default:
                this.a = new Rect();
                this.b = new Rect();
                break;
        }
    }

    public static yf1 j() {
        yf1 yf1Var = new yf1(19);
        yf1Var.b = new HashMap();
        yf1Var.c = new HashMap();
        return yf1Var;
    }

    public static ot9 m(mz9 mz9Var) {
        return new ot9(mz9Var, au9.c(mz9Var.B()));
    }

    @Override // defpackage.yu9
    public byte[] a(byte[] bArr, int i) {
        return bArr.length <= 64 ? ((zu9) this.a).a(bArr, i) : ((cd) this.b).a(bArr, i);
    }

    @Override // defpackage.yi6
    public void accept(Object obj, Object obj2) {
        r29 r29Var = new r29((u29) this.a, (TaskCompletionSource) obj2);
        n39 n39Var = (n39) ((v29) obj).p();
        wp0 wp0Var = (wp0) this.b;
        ef efVar = new ef(new qn1(-1, -1, 0, true), false);
        efVar.c = false;
        Parcel parcelF = n39Var.f();
        int i = z29.a;
        parcelF.writeStrongBinder(r29Var);
        z29.b(parcelF, wp0Var);
        z29.b(parcelF, efVar);
        n39Var.g(parcelF, 1);
    }

    public void b(zw5 zw5Var, vf7 vf7Var, int i) {
        zw5 zw5Var2 = (zw5) this.a;
        vf7 vf7VarC = zw5Var2.c(i);
        int size = vf7VarC.size();
        if (zw5Var2.size() - 1 > i) {
            for (int i2 = 0; i2 < size; i2++) {
                vf7 vf7Var2 = new vf7(vf7Var);
                vf7Var2.add((tw5) vf7VarC.get(i2));
                b(zw5Var, vf7Var2, i + 1);
            }
            return;
        }
        vf7 vf7VarC2 = zw5Var2.c(i);
        int size2 = vf7Var.size();
        int size3 = vf7VarC2.size();
        for (int i3 = 0; i3 < size3; i3++) {
            for (int i4 = 0; i4 < size2; i4++) {
                zw5Var.c(i4).add((tw5) vf7Var.get(i4));
            }
            zw5Var.c(i).add((tw5) vf7VarC2.get(i3));
        }
    }

    public Bundle c(String str) {
        vx6 vx6Var = (vx6) this.a;
        if (!vx6Var.g) {
            l0.e("You can 'consumeRestoredStateForKey' only after the corresponding component has moved to the 'CREATED' state");
            return null;
        }
        Bundle bundle = vx6Var.f;
        if (bundle == null) {
            return null;
        }
        Bundle bundleS = bundle.containsKey(str) ? k55.s(bundle, str) : null;
        bundle.remove(str);
        if (bundle.isEmpty()) {
            vx6Var.f = null;
        }
        return bundleS;
    }

    public String d(jo4 jo4Var) {
        String str;
        synchronized (((f62) this.a)) {
            str = (String) ((f62) this.a).a(jo4Var);
        }
        if (str == null) {
            cx6 cx6Var = (cx6) ((l22) this.b).d();
            try {
                jo4Var.b(cx6Var.a);
                byte[] bArrDigest = cx6Var.a.digest();
                char[] cArr = xh8.b;
                synchronized (cArr) {
                    for (int i = 0; i < bArrDigest.length; i++) {
                        byte b = bArrDigest[i];
                        int i2 = i * 2;
                        char[] cArr2 = xh8.a;
                        cArr[i2] = cArr2[(b & 255) >>> 4];
                        cArr[i2 + 1] = cArr2[b & 15];
                    }
                    str = new String(cArr);
                }
                ((l22) this.b).c(cx6Var);
            } catch (Throwable th) {
                ((l22) this.b).c(cx6Var);
                throw th;
            }
        }
        synchronized (((f62) this.a)) {
            ((f62) this.a).d(jo4Var, str);
        }
        return str;
    }

    public ux6 e() {
        ux6 ux6Var;
        vx6 vx6Var = (vx6) this.a;
        synchronized (vx6Var.c) {
            Iterator it = vx6Var.d.entrySet().iterator();
            do {
                ux6Var = null;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                ux6 ux6Var2 = (ux6) entry.getValue();
                if (pe4.d(str, "androidx.lifecycle.internal.SavedStateHandlesProvider")) {
                    ux6Var = ux6Var2;
                }
            } while (ux6Var == null);
        }
        return ux6Var;
    }

    public void f(mq3 mq3Var) {
        y60 y60Var = (y60) this.b;
        km5 km5Var = (km5) this.a;
        int i = mq3Var.b;
        if (i == 0) {
            y60Var.execute(new s60(km5Var, mq3Var.a));
        } else {
            y60Var.execute(new xz0(km5Var, i, 0));
        }
    }

    public bz2 g() throws XmlPullParserException, IOException {
        XmlPullParser xmlPullParser = (XmlPullParser) this.a;
        int next = xmlPullParser.next();
        if (next == 1) {
            return null;
        }
        if (next != 2) {
            if (next == 4) {
                return new vb6(xmlPullParser);
            }
            return next == 3 ? new sb6() : g();
        }
        ub6 ub6Var = new ub6(xmlPullParser);
        if (ub6Var.isEmpty()) {
            int attributeCount = xmlPullParser.getAttributeCount();
            for (int i = 0; i < attributeCount; i++) {
                ub6Var.add(new tb6(xmlPullParser, i));
            }
        }
        return ub6Var;
    }

    public void h(String str, ux6 ux6Var) {
        ux6Var.getClass();
        vx6 vx6Var = (vx6) this.a;
        synchronized (vx6Var.c) {
            if (vx6Var.d.containsKey(str)) {
                throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
            }
            vx6Var.d.put(str, ux6Var);
        }
    }

    public void i() {
        if (!((vx6) this.a).h) {
            l0.e("Can not perform this action after onSaveInstanceState");
            return;
        }
        zf6 zf6Var = (zf6) this.b;
        if (zf6Var == null) {
            zf6Var = new zf6(this);
        }
        this.b = zf6Var;
        try {
            ct4.class.getDeclaredConstructor(null);
            zf6 zf6Var2 = (zf6) this.b;
            if (zf6Var2 != null) {
                zf6Var2.a.add(ct4.class.getName());
            }
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class " + ct4.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }

    public Enum k(Object obj) throws GeneralSecurityException {
        Enum r1 = (Enum) ((Map) this.b).get(obj);
        if (r1 != null) {
            return r1;
        }
        throw new GeneralSecurityException("Unable to convert object enum: ".concat(String.valueOf(obj)));
    }

    public Object l(Enum r2) throws GeneralSecurityException {
        Object obj = ((Map) this.a).get(r2);
        if (obj != null) {
            return obj;
        }
        throw new GeneralSecurityException("Unable to convert proto enum: ".concat(String.valueOf(r2)));
    }

    @Override // defpackage.ls5
    public tv8 n(View view, tv8 tv8Var) {
        ViewPager viewPager = (ViewPager) this.b;
        tv8 tv8VarI = dl8.i(view, tv8Var);
        if (tv8VarI.a.r()) {
            return tv8VarI;
        }
        Rect rect = (Rect) this.a;
        rect.left = tv8VarI.b();
        rect.top = tv8VarI.d();
        rect.right = tv8VarI.c();
        rect.bottom = tv8VarI.a();
        int childCount = viewPager.getChildCount();
        for (int i = 0; i < childCount; i++) {
            tv8 tv8VarB = dl8.b(viewPager.getChildAt(i), tv8VarI);
            rect.left = Math.min(tv8VarB.b(), rect.left);
            rect.top = Math.min(tv8VarB.d(), rect.top);
            rect.right = Math.min(tv8VarB.c(), rect.right);
            rect.bottom = Math.min(tv8VarB.a(), rect.bottom);
        }
        return tv8VarI.f(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // defpackage.cz2
    public bz2 next() {
        bz2 bz2Var = (bz2) this.b;
        if (bz2Var == null) {
            return g();
        }
        this.b = null;
        return bz2Var;
    }

    @Override // defpackage.cz2
    public bz2 peek() {
        if (((bz2) this.b) == null) {
            this.b = next();
        }
        return (bz2) this.b;
    }

    public /* synthetic */ ot9(Object obj, Object obj2, boolean z) {
        this.a = obj;
        this.b = obj2;
    }

    public ot9(ca3 ca3Var) {
        this.a = ca3Var;
        this.b = c;
    }

    public /* synthetic */ ot9(Object obj, Object obj2) {
        this.b = obj;
        this.a = obj2;
    }
}
