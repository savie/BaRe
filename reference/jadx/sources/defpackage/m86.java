package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m86 implements jk8 {
    public final /* synthetic */ int a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;
    public Object k;
    public Object n;

    public m86(String str) {
        this.a = 0;
        this.b = o15.b(m86.class);
        this.c = str;
        this.d = gv6.a;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.e = reentrantLock;
        this.f = reentrantLock.newCondition();
    }

    public Object a(long j, TimeUnit timeUnit) {
        Condition condition = (Condition) this.f;
        String str = (String) this.c;
        l15 l15Var = (l15) this.b;
        ReentrantLock reentrantLock = (ReentrantLock) this.e;
        reentrantLock.lock();
        try {
            try {
                Throwable th = (Throwable) this.n;
                if (th != null) {
                    throw th;
                }
                rt6 rt6Var = (rt6) this.k;
                if (rt6Var != null) {
                    reentrantLock.unlock();
                    return rt6Var;
                }
                l15Var.D(str, "Awaiting << {} >>");
                if (j == 0) {
                    while (((rt6) this.k) == null && ((Throwable) this.n) == null) {
                        condition.await();
                    }
                } else if (!condition.await(j, timeUnit)) {
                    reentrantLock.unlock();
                    return null;
                }
                Throwable th2 = (Throwable) this.n;
                if (th2 != null) {
                    l15Var.e(str, th2, "<< {} >> woke to: {}");
                    throw ((Throwable) this.n);
                }
                rt6 rt6Var2 = (rt6) this.k;
                reentrantLock.unlock();
                return rt6Var2;
            } catch (InterruptedException e) {
                throw ((nh4) this.d).r(e);
            }
        } catch (Throwable th3) {
            reentrantLock.unlock();
            throw th3;
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 1:
                break;
        }
        return (MaterialCardView) obj;
    }

    public String toString() {
        switch (this.a) {
            case 0:
                return (String) this.c;
            default:
                return super.toString();
        }
    }

    public /* synthetic */ m86(MaterialCardView materialCardView, Object obj, ImageView imageView, ViewGroup viewGroup, View view, TextView textView, TextView textView2, int i) {
        this.a = i;
        this.b = materialCardView;
        this.c = obj;
        this.d = imageView;
        this.e = viewGroup;
        this.f = view;
        this.k = textView;
        this.n = textView2;
    }
}
