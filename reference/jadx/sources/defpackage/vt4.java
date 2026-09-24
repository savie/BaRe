package defpackage;

import android.app.Activity;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.a;
import androidx.fragment.app.u;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class vt4 {
    protected final bu4 mLifecycleFragment;

    public vt4(bu4 bu4Var) {
        this.mLifecycleFragment = bu4Var;
    }

    public static bu4 getFragment(ut4 ut4Var) {
        s39 s39Var;
        ce9 ce9Var;
        Activity activity = ut4Var.a;
        if (!(activity instanceof u)) {
            if (activity == null) {
                c6.f("Can't get fragment for unexpected activity.");
                return null;
            }
            WeakHashMap weakHashMap = s39.b;
            WeakReference weakReference = (WeakReference) weakHashMap.get(activity);
            if (weakReference != null && (s39Var = (s39) weakReference.get()) != null) {
                return s39Var;
            }
            try {
                s39 s39Var2 = (s39) activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
                if (s39Var2 == null || s39Var2.isRemoving()) {
                    s39Var2 = new s39();
                    activity.getFragmentManager().beginTransaction().add(s39Var2, "LifecycleFragmentImpl").commitAllowingStateLoss();
                }
                weakHashMap.put(activity, new WeakReference(s39Var2));
                return s39Var2;
            } catch (ClassCastException e) {
                e6.j("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e);
                return null;
            }
        }
        u uVar = (u) activity;
        WeakHashMap weakHashMap2 = ce9.b;
        ur3 supportFragmentManager = uVar.getSupportFragmentManager();
        WeakHashMap weakHashMap3 = ce9.b;
        WeakReference weakReference2 = (WeakReference) weakHashMap3.get(uVar);
        if (weakReference2 != null && (ce9Var = (ce9) weakReference2.get()) != null) {
            return ce9Var;
        }
        try {
            ce9 ce9Var2 = (ce9) supportFragmentManager.D("SLifecycleFragmentImpl");
            if (ce9Var2 == null || ce9Var2.isRemoving()) {
                ce9Var2 = new ce9();
                a aVar = new a(supportFragmentManager);
                aVar.g(0, ce9Var2, "SLifecycleFragmentImpl", 1);
                aVar.f(true, true);
            }
            weakHashMap3.put(uVar, new WeakReference(ce9Var2));
            return ce9Var2;
        } catch (ClassCastException e2) {
            e6.j("Fragment with tag SLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e2);
            return null;
        }
    }

    public Activity getActivity() {
        Activity activityC = this.mLifecycleFragment.c();
        ly8.h(activityC);
        return activityC;
    }

    public abstract void onStop();

    public void onDestroy() {
    }

    public void onResume() {
    }

    public void onStart() {
    }

    public void onCreate(Bundle bundle) {
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public static bu4 getFragment(Activity activity) {
        return getFragment(new ut4(activity));
    }

    public static bu4 getFragment(ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }
}
