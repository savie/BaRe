package defpackage;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a19 extends vt4 implements DialogInterface.OnCancelListener {
    public volatile boolean a;
    public final AtomicReference b;
    public final n29 c;
    public final lz3 d;
    public final p50 e;
    public final pz3 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a19(bu4 bu4Var, pz3 pz3Var) {
        super(bu4Var);
        lz3 lz3Var = lz3.d;
        this.b = new AtomicReference(null);
        this.c = new n29(Looper.getMainLooper());
        this.d = lz3Var;
        this.e = new p50(0);
        this.f = pz3Var;
        this.mLifecycleFragment.a("ConnectionlessLifecycleHelper", this);
    }

    @Override // defpackage.vt4
    public final void onActivityResult(int i, int i2, Intent intent) {
        AtomicReference atomicReference = this.b;
        g29 g29Var = (g29) atomicReference.get();
        pz3 pz3Var = this.f;
        if (i != 1) {
            if (i == 2) {
                int iC = this.d.c(getActivity(), mz3.a);
                if (iC == 0) {
                    atomicReference.set(null);
                    n29 n29Var = pz3Var.n;
                    n29Var.sendMessage(n29Var.obtainMessage(3));
                    return;
                } else {
                    if (g29Var == null) {
                        return;
                    }
                    if (g29Var.b.b == 18 && iC == 18) {
                        return;
                    }
                }
            }
        } else if (i2 == -1) {
            atomicReference.set(null);
            n29 n29Var2 = pz3Var.n;
            n29Var2.sendMessage(n29Var2.obtainMessage(3));
            return;
        } else if (i2 == 0) {
            if (g29Var != null) {
                hs1 hs1Var = new hs1(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null, g29Var.b.toString());
                int i3 = g29Var.a;
                atomicReference.set(null);
                pz3Var.h(hs1Var, i3);
                return;
            }
            return;
        }
        if (g29Var != null) {
            hs1 hs1Var2 = g29Var.b;
            int i4 = g29Var.a;
            atomicReference.set(null);
            pz3Var.h(hs1Var2, i4);
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        hs1 hs1Var = new hs1(13, null, null);
        AtomicReference atomicReference = this.b;
        g29 g29Var = (g29) atomicReference.get();
        int i = g29Var == null ? -1 : g29Var.a;
        atomicReference.set(null);
        this.f.h(hs1Var, i);
    }

    @Override // defpackage.vt4
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.b.set(bundle.getBoolean("resolving_error", false) ? new g29(new hs1(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution"), null), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // defpackage.vt4
    public final void onResume() {
        super.onResume();
        if (this.e.isEmpty()) {
            return;
        }
        this.f.b(this);
    }

    @Override // defpackage.vt4
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        g29 g29Var = (g29) this.b.get();
        if (g29Var == null) {
            return;
        }
        hs1 hs1Var = g29Var.b;
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", g29Var.a);
        bundle.putInt("failed_status", hs1Var.b);
        bundle.putParcelable("failed_resolution", hs1Var.c);
    }

    @Override // defpackage.vt4
    public final void onStart() {
        super.onStart();
        this.a = true;
        if (this.e.isEmpty()) {
            return;
        }
        this.f.b(this);
    }

    @Override // defpackage.vt4
    public final void onStop() {
        this.a = false;
        pz3 pz3Var = this.f;
        pz3Var.getClass();
        synchronized (pz3.r) {
            try {
                if (pz3Var.k == this) {
                    pz3Var.k = null;
                    pz3Var.l.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
