package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ju7 implements jk8, bw1, n59 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;

    public ju7(bv6 bv6Var) {
        int i = 0;
        boolean z = false;
        this.a = 0;
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        w53 w53Var = new w53();
        w53Var.b = new km5((byte) 0, 1);
        w53Var.a = new ge();
        w53Var.c = new us2(26);
        w53Var.d = new sl4();
        map.put(w53.class, w53Var);
        arrayList.add(bv6Var);
        ArrayList arrayList2 = new ArrayList();
        this.b = arrayList2;
        arrayList2.addAll(Collections.unmodifiableCollection(arrayList));
        if (arrayList2.isEmpty()) {
            arrayList2.add(new p84());
            System.out.println("INFO: No error handler has been configured to handle exceptions during publication.\nPublication error handlers can be added by IBusConfiguration.addPublicationErrorHandler()\nFalling back to console logger.");
        }
        ix0 ix0Var = new ix0(i, z ? 1 : 0);
        HashMap map2 = new HashMap();
        ix0Var.c = map2;
        ix0Var.b = this;
        map2.put("bus.handlers.error", Collections.unmodifiableCollection(arrayList));
        map2.put("bus.id", map.containsKey("bus.id") ? map.get("bus.id") : UUID.randomUUID().toString());
        this.e = ix0Var;
        w53 w53Var2 = (w53) map.get(w53.class);
        if (w53Var2 == null) {
            String strL = fz5.l(w53.class, "The expected feature ", " was missing. Use addFeature() in IBusConfiguration to add features.");
            qr1 qr1Var = new qr1();
            qr1Var.a = strL;
            throw qr1Var;
        }
        sl4 sl4Var = w53Var2.d;
        km5 km5Var = w53Var2.b;
        us2 us2Var = w53Var2.c;
        sl4Var.getClass();
        this.d = new zr7(km5Var, us2Var, ix0Var);
        this.c = w53Var2.a;
    }

    public static ju7 e(View view) {
        int i = R.id.til_cloud_limit;
        View viewU = ms8.u(view, R.id.til_cloud_limit);
        if (viewU != null) {
            oe oeVarA = oe.a(viewU);
            i = R.id.til_local_limit;
            View viewU2 = ms8.u(view, R.id.til_local_limit);
            if (viewU2 != null) {
                oe oeVarA2 = oe.a(viewU2);
                i = R.id.tv_part_title;
                TextView textView = (TextView) ms8.u(view, R.id.tv_part_title);
                if (textView != null) {
                    return new ju7((LinearLayout) view, oeVarA, oeVarA2, textView, 1);
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    @Override // defpackage.bw1
    public void a(ev5 ev5Var, Object obj) {
        for (Object obj2 : (Collection) obj) {
            if (obj2 != null) {
                ev5 ev5VarI = ev5Var.i((String) this.d);
                if (!((xk1) this.b).e((ln5) this.e, obj2, ev5VarI)) {
                    ((cy6) this.c).a(ev5VarI, obj2);
                }
            }
        }
    }

    @Override // defpackage.bw1
    public Object b(mc4 mc4Var) {
        switch (this.a) {
            case 2:
                gd4 gd4Var = (gd4) this.e;
                Object objD = gd4Var.d();
                nz4 nz4Var = (nz4) this.d;
                d67 d67Var = (d67) nz4Var.c;
                gd4Var.e(objD);
                yo1 yo1Var = (yo1) this.b;
                yo1Var.j(mc4Var, objD, nz4Var);
                uq4 text = d67Var.getText();
                if (text != null) {
                    yo1Var.g(mc4Var, objD, text);
                }
                yo1Var.e(mc4Var, objD, d67Var);
                yo1Var.f(mc4Var, objD, d67Var);
                ((nl1) this.c).c(objD);
                return objD;
            default:
                gd4 gd4VarG = ((xk1) this.b).g(mc4Var);
                Object objD2 = gd4VarG.d();
                if (gd4VarG.c()) {
                    return objD2;
                }
                Collection collection = (Collection) objD2;
                while (true) {
                    mc4 mc4VarD = mc4Var.d();
                    if (mc4VarD == null) {
                        return collection;
                    }
                    collection.add(((cy6) this.c).b(mc4VarD));
                }
                break;
        }
    }

    @Override // defpackage.bw1
    public Object c(mc4 mc4Var, Object obj) {
        gd4 gd4VarG = ((xk1) this.b).g(mc4Var);
        if (gd4VarG.c()) {
            return gd4VarG.d();
        }
        gd4VarG.e(obj);
        if (obj == null) {
            return obj;
        }
        Collection collection = (Collection) obj;
        while (true) {
            mc4 mc4VarD = mc4Var.d();
            if (mc4VarD == null) {
                return collection;
            }
            collection.add(((cy6) this.c).b(mc4VarD));
        }
    }

    @Override // defpackage.bw1
    public boolean d(mc4 mc4Var) {
        gd4 gd4VarG = ((xk1) this.b).g(mc4Var);
        if (gd4VarG.c()) {
            return true;
        }
        gd4VarG.e(null);
        while (true) {
            mc4 mc4VarD = mc4Var.d();
            if (mc4VarD == null) {
                return true;
            }
            ((cy6) this.c).d(mc4VarD);
        }
    }

    public TreeSet f(Class cls) {
        int i;
        zr7 zr7Var = (zr7) this.d;
        HashMap map = (HashMap) zr7Var.b;
        TreeSet treeSet = new TreeSet(xr7.f);
        ReentrantReadWriteLock.ReadLock lock = ((ReentrantReadWriteLock) zr7Var.f).readLock();
        try {
            lock.lock();
            ArrayList arrayList = (ArrayList) map.get(cls);
            if (arrayList != null) {
                treeSet.addAll(arrayList);
            }
            ArrayList arrayList2 = new ArrayList();
            vm4.f(cls, arrayList2);
            Class superclass = cls;
            while (!superclass.equals(Object.class) && !superclass.isInterface()) {
                arrayList2.add(superclass.getSuperclass());
                superclass = superclass.getSuperclass();
                vm4.f(superclass, arrayList2);
            }
            int size = arrayList2.size();
            Class[] clsArr = new Class[size];
            arrayList2.toArray(clsArr);
            for (int i2 = 0; i2 < size; i2++) {
                ArrayList arrayList3 = (ArrayList) map.get(clsArr[i2]);
                if (arrayList3 != null) {
                    int size2 = arrayList3.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        xr7 xr7Var = (xr7) arrayList3.get(i3);
                        nd5 nd5Var = xr7Var.d.a;
                        Class[] clsArr2 = nd5Var.h;
                        int length = clsArr2.length;
                        while (i < length) {
                            Class cls2 = clsArr2[i];
                            i = (cls2.equals(cls) || (cls2.isAssignableFrom(cls) && nd5Var.i)) ? 0 : i + 1;
                            treeSet.add(xr7Var);
                            break;
                        }
                    }
                }
            }
            return treeSet;
        } finally {
            lock.unlock();
        }
    }

    public rd5 g(Object obj) {
        rd5 rd5Var;
        ix0 ix0Var = (ix0) this.e;
        ge geVar = (ge) this.c;
        TreeSet treeSetF = f(obj.getClass());
        if (!treeSetF.isEmpty() || obj.getClass().equals(md2.class)) {
            geVar.getClass();
            rd5Var = new rd5(ix0Var, treeSetF, obj);
        } else {
            TreeSet treeSetF2 = f(md2.class);
            md2 md2Var = new md2(obj, 12);
            geVar.getClass();
            rd5Var = new rd5(ix0Var, treeSetF2, md2Var);
        }
        try {
            rd5Var.a();
            return rd5Var;
        } catch (Throwable th) {
            try {
                cy6 cy6Var = new cy6();
                cy6Var.c = "Error during publication of message";
                cy6Var.b = th;
                Iterator it = ((ArrayList) this.b).iterator();
                while (it.hasNext()) {
                    try {
                        ((q84) it.next()).a(cy6Var);
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
            } catch (Throwable unused) {
                return rd5Var;
            }
            return rd5Var;
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (LinearLayout) this.b;
    }

    @Override // defpackage.n59
    public void h(f59 f59Var) {
        ((ke) this.e).s(new u59((au2) this.b, ((b69) f59Var).b, (String) this.c), (yf1) this.d);
    }

    public sf9 i() {
        Integer num = (Integer) this.b;
        if (num == null) {
            m0.h("Key size is not set");
            return null;
        }
        if (((Integer) this.c) == null) {
            m0.h("IV size is not set");
            return null;
        }
        if (((rf9) this.e) == null) {
            m0.h("Variant is not set");
            return null;
        }
        if (((Integer) this.d) != null) {
            return new sf9(num.intValue(), ((Integer) this.c).intValue(), ((Integer) this.d).intValue(), (rf9) this.e);
        }
        m0.h("Tag size is not set");
        return null;
    }

    public void j(int i) {
        if (i != 12 && i != 16) {
            throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; acceptable values have 12 or 16 bytes", Integer.valueOf(i)));
        }
        this.c = Integer.valueOf(i);
    }

    public void k(int i) {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.b = Integer.valueOf(i);
    }

    public void l() {
        this.d = 16;
    }

    public String toString() {
        switch (this.a) {
            case 0:
                return ju7.class.getSimpleName() + "(" + ((ix0) this.e).c("bus.id") + ")";
            default:
                return super.toString();
        }
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((yf1) this.d).a(zv1.t(str));
    }

    public /* synthetic */ ju7(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
        this.e = obj4;
    }

    public ju7(ke keVar, au2 au2Var, String str, yf1 yf1Var) {
        this.a = 4;
        this.b = au2Var;
        this.c = str;
        this.d = yf1Var;
        Objects.requireNonNull(keVar);
        this.e = keVar;
    }

    public /* synthetic */ ju7() {
        this.a = 5;
    }

    public ju7(ai5 ai5Var, vb8 vb8Var, ln5 ln5Var, String str) {
        this.a = 3;
        this.b = new xk1(ai5Var, vb8Var, null);
        this.c = new cy6(ai5Var, ln5Var, null);
        this.d = str;
        this.e = ln5Var;
    }
}
