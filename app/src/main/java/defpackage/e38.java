package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e38 implements jk8 {
    public static e38 f;
    public final /* synthetic */ int a;
    public final Object b;
    public Object c;
    public Object d;
    public Object e;

    public e38(int i) {
        this.a = i;
        switch (i) {
            case 5:
                this.b = new Object();
                this.c = new Handler(Looper.getMainLooper(), new kx3(this, 1));
                break;
            default:
                this.b = new vc9(10);
                this.c = new dg7(0);
                this.e = new ArrayList();
                this.d = new HashSet();
                break;
        }
    }

    public static e38 a(View view) {
        int i = R.id.tv_set_password;
        MaterialButton materialButton = (MaterialButton) ms8.u(view, R.id.tv_set_password);
        if (materialButton != null) {
            i = R.id.tv_subtitle;
            TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle);
            if (textView != null) {
                i = R.id.tv_title;
                TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                if (textView2 != null) {
                    return new e38((MaterialCardView) view, materialButton, textView, textView2, 3);
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static e38 d() {
        if (f == null) {
            f = new e38(5);
        }
        return f;
    }

    public boolean b(ri7 ri7Var, int i) {
        ao0 ao0Var = (ao0) ri7Var.a.get();
        if (ao0Var == null) {
            return false;
        }
        ((Handler) this.c).removeCallbacksAndMessages(ri7Var);
        Handler handler = fo0.w;
        handler.sendMessage(handler.obtainMessage(1, i, 0, ao0Var.a));
        return true;
    }

    public void c(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            g84.h("This graph contains cyclic dependencies");
            return;
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) ((dg7) this.c).get(obj);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                c(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    public boolean e(ao0 ao0Var) {
        ri7 ri7Var = (ri7) this.d;
        return (ri7Var == null || ao0Var == null || ri7Var.a.get() != ao0Var) ? false : true;
    }

    public void f(ao0 ao0Var) {
        synchronized (this.b) {
            try {
                if (e(ao0Var)) {
                    ri7 ri7Var = (ri7) this.d;
                    if (!ri7Var.c) {
                        ri7Var.c = true;
                        ((Handler) this.c).removeCallbacksAndMessages(ri7Var);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void g(ao0 ao0Var) {
        synchronized (this.b) {
            try {
                if (e(ao0Var)) {
                    ri7 ri7Var = (ri7) this.d;
                    if (ri7Var.c) {
                        ri7Var.c = false;
                        h(ri7Var);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 3:
                return (MaterialCardView) obj;
            default:
                return (LinearLayout) obj;
        }
    }

    public void h(ri7 ri7Var) {
        Handler handler = (Handler) this.c;
        int i = ri7Var.b;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? 1500 : 2750;
        }
        handler.removeCallbacksAndMessages(ri7Var);
        handler.sendMessageDelayed(Message.obtain(handler, 0, ri7Var), i);
    }

    public void i() {
        ri7 ri7Var = (ri7) this.e;
        if (ri7Var != null) {
            this.d = ri7Var;
            this.e = null;
            ao0 ao0Var = (ao0) ri7Var.a.get();
            if (ao0Var == null) {
                this.d = null;
            } else {
                Handler handler = fo0.w;
                handler.sendMessage(handler.obtainMessage(0, ao0Var.a));
            }
        }
    }

    public /* synthetic */ e38(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
        this.e = obj4;
    }

    public e38(kx8 kx8Var) {
        this.a = 7;
        this.c = null;
        this.d = null;
        this.e = null;
        this.b = kx8Var;
    }

    public e38(ArrayList arrayList, c38 c38Var, m35 m35Var, ContentResolver contentResolver) {
        this.a = 0;
        this.b = c38Var;
        this.c = m35Var;
        this.d = contentResolver;
        this.e = arrayList;
    }

    public e38(Context context) {
        this.a = 1;
        this.b = new WeakReference(context);
        this.c = new AtomicReference();
        this.d = new CountDownLatch(1);
    }
}
