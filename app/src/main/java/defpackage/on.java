package defpackage;

import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.SearchView$SearchAutoComplete;
import androidx.appcompat.widget.Toolbar;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class on implements Runnable {
    public final /* synthetic */ int a;
    public Object b;

    public /* synthetic */ on(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ke9 ke9Var;
        mc9 mc9Var;
        switch (this.a) {
            case 0:
                fo foVar = (fo) this.b;
                if ((foVar.q0 & 1) != 0) {
                    foVar.v(0);
                }
                if ((foVar.q0 & 4096) != 0) {
                    foVar.v(108);
                }
                foVar.p0 = false;
                foVar.q0 = 0;
                return;
            case 1:
                SearchView$SearchAutoComplete searchView$SearchAutoComplete = (SearchView$SearchAutoComplete) this.b;
                if (searchView$SearchAutoComplete.f) {
                    ((InputMethodManager) searchView$SearchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchView$SearchAutoComplete, 0);
                    searchView$SearchAutoComplete.f = false;
                    return;
                }
                return;
            case 2:
                ((Toolbar) this.b).u();
                return;
            default:
                ue9 ue9Var = (ue9) this.b;
                if (ue9Var == null || (ke9Var = ue9Var.n) == null) {
                    return;
                }
                this.b = null;
                if (ke9Var.isDone()) {
                    Object obj = ue9Var.a;
                    if (obj == null) {
                        if (ke9Var.isDone()) {
                            if (uc9.k.h0(ue9Var, null, ue9.f(ke9Var))) {
                                ue9.h(ue9Var);
                                return;
                            }
                            return;
                        }
                        kc9 kc9Var = new kc9(ue9Var, ke9Var);
                        if (uc9.k.h0(ue9Var, null, kc9Var)) {
                            try {
                                ke9Var.o(kc9Var, hd9.a);
                                return;
                            } catch (Throwable th) {
                                try {
                                    mc9Var = new mc9(th);
                                    break;
                                } catch (Error | Exception unused) {
                                    mc9Var = mc9.b;
                                }
                                uc9.k.h0(ue9Var, kc9Var, mc9Var);
                                return;
                            }
                        }
                        obj = ue9Var.a;
                    }
                    if (obj instanceof jc9) {
                        ke9Var.cancel(((jc9) obj).a);
                        return;
                    }
                    return;
                }
                try {
                    ScheduledFuture scheduledFuture = ue9Var.p;
                    ue9Var.p = null;
                    String str = "Timed out";
                    if (scheduledFuture != null) {
                        try {
                            long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                            if (jAbs > 10) {
                                str = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                            }
                        } catch (Throwable th2) {
                            if (uc9.k.h0(ue9Var, null, new mc9(new qe9(str)))) {
                                ue9.h(ue9Var);
                            }
                            throw th2;
                        }
                    }
                    if (uc9.k.h0(ue9Var, null, new mc9(new qe9(str + ": " + ke9Var.toString())))) {
                        ue9.h(ue9Var);
                    }
                    ke9Var.cancel(true);
                    return;
                } catch (Throwable th3) {
                    ke9Var.cancel(true);
                    throw th3;
                }
        }
    }
}
