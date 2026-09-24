package defpackage;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.google.android.material.textfield.TextInputLayout;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.math.BigInteger;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ny1 implements jk8 {
    public static final ly1 e = new ly1();
    public static final my1 f = new my1();
    public static final byte[] k = new byte[0];
    public final /* synthetic */ int a;
    public final Object b;
    public Object c;
    public Object d;

    public ny1(au1 au1Var, Annotation annotation, vq3 vq3Var) throws NoSuchMethodException, kd5 {
        ro roVar;
        int i = 6;
        this.a = 6;
        this.d = new er4(null);
        this.c = new q14();
        this.b = annotation;
        if (annotation instanceof ut2) {
            roVar = new ro(i, ut2.class, w13.class);
        } else if (annotation instanceof jt2) {
            roVar = new ro(i, jt2.class, x13.class);
        } else {
            if (!(annotation instanceof pt2)) {
                throw new kd5("Annotation %s is not a union", annotation);
            }
            roVar = new ro(i, pt2.class, y13.class);
        }
        Constructor constructor = ((Class) roVar.c).getConstructor(au1.class, (Class) roVar.b, vq3.class);
        if (!constructor.isAccessible()) {
            constructor.setAccessible(true);
        }
        if (constructor.newInstance(au1Var, annotation, vq3Var) == null) {
            return;
        }
        e6.d();
        throw null;
    }

    public static ny1 a(View view) {
        int i = R.id.rv_labels;
        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(view, R.id.rv_labels);
        if (quickRecyclerView != null) {
            i = R.id.tv_labels_title;
            TextView textView = (TextView) ms8.u(view, R.id.tv_labels_title);
            if (textView != null) {
                return new ny1(4, (LinearLayoutCompat) view, quickRecyclerView, textView);
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static void f(ca3 ca3Var, String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        try {
            ca3Var.g(str, "aqs.".concat(str2)).createNewFile();
        } catch (IOException e2) {
            Log.w("FirebaseCrashlytics", "Failed to persist App Quality Sessions session id.", e2);
        }
    }

    public String[] b() {
        er4<uq4> er4Var = (er4) this.d;
        er4Var.getClass();
        HashSet hashSet = new HashSet();
        for (uq4 uq4Var : er4Var) {
            if (uq4Var != null) {
                String strA = uq4Var.a();
                String name = uq4Var.getName();
                hashSet.add(strA);
                hashSet.add(name);
            }
        }
        return (String[]) hashSet.toArray(new String[0]);
    }

    public String[] c() {
        er4<uq4> er4Var = (er4) this.d;
        er4Var.getClass();
        HashSet hashSet = new HashSet();
        for (uq4 uq4Var : er4Var) {
            if (uq4Var != null) {
                hashSet.add(uq4Var.a());
            }
        }
        return (String[]) hashSet.toArray(new String[0]);
    }

    public void d(Throwable th) {
        String str;
        if (th instanceof OutOfMemoryError) {
            str = "Firebase Database encountered an OutOfMemoryError. You may need to reduce the amount of data you are syncing to the client (e.g. by using queries or syncing a deeper path). See https://firebase.google.com/docs/database/ios/structure-data#best_practices_for_data_structure and https://firebase.google.com/docs/database/android/retrieve-data#filtering_data";
        } else if (th instanceof NoClassDefFoundError) {
            str = "A symbol that the Firebase Database SDK depends on failed to load. This usually indicates that your project includes an incompatible version of another Firebase dependency. If updating your dependencies to the latest version does not resolve this issue, please file a report at https://github.com/firebase/firebase-android-sdk";
        } else {
            str = th instanceof xc2 ? "" : "Uncaught exception in Firebase Database runloop (22.0.1). If you are not already on the latest version of the Firebase SDKs, try updating your dependencies. Should this problem persist, please file a report at https://github.com/firebase/firebase-android-sdk";
        }
        ((u00) this.c).d(str, th);
        new Handler(((Context) ((ro) this.d).b).getMainLooper()).post(new vb(0, str, th));
        ((lf2) this.b).shutdownNow();
    }

    public boolean e() {
        q14 q14Var = (q14) this.c;
        Iterator it = q14Var.iterator();
        while (it.hasNext()) {
            if (!((uq4) it.next()).isInline()) {
                return false;
            }
        }
        return !q14Var.isEmpty();
    }

    @Override // defpackage.jk8
    public View getRoot() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 4:
                return (LinearLayoutCompat) obj;
            default:
                return (TextInputLayout) obj;
        }
    }

    public String toString() {
        switch (this.a) {
            case 3:
                return String.format("creator for %s", (ri2) this.d);
            case 6:
                return ((Annotation) this.b).toString();
            default:
                return super.toString();
        }
    }

    public ny1(byte[] bArr, byte[] bArr2, BigInteger bigInteger, hr9 hr9Var) {
        this.a = 1;
        this.d = BigInteger.ZERO;
        this.c = bigInteger;
        this.b = hr9Var;
    }

    public ny1(ca3 ca3Var) {
        this.a = 0;
        this.c = null;
        this.d = null;
        this.b = ca3Var;
    }

    public ny1(ro roVar, u00 u00Var) {
        this.a = 2;
        this.d = roVar;
        this.c = u00Var;
        lf2 lf2Var = new lf2(this, new nf2(this));
        this.b = lf2Var;
        lf2Var.setKeepAliveTime(3L, TimeUnit.SECONDS);
    }

    public /* synthetic */ ny1(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }
}
