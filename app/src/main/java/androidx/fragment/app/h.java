package androidx.fragment.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import defpackage.c6;
import defpackage.fz5;
import defpackage.ko1;
import defpackage.ms8;
import defpackage.tr3;
import defpackage.vk2;
import defpackage.w7;
import defpackage.wk2;
import defpackage.xk2;
import defpackage.yk2;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class h extends o implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public boolean G;
    public Handler a;
    public boolean q;
    public Dialog t;
    public boolean x;
    public boolean y;
    public final w7 b = new w7(this, 1);
    public final vk2 c = new vk2(this);
    public final wk2 d = new wk2(this);
    public int e = 0;
    public int f = 0;
    public boolean k = true;
    public boolean n = true;
    public int p = -1;
    public final xk2 r = new xk2(this);
    public boolean H = false;

    @Override // androidx.fragment.app.o
    public final ms8 createFragmentContainer() {
        return new yk2(this, new l(this));
    }

    public final void i(boolean z, boolean z2) {
        if (this.y) {
            return;
        }
        this.y = true;
        this.G = false;
        Dialog dialog = this.t;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.t.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.a.getLooper()) {
                    onDismiss(this.t);
                } else {
                    this.a.post(this.b);
                }
            }
        }
        this.x = true;
        if (this.p >= 0) {
            z parentFragmentManager = getParentFragmentManager();
            int i = this.p;
            if (i < 0) {
                c6.f(fz5.j(i, "Bad id: "));
                return;
            } else {
                parentFragmentManager.x(new tr3(parentFragmentManager, i), z);
                this.p = -1;
                return;
            }
        }
        a aVar = new a(getParentFragmentManager());
        aVar.p = true;
        aVar.i(this);
        if (z) {
            aVar.f(true, true);
        } else {
            aVar.e();
        }
    }

    public Dialog j() {
        if (z.K(3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new ko1(requireContext(), this.f);
    }

    public void k(z zVar, String str) {
        this.y = false;
        this.G = true;
        zVar.getClass();
        a aVar = new a(zVar);
        aVar.p = true;
        aVar.g(0, this, str, 1);
        aVar.e();
    }

    @Override // androidx.fragment.app.o
    public final void onAttach(Context context) {
        super.onAttach(context);
        this.mViewLifecycleOwnerLiveData.f(this.r);
        if (this.G) {
            return;
        }
        this.y = false;
    }

    @Override // androidx.fragment.app.o
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = new Handler();
        this.n = this.mContainerId == 0;
        if (bundle != null) {
            this.e = bundle.getInt("android:style", 0);
            this.f = bundle.getInt("android:theme", 0);
            this.k = bundle.getBoolean("android:cancelable", true);
            this.n = bundle.getBoolean("android:showsDialog", this.n);
            this.p = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.o
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.t;
        if (dialog != null) {
            this.x = true;
            dialog.setOnDismissListener(null);
            this.t.dismiss();
            if (!this.y) {
                onDismiss(this.t);
            }
            this.t = null;
            this.H = false;
        }
    }

    @Override // androidx.fragment.app.o
    public final void onDetach() {
        super.onDetach();
        if (!this.G && !this.y) {
            this.y = true;
        }
        this.mViewLifecycleOwnerLiveData.j(this.r);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.x) {
            return;
        }
        if (z.K(3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        i(true, true);
    }

    @Override // androidx.fragment.app.o
    public final LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = super.onGetLayoutInflater(bundle);
        boolean z = this.n;
        if (z && !this.q) {
            if (z && !this.H) {
                try {
                    this.q = true;
                    Dialog dialogJ = j();
                    this.t = dialogJ;
                    if (this.n) {
                        int i = this.e;
                        if (i == 1 || i == 2) {
                            dialogJ.requestWindowFeature(1);
                        } else if (i == 3) {
                            Window window = dialogJ.getWindow();
                            if (window != null) {
                                window.addFlags(24);
                            }
                            dialogJ.requestWindowFeature(1);
                        }
                        Context context = getContext();
                        if (context != null) {
                            this.t.setOwnerActivity((Activity) context);
                        }
                        this.t.setCancelable(this.k);
                        this.t.setOnCancelListener(this.c);
                        this.t.setOnDismissListener(this.d);
                        this.H = true;
                    } else {
                        this.t = null;
                    }
                    this.q = false;
                } catch (Throwable th) {
                    this.q = false;
                    throw th;
                }
            }
            if (z.K(2)) {
                Log.d("FragmentManager", "get layout inflater for DialogFragment " + this + " from dialog context");
            }
            Dialog dialog = this.t;
            if (dialog != null) {
                return layoutInflaterOnGetLayoutInflater.cloneInContext(dialog.getContext());
            }
        } else if (z.K(2)) {
            String str = "getting layout inflater for DialogFragment " + this;
            if (!this.n) {
                Log.d("FragmentManager", "mShowsDialog = false: ".concat(str));
                return layoutInflaterOnGetLayoutInflater;
            }
            Log.d("FragmentManager", "mCreatingDialog = true: ".concat(str));
        }
        return layoutInflaterOnGetLayoutInflater;
    }

    @Override // androidx.fragment.app.o
    public void onSaveInstanceState(Bundle bundle) {
        Dialog dialog = this.t;
        if (dialog != null) {
            Bundle bundleOnSaveInstanceState = dialog.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", bundleOnSaveInstanceState);
        }
        int i = this.e;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.f;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.k;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.n;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.p;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // androidx.fragment.app.o
    public final void onStart() {
        super.onStart();
        Dialog dialog = this.t;
        if (dialog != null) {
            this.x = false;
            dialog.show();
            View decorView = this.t.getWindow().getDecorView();
            decorView.getClass();
            decorView.setTag(R.id.view_tree_lifecycle_owner, this);
            decorView.setTag(R.id.view_tree_view_model_store_owner, this);
            decorView.setTag(R.id.view_tree_saved_state_registry_owner, this);
        }
    }

    @Override // androidx.fragment.app.o
    public final void onStop() {
        super.onStop();
        Dialog dialog = this.t;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.o
    public final void onViewStateRestored(Bundle bundle) {
        Bundle bundle2;
        super.onViewStateRestored(bundle);
        if (this.t == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.t.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.o
    public final void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.performCreateView(layoutInflater, viewGroup, bundle);
        if (this.mView != null || this.t == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.t.onRestoreInstanceState(bundle2);
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }
}
