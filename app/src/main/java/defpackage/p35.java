package defpackage;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.recyclerview.widget.a;
import com.jcraft.jsch.SftpATTRS;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class p35 {
    public final /* synthetic */ int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public final Object f;
    public final Object g;

    public p35(int i) {
        this.a = 0;
        this.b = i;
        if (i <= 0) {
            c6.f("maxSize <= 0");
            throw null;
        }
        this.f = new zq8(12);
        this.g = new q34(10);
    }

    public void a() {
        View view = (View) dj7.e((ArrayList) this.f, 1);
        xk7 xk7Var = (xk7) view.getLayoutParams();
        this.c = ((StaggeredGridLayoutManager) this.g).J.d(view);
        xk7Var.getClass();
    }

    public void b() {
        ((ArrayList) this.f).clear();
        this.b = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.c = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.d = 0;
    }

    public Object c(Object obj) {
        obj.getClass();
        return null;
    }

    public void d(Object obj, Object obj2, Object obj3) {
        obj.getClass();
    }

    public int e() {
        boolean z = ((StaggeredGridLayoutManager) this.g).O;
        ArrayList arrayList = (ArrayList) this.f;
        return z ? g(arrayList.size() - 1, -1, false, true) : g(0, arrayList.size(), false, true);
    }

    public int f() {
        boolean z = ((StaggeredGridLayoutManager) this.g).O;
        ArrayList arrayList = (ArrayList) this.f;
        return z ? g(0, arrayList.size(), false, true) : g(arrayList.size() - 1, -1, false, true);
    }

    public int g(int i, int i2, boolean z, boolean z2) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) this.g;
        int iM = staggeredGridLayoutManager.J.m();
        int i3 = staggeredGridLayoutManager.J.i();
        int i4 = i2 > i ? 1 : -1;
        while (i != i2) {
            View view = (View) ((ArrayList) this.f).get(i);
            int iG = staggeredGridLayoutManager.J.g(view);
            int iD = staggeredGridLayoutManager.J.d(view);
            boolean z3 = false;
            boolean z4 = !z2 ? iG >= i3 : iG > i3;
            if (!z2 ? iD > iM : iD >= iM) {
                z3 = true;
            }
            if (z4 && z3) {
                if (z) {
                    return a.R(view);
                }
                if (iG < iM || iD > i3) {
                    return a.R(view);
                }
            }
            i += i4;
        }
        return -1;
    }

    public Object h(Object obj) {
        Object objPut;
        obj.getClass();
        synchronized (((q34) this.g)) {
            zq8 zq8Var = (zq8) this.f;
            zq8Var.getClass();
            Object obj2 = ((LinkedHashMap) zq8Var.b).get(obj);
            if (obj2 != null) {
                this.d++;
                return obj2;
            }
            this.e++;
            Object objC = c(obj);
            if (objC == null) {
                return null;
            }
            synchronized (((q34) this.g)) {
                zq8 zq8Var2 = (zq8) this.f;
                zq8Var2.getClass();
                objPut = ((LinkedHashMap) zq8Var2.b).put(obj, objC);
                if (objPut != null) {
                    zq8 zq8Var3 = (zq8) this.f;
                    zq8Var3.getClass();
                    ((LinkedHashMap) zq8Var3.b).put(obj, objPut);
                } else {
                    this.c++;
                }
            }
            if (objPut != null) {
                d(obj, objC, objPut);
                return objPut;
            }
            m(this.b);
            return objC;
        }
    }

    public int i(int i) {
        int i2 = this.c;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (((ArrayList) this.f).size() == 0) {
            return i;
        }
        a();
        return this.c;
    }

    public View j(int i, int i2) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) this.g;
        ArrayList arrayList = (ArrayList) this.f;
        View view = null;
        if (i2 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.O && a.R(view2) >= i) || ((!staggeredGridLayoutManager.O && a.R(view2) <= i) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
            return view;
        }
        int size2 = arrayList.size();
        int i3 = 0;
        while (i3 < size2) {
            View view3 = (View) arrayList.get(i3);
            if ((staggeredGridLayoutManager.O && a.R(view3) <= i) || ((!staggeredGridLayoutManager.O && a.R(view3) >= i) || !view3.hasFocusable())) {
                break;
            }
            i3++;
            view = view3;
        }
        return view;
    }

    public int k(int i) {
        ArrayList arrayList = (ArrayList) this.f;
        int i2 = this.b;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (arrayList.size() == 0) {
            return i;
        }
        View view = (View) arrayList.get(0);
        xk7 xk7Var = (xk7) view.getLayoutParams();
        this.b = ((StaggeredGridLayoutManager) this.g).J.g(view);
        xk7Var.getClass();
        return this.b;
    }

    public Object l(Object obj, Object obj2) {
        Object objPut;
        obj.getClass();
        obj2.getClass();
        synchronized (((q34) this.g)) {
            this.c++;
            zq8 zq8Var = (zq8) this.f;
            zq8Var.getClass();
            objPut = ((LinkedHashMap) zq8Var.b).put(obj, obj2);
            if (objPut != null) {
                this.c--;
            }
        }
        if (objPut != null) {
            d(obj, objPut, obj2);
        }
        m(this.b);
        return objPut;
    }

    public void m(int i) {
        Object key;
        Object value;
        while (true) {
            synchronized (((q34) this.g)) {
                try {
                    if (this.c < 0 || (((LinkedHashMap) ((zq8) this.f).b).isEmpty() && this.c != 0)) {
                        break;
                    }
                    if (this.c > i && !((LinkedHashMap) ((zq8) this.f).b).isEmpty()) {
                        Set setEntrySet = ((LinkedHashMap) ((zq8) this.f).b).entrySet();
                        setEntrySet.getClass();
                        Map.Entry entry = (Map.Entry) el1.T0(setEntrySet);
                        if (entry == null) {
                            return;
                        }
                        key = entry.getKey();
                        value = entry.getValue();
                        zq8 zq8Var = (zq8) this.f;
                        zq8Var.getClass();
                        key.getClass();
                        ((LinkedHashMap) zq8Var.b).remove(key);
                        int i2 = this.c;
                        value.getClass();
                        this.c = i2 - 1;
                    }
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
            d(key, value, null);
        }
        throw new IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
    }

    public String toString() {
        String str;
        switch (this.a) {
            case 0:
                synchronized (((q34) this.g)) {
                    try {
                        int i = this.d;
                        int i2 = this.e + i;
                        str = "LruCache[maxSize=" + this.b + ",hits=" + this.d + ",misses=" + this.e + ",hitRate=" + (i2 != 0 ? (i * 100) / i2 : 0) + "%]";
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return str;
            default:
                return super.toString();
        }
    }

    public p35(StaggeredGridLayoutManager staggeredGridLayoutManager, int i) {
        this.a = 1;
        this.g = staggeredGridLayoutManager;
        this.f = new ArrayList();
        this.b = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.c = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.d = 0;
        this.e = i;
    }
}
