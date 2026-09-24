package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.google.android.material.card.MaterialCardView;
import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vq implements gd4, jk8, ba4, SbaNativeProgressListener, n59 {
    public static volatile vq e;
    public static final Object f = new Object();
    public static final fk8 k = new fk8(2);
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;

    public vq(ArrayList arrayList) {
        this.a = 10;
        this.b = arrayList;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            String str = ((pa5) obj).b;
            if (str != null && !nq7.j0(str)) {
                arrayList2.add(obj);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : arrayList2) {
            String str2 = ((pa5) obj2).b;
            str2 = str2 == null ? "" : str2;
            Object arrayList3 = linkedHashMap.get(str2);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList();
                linkedHashMap.put(str2, arrayList3);
            }
            ((List) arrayList3).add(obj2);
        }
        this.c = linkedHashMap;
        for (Object obj3 : (ArrayList) this.b) {
            if (((pa5) obj3).f == 2) {
                this.d = (pa5) obj3;
            }
        }
        obj3 = null;
        this.d = (pa5) obj3;
    }

    public static vq i(View view) {
        int i = R.id.iv_icon;
        ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
        if (imageView != null) {
            i = R.id.tv_title;
            TextView textView = (TextView) ms8.u(view, R.id.tv_title);
            if (textView != null) {
                return new vq(5, (ConstraintLayout) view, imageView, textView);
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static vq n(Context context) {
        if (e == null) {
            synchronized (f) {
                try {
                    if (e == null) {
                        e = new vq(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public static np1 o(ArrayList arrayList, q36 q36Var, gy5 gy5Var) {
        np1 np1VarC = np1.b;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            kh8 kh8Var = (kh8) it.next();
            if (q36Var.a(kh8Var)) {
                gy5 gy5Var2 = kh8Var.b;
                if (kh8Var.c()) {
                    if (gy5Var.g(gy5Var2)) {
                        np1VarC = np1VarC.c(gy5.o(gy5Var, gy5Var2), kh8Var.b());
                    } else if (gy5Var2.g(gy5Var)) {
                        np1VarC = np1VarC.c(gy5.d, kh8Var.b().U(gy5.o(gy5Var2, gy5Var)));
                    }
                } else if (gy5Var.g(gy5Var2)) {
                    np1VarC = np1VarC.d(gy5.o(gy5Var, gy5Var2), kh8Var.a());
                } else if (gy5Var2.g(gy5Var)) {
                    gy5 gy5VarO = gy5.o(gy5Var2, gy5Var);
                    if (gy5VarO.isEmpty()) {
                        np1VarC = np1VarC.d(gy5.d, kh8Var.a());
                    } else {
                        qn5 qn5VarK = kh8Var.a().k(gy5VarO);
                        if (qn5VarK != null) {
                            np1VarC = np1VarC.c(gy5.d, qn5VarK);
                        }
                    }
                }
            }
        }
        return np1VarC;
    }

    @Override // defpackage.ba4
    public int a() {
        List list = (List) this.c;
        ByteBuffer byteBufferC = ay0.c((ByteBuffer) this.b);
        m35 m35Var = (m35) this.d;
        if (byteBufferC != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                try {
                    int iB = ((x94) list.get(i)).b(byteBufferC, m35Var);
                    if (iB != -1) {
                        return iB;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return -1;
    }

    @Override // defpackage.ba4
    public Bitmap b(BitmapFactory.Options options) {
        return BitmapFactory.decodeStream(new yx0(ay0.c((ByteBuffer) this.b)), null, options);
    }

    @Override // defpackage.gd4
    public boolean c() {
        return ((wi8) this.d).c();
    }

    @Override // defpackage.gd4
    public Object d() {
        wi8 wi8Var = (wi8) this.d;
        if (wi8Var.c()) {
            return wi8Var.getValue();
        }
        Object objD = ((ai5) this.b).k((Class) this.c).d();
        if (objD != null) {
            e(objD);
        }
        return objD;
    }

    @Override // defpackage.gd4
    public Object e(Object obj) {
        ((wi8) this.d).setValue(obj);
        return obj;
    }

    @Override // defpackage.ba4
    public ImageHeaderParser$ImageType g() {
        return pe4.t((List) this.c, ay0.c((ByteBuffer) this.b));
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 5:
                return (ConstraintLayout) this.b;
            case 6:
                return (LinearLayout) this.b;
            default:
                return (MaterialCardView) this.b;
        }
    }

    @Override // defpackage.gd4
    public Class getType() {
        return (Class) this.c;
    }

    @Override // defpackage.n59
    public /* synthetic */ void h(f59 f59Var) {
        ke.q((ke) ((u00) this.d).d, (k69) f59Var, (yf1) this.b, this);
    }

    @Override // com.swiftapps.sba.internal.progress.SbaNativeProgressListener
    public boolean isCancellationRequested() {
        return ((ny6) this.d).isCancellationRequested();
    }

    public qn5 j(gy5 gy5Var, qn5 qn5Var, List list, boolean z) {
        if (!list.isEmpty() || z) {
            np1 np1VarG = ((np1) this.b).g(gy5Var);
            if (z || !np1VarG.a.isEmpty()) {
                if (!z && qn5Var == null && np1VarG.k(gy5.d) == null) {
                    return null;
                }
                np1 np1VarO = o((ArrayList) this.c, new ik6(z, list, gy5Var), gy5Var);
                if (qn5Var == null) {
                    qn5Var = qv2.e;
                }
                return np1VarO.e(qn5Var);
            }
        } else {
            qn5 qn5VarK = ((np1) this.b).k(gy5Var);
            if (qn5VarK != null) {
                return qn5VarK;
            }
            np1 np1VarG2 = ((np1) this.b).g(gy5Var);
            if (!np1VarG2.a.isEmpty()) {
                if (qn5Var == null && np1VarG2.k(gy5.d) == null) {
                    return null;
                }
                if (qn5Var == null) {
                    qn5Var = qv2.e;
                }
                return np1VarG2.e(qn5Var);
            }
        }
        return qn5Var;
    }

    public void k(Bundle bundle) {
        HashSet hashSet = (HashSet) this.c;
        String string = ((Context) this.d).getString(R.string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet2 = new HashSet();
                for (String str : bundle.keySet()) {
                    if (string.equals(bundle.getString(str, null))) {
                        Class<?> cls = Class.forName(str);
                        if (ec4.class.isAssignableFrom(cls)) {
                            hashSet.add(cls);
                        }
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    l((Class) it.next(), hashSet2);
                }
            } catch (ClassNotFoundException e2) {
                throw new bm7(e2);
            }
        }
    }

    public Object l(Class cls, HashSet hashSet) {
        Object objB;
        HashMap map = (HashMap) this.b;
        if (iz1.p()) {
            try {
                iz1.b(cls.getSimpleName());
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
        if (hashSet.contains(cls)) {
            throw new IllegalStateException("Cannot initialize " + cls.getName() + ". Cycle detected.");
        }
        if (map.containsKey(cls)) {
            objB = map.get(cls);
        } else {
            hashSet.add(cls);
            try {
                ec4 ec4Var = (ec4) cls.getDeclaredConstructor(null).newInstance(null);
                List<Class> listA = ec4Var.a();
                if (!listA.isEmpty()) {
                    for (Class cls2 : listA) {
                        if (!map.containsKey(cls2)) {
                            l(cls2, hashSet);
                        }
                    }
                }
                objB = ec4Var.b((Context) this.d);
                hashSet.remove(cls);
                map.put(cls, objB);
            } catch (Throwable th2) {
                throw new bm7(th2);
            }
        }
        Trace.endSection();
        return objB;
    }

    public pa5 m(String str) {
        Object next;
        pa5 pa5Var = (pa5) this.d;
        if (pa5Var != null) {
            List listW0 = nq7.w0(nq7.I0(str, '/'), new char[]{'/'}, 6);
            ArrayList<String> arrayList = new ArrayList();
            for (Object obj : listW0) {
                if (!nq7.j0((String) obj)) {
                    arrayList.add(obj);
                }
            }
            for (String str2 : arrayList) {
                Iterable iterable = (List) ((LinkedHashMap) this.c).get(pa5Var.a);
                if (iterable == null) {
                    iterable = ov2.a;
                }
                Iterator it = iterable.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!((pa5) next).c.equals(str2));
                pa5Var = (pa5) next;
                if (pa5Var == null) {
                }
            }
            return pa5Var;
        }
        return null;
    }

    @Override // com.swiftapps.sba.internal.progress.SbaNativeProgressListener
    public void onProgress(long j, long j2) {
        h07 h07Var = (h07) this.b;
        if (h07Var != null) {
            ((rt3) this.c).a(h07Var, Long.valueOf(j), Long.valueOf(j2));
        }
    }

    public String toString() {
        switch (this.a) {
            case 2:
                StringBuilder sb = new StringBuilder("[ClassStack (self-refs: ");
                ArrayList arrayList = (ArrayList) this.d;
                sb.append(arrayList == null ? "0" : String.valueOf(arrayList.size()));
                sb.append(')');
                while (this != null) {
                    sb.append(' ');
                    sb.append(((Class) this.c).getName());
                    this = (vq) this.b;
                }
                sb.append(']');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((u00) this.c).zza(str);
    }

    @Override // defpackage.ba4
    public void f() {
    }

    public /* synthetic */ vq(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    public vq(u00 u00Var, yf1 yf1Var, u00 u00Var2) {
        this.a = 14;
        this.b = yf1Var;
        this.c = u00Var2;
        this.d = u00Var;
    }

    public vq(String str, String str2, Set set) {
        this.a = 13;
        str.getClass();
        this.b = str;
        this.c = str2;
        this.d = set;
    }

    public vq(List list) {
        this.a = 9;
        this.d = list;
        this.b = new ArrayList(list.size());
        this.c = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            ((ArrayList) this.b).add(((q75) list.get(i)).b.n());
            ((ArrayList) this.c).add(((q75) list.get(i)).c.n());
        }
    }

    public vq(vq vqVar, Class cls) {
        this.a = 2;
        this.b = vqVar;
        this.c = cls;
    }

    public vq(s79 s79Var) {
        this.a = 11;
        this.b = new SparseArray();
        this.c = new Handler(Looper.getMainLooper());
        this.d = s79Var;
    }

    public vq(ai5 ai5Var, wi8 wi8Var, Class cls) {
        this.a = 4;
        this.b = ai5Var;
        this.c = cls;
        this.d = wi8Var;
    }

    public vq(Context context) {
        this.a = 0;
        this.d = context.getApplicationContext();
        this.c = new HashSet();
        this.b = new HashMap();
    }

    public /* synthetic */ vq(int i) {
        this.a = i;
    }
}
