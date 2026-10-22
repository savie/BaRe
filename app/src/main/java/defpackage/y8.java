package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.lang.ref.ReferenceQueue;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.SwiftBackupMaterialSwitch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y8 implements jk8 {
    public final Object a;
    public final Object b;
    public Object c;
    public Object d;

    public y8() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new v8());
        this.b = new HashMap();
        this.c = new ReferenceQueue();
        this.a = executorServiceNewSingleThreadExecutor;
        executorServiceNewSingleThreadExecutor.execute(new w8(this, 0));
    }

    public static y8 b(View view) {
        int i = R.id.iv_icon;
        ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
        if (imageView != null) {
            i = R.id.toggle;
            SwiftBackupMaterialSwitch swiftBackupMaterialSwitch = (SwiftBackupMaterialSwitch) ms8.u(view, R.id.toggle);
            if (swiftBackupMaterialSwitch != null) {
                i = R.id.tv_title;
                TextView textView = (TextView) ms8.u(view, R.id.tv_title);
                if (textView != null) {
                    return new y8((ConstraintLayout) view, imageView, swiftBackupMaterialSwitch, textView);
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public synchronized void a(jo4 jo4Var, fx2 fx2Var) {
        x8 x8Var = (x8) ((HashMap) this.b).put(jo4Var, new x8(jo4Var, fx2Var, (ReferenceQueue) this.c));
        if (x8Var != null) {
            x8Var.c = null;
            x8Var.clear();
        }
    }

    public byte[] c(byte[] bArr, int i, uq5 uq5Var) {
        va vaVar = (va) this.b;
        un8 un8Var = (un8) this.a;
        int i2 = un8Var.a;
        if (bArr.length != i2) {
            c6.f(xs1.h(i2, "startHash needs to be ", "bytes"));
            return null;
        }
        uq5Var.a();
        if (i > un8Var.b - 1) {
            c6.f("max chain length must not be greater than w");
            return null;
        }
        if (i == 0) {
            return bArr;
        }
        byte[] bArrC = c(bArr, i - 1, uq5Var);
        tq5 tq5Var = new tq5();
        tq5Var.c = uq5Var.a;
        tq5Var.b = uq5Var.b;
        tq5Var.e = uq5Var.e;
        tq5Var.f = uq5Var.f;
        tq5Var.g = i - 1;
        tq5Var.d = 0;
        uq5 uq5Var2 = new uq5(tq5Var);
        byte[] bArrA = vaVar.a((byte[]) this.d, uq5Var2.a());
        tq5 tq5Var2 = new tq5();
        tq5Var2.c = uq5Var2.a;
        tq5Var2.b = uq5Var2.b;
        tq5Var2.e = uq5Var2.e;
        tq5Var2.f = uq5Var2.f;
        tq5Var2.g = uq5Var2.g;
        tq5Var2.d = 1;
        byte[] bArrA2 = vaVar.a((byte[]) this.d, new uq5(tq5Var2).a());
        byte[] bArr2 = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr2[i3] = (byte) (bArrC[i3] ^ bArrA2[i3]);
        }
        int length = bArrA.length;
        int i4 = vaVar.a;
        if (length != i4) {
            c6.f("wrong key length");
            return null;
        }
        if (i2 == i4) {
            return vaVar.b(0, bArrA, bArr2);
        }
        c6.f("wrong in length");
        return null;
    }

    public void d(x8 x8Var) {
        ll6 ll6Var;
        synchronized (this) {
            ((HashMap) this.b).remove(x8Var.a);
            if (x8Var.b && (ll6Var = x8Var.c) != null) {
                ((zw2) this.d).e(x8Var.a, new fx2(ll6Var, true, false, x8Var.a, (zw2) this.d));
            }
        }
    }

    public ty3 e(uq5 uq5Var) {
        un8 un8Var = (un8) this.a;
        byte[][] bArr = new byte[un8Var.c][];
        int i = 0;
        while (true) {
            int i2 = un8Var.c;
            if (i >= i2) {
                ty3 ty3Var = new ty3();
                if (un8Var == null) {
                    f6.n("params == null");
                    throw null;
                }
                for (byte[] bArr2 : bArr) {
                    if (bArr2 == null) {
                        f6.n("publicKey byte array == null");
                        throw null;
                    }
                }
                if (bArr.length != un8Var.c) {
                    c6.f("wrong publicKey size");
                    throw null;
                }
                for (byte[] bArr3 : bArr) {
                    if (bArr3.length != un8Var.a) {
                        c6.f("wrong publicKey format");
                        throw null;
                    }
                }
                ty3Var.a = jd4.h(bArr);
                return ty3Var;
            }
            tq5 tq5Var = new tq5();
            tq5Var.c = uq5Var.a;
            tq5Var.b = uq5Var.b;
            tq5Var.e = uq5Var.e;
            tq5Var.f = i;
            tq5Var.g = uq5Var.g;
            tq5Var.d = uq5Var.d;
            uq5Var = new uq5(tq5Var);
            if (i < 0 || i >= i2) {
                c6.f("index out of bounds");
                return null;
            }
            bArr[i] = c(((va) this.b).a((byte[]) this.c, jd4.J(32, i)), un8Var.b - 1, uq5Var);
            i++;
        }
    }

    public byte[] f(byte[] bArr, uq5 uq5Var) {
        tq5 tq5Var = new tq5();
        tq5Var.c = uq5Var.a;
        tq5Var.b = uq5Var.b;
        tq5Var.e = uq5Var.e;
        return ((va) this.b).a(bArr, new uq5(tq5Var).a());
    }

    public void g(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i = ((un8) this.a).a;
        if (length != i) {
            c6.f("size of secretKeySeed needs to be equal to size of digest");
            return;
        }
        if (bArr2 == null) {
            f6.n("publicSeed == null");
        } else if (bArr2.length != i) {
            c6.f("size of publicSeed needs to be equal to size of digest");
        } else {
            this.c = bArr;
            this.d = bArr2;
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (ConstraintLayout) this.a;
    }

    public /* synthetic */ y8(Object obj, Object obj2, Object obj3, Object obj4) {
        this.a = obj;
        this.b = obj2;
        this.c = obj3;
        this.d = obj4;
    }

    public y8(un8 un8Var) {
        if (un8Var == null) {
            f6.n("params == null");
            throw null;
        }
        this.a = un8Var;
        int i = un8Var.a;
        this.b = new va(i, un8Var.d);
        this.c = new byte[i];
        this.d = new byte[i];
    }
}
