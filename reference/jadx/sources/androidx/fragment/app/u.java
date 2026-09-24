package androidx.fragment.app;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import defpackage.bt5;
import defpackage.hu4;
import defpackage.io1;
import defpackage.ke;
import defpackage.ro;
import defpackage.rt4;
import defpackage.st4;
import defpackage.ur3;
import defpackage.ux6;
import defpackage.yt1;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class u extends io1 {
    boolean mCreated;
    boolean mResumed;
    final ke mFragments = new ke(new t(this), 7);
    final hu4 mFragmentLifecycleRegistry = new hu4(this);
    boolean mStopped = true;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.fragment.app.r] */
    public u() {
        getSavedStateRegistry().h("android:support:lifecycle", new ux6() { // from class: androidx.fragment.app.p
            @Override // defpackage.ux6
            public final Bundle a() {
                u uVar;
                do {
                    uVar = this.a;
                } while (u.m(uVar.getSupportFragmentManager()));
                uVar.mFragmentLifecycleRegistry.d(rt4.ON_STOP);
                return new Bundle();
            }
        });
        addOnConfigurationChangedListener(new yt1() { // from class: androidx.fragment.app.q
            @Override // defpackage.yt1
            public final void accept(Object obj) {
                this.a.mFragments.f();
            }
        });
        addOnNewIntentListener(new yt1() { // from class: androidx.fragment.app.r
            @Override // defpackage.yt1
            public final void accept(Object obj) {
                this.a.mFragments.f();
            }
        });
        addOnContextAvailableListener(new bt5() { // from class: androidx.fragment.app.s
            @Override // defpackage.bt5
            public final void a(io1 io1Var) {
                t tVar = (t) this.a.mFragments.b;
                tVar.k.b(tVar, tVar, null);
            }
        });
    }

    public static boolean m(z zVar) {
        boolean zM = false;
        for (o oVar : zVar.c.f()) {
            if (oVar != null) {
                t tVar = oVar.mHost;
                if ((tVar == null ? null : tVar.n) != null) {
                    zM |= m(oVar.getChildFragmentManager());
                }
                f0 f0Var = oVar.mViewLifecycleOwner;
                st4 st4Var = st4.c;
                st4 st4Var2 = st4.d;
                if (f0Var != null) {
                    f0Var.b();
                    if (f0Var.e.d.compareTo(st4Var2) >= 0) {
                        hu4 hu4Var = oVar.mViewLifecycleOwner.e;
                        hu4Var.c("setCurrentState");
                        hu4Var.e(st4Var);
                        zM = true;
                    }
                }
                if (oVar.mLifecycleRegistry.d.compareTo(st4Var2) >= 0) {
                    hu4 hu4Var2 = oVar.mLifecycleRegistry;
                    hu4Var2.c("setCurrentState");
                    hu4Var2.e(st4Var);
                    zM = true;
                }
            }
        }
        return zM;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:25:0x003f  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.app.Activity
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (strArr != null && strArr.length != 0) {
            String str2 = strArr[0];
            switch (str2.hashCode()) {
                case -645125871:
                    if (str2.equals("--translation") && Build.VERSION.SDK_INT >= 31) {
                    }
                    break;
                case 100470631:
                    if (str2.equals("--dump-dumpable")) {
                        if (Build.VERSION.SDK_INT >= 33) {
                        }
                    }
                    break;
                case 472614934:
                    if (str2.equals("--list-dumpables")) {
                        if (Build.VERSION.SDK_INT >= 33) {
                        }
                    }
                    break;
                case 1159329357:
                    if (str2.equals("--contentcapture") && Build.VERSION.SDK_INT >= 29) {
                    }
                    break;
                case 1455016274:
                    if (str2.equals("--autofill")) {
                    }
                    break;
            }
            return;
        }
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str3 = str + "  ";
        printWriter.print(str3);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print(" mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        if (getApplication() != null) {
            new ro(this, getViewModelStore()).e(str3, printWriter);
        }
        ((t) this.mFragments.b).k.v(str, fileDescriptor, printWriter, strArr);
    }

    public final ur3 getSupportFragmentManager() {
        return ((t) this.mFragments.b).k;
    }

    @Override // defpackage.io1, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.f();
        super.onActivityResult(i, i2, intent);
    }

    @Override // defpackage.io1, defpackage.ho1, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.d(rt4.ON_CREATE);
        ur3 ur3Var = ((t) this.mFragments.b).k;
        ur3Var.H = false;
        ur3Var.I = false;
        ur3Var.O.g = false;
        ur3Var.u(1);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = ((t) this.mFragments.b).k.f.onCreateView(null, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ((t) this.mFragments.b).k.l();
        this.mFragmentLifecycleRegistry.d(rt4.ON_DESTROY);
    }

    @Override // defpackage.io1, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 6) {
            return ((t) this.mFragments.b).k.j();
        }
        return false;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        ((t) this.mFragments.b).k.u(5);
        this.mFragmentLifecycleRegistry.d(rt4.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.mFragmentLifecycleRegistry.d(rt4.ON_RESUME);
        ur3 ur3Var = ((t) this.mFragments.b).k;
        ur3Var.H = false;
        ur3Var.I = false;
        ur3Var.O.g = false;
        ur3Var.u(7);
    }

    @Override // defpackage.io1, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.mFragments.f();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        ke keVar = this.mFragments;
        keVar.f();
        super.onResume();
        this.mResumed = true;
        ((t) keVar.b).k.z(true);
    }

    @Override // android.app.Activity
    public void onStart() {
        ke keVar = this.mFragments;
        keVar.f();
        t tVar = (t) keVar.b;
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            ur3 ur3Var = tVar.k;
            ur3Var.H = false;
            ur3Var.I = false;
            ur3Var.O.g = false;
            ur3Var.u(4);
        }
        tVar.k.z(true);
        this.mFragmentLifecycleRegistry.d(rt4.ON_START);
        ur3 ur3Var2 = tVar.k;
        ur3Var2.H = false;
        ur3Var2.I = false;
        ur3Var2.O.g = false;
        ur3Var2.u(5);
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.mFragments.f();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        while (m(getSupportFragmentManager())) {
        }
        ur3 ur3Var = ((t) this.mFragments.b).k;
        ur3Var.I = true;
        ur3Var.O.g = true;
        ur3Var.u(4);
        this.mFragmentLifecycleRegistry.d(rt4.ON_STOP);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = ((t) this.mFragments.b).k.f.onCreateView(view, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewOnCreateView;
    }
}
