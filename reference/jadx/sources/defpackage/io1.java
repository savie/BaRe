package defpackage;

import android.app.Application;
import android.app.PictureInPictureUiState;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Trace;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.window.OnBackInvokedDispatcher;
import androidx.fragment.app.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class io1 extends ho1 implements zl8, w24, wx6 {
    private yl8 _viewModelStore;
    private final go1 activityResultRegistry;
    private final gv7 defaultViewModelProviderFactory$delegate;
    private boolean dispatchingOnMultiWindowModeChanged;
    private boolean dispatchingOnPictureInPictureModeChanged;
    private final gv7 fullyDrawnReporter$delegate;
    private final AtomicInteger nextLocalRequestCode;
    private final gv7 onBackPressedDispatcher$delegate;
    private final gv7 onBackPressedInput$delegate;
    private final CopyOnWriteArrayList<yt1> onConfigurationChangedListeners;
    private final CopyOnWriteArrayList<yt1> onMultiWindowModeChangedListeners;
    private final CopyOnWriteArrayList<yt1> onNewIntentListeners;
    private final CopyOnWriteArrayList<yt1> onPictureInPictureModeChangedListeners;
    private final CopyOnWriteArrayList<yt1> onPictureInPictureUiStateChangedListeners;
    private final CopyOnWriteArrayList<yt1> onTrimMemoryListeners;
    private final CopyOnWriteArrayList<Runnable> onUserLeaveHintListeners;
    private final do1 reportFullyDrawnExecutor;
    private final w00 savedStateRegistryController;
    private final cv1 contextAwareHelper = new cv1();
    private final ka menuHostHelper = new ka(new in0(this, 1));

    public io1() {
        vx6 vx6Var = new vx6(this, new as4(this, 10));
        w00 w00Var = new w00(vx6Var);
        this.savedStateRegistryController = w00Var;
        this.reportFullyDrawnExecutor = new do1(this);
        this.fullyDrawnReporter$delegate = new gv7(new d76(this, 13));
        this.nextLocalRequestCode = new AtomicInteger();
        this.activityResultRegistry = new go1(this);
        this.onConfigurationChangedListeners = new CopyOnWriteArrayList<>();
        this.onTrimMemoryListeners = new CopyOnWriteArrayList<>();
        this.onNewIntentListeners = new CopyOnWriteArrayList<>();
        this.onMultiWindowModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onPictureInPictureModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onPictureInPictureUiStateChangedListeners = new CopyOnWriteArrayList<>();
        this.onUserLeaveHintListeners = new CopyOnWriteArrayList<>();
        this.onBackPressedInput$delegate = new gv7(new kf(this, 18));
        if (super.getLifecycle() == null) {
            l0.e("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
            throw null;
        }
        super.getLifecycle().a(new xn1(this, 0));
        super.getLifecycle().a(new au4() { // from class: yn1
            @Override // defpackage.au4
            public final void g(fu4 fu4Var, rt4 rt4Var) {
                io1.h(this.a, fu4Var, rt4Var);
            }
        });
        super.getLifecycle().a(new bo1(this, 0));
        vx6Var.a();
        cy0.q(this);
        ((ot9) w00Var.c).h("android:support:activity-result", new ux6() { // from class: zn1
            @Override // defpackage.ux6
            public final Bundle a() {
                return io1.e(this.a);
            }
        });
        addOnContextAvailableListener(new bt5() { // from class: ao1
            @Override // defpackage.bt5
            public final void a(io1 io1Var) {
                io1.j(this.a, io1Var);
            }
        });
        this.defaultViewModelProviderFactory$delegate = new gv7(new ak(this, 10));
        this.onBackPressedDispatcher$delegate = new gv7(new bk(this, 12));
    }

    public static Bundle e(io1 io1Var) {
        Bundle bundle = new Bundle();
        go1 go1Var = io1Var.activityResultRegistry;
        go1Var.getClass();
        LinkedHashMap linkedHashMap = go1Var.b;
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(linkedHashMap.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(linkedHashMap.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(go1Var.d));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", new Bundle(go1Var.g));
        return bundle;
    }

    public static void f(zs5 zs5Var, io1 io1Var, fu4 fu4Var, rt4 rt4Var) {
        if (rt4Var == rt4.ON_CREATE) {
            OnBackInvokedDispatcher onBackInvokedDispatcher = io1Var.getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.getClass();
            zs5Var.c(onBackInvokedDispatcher);
        }
    }

    public static at3 g(io1 io1Var) {
        return new at3(io1Var.reportFullyDrawnExecutor, new ek(io1Var, 16));
    }

    public static void h(io1 io1Var, fu4 fu4Var, rt4 rt4Var) {
        if (rt4Var == rt4.ON_DESTROY) {
            io1Var.contextAwareHelper.b = null;
            if (!io1Var.isChangingConfigurations()) {
                io1Var.getViewModelStore().a();
            }
            do1 do1Var = io1Var.reportFullyDrawnExecutor;
            io1 io1Var2 = do1Var.d;
            io1Var2.getWindow().getDecorView().removeCallbacks(do1Var);
            io1Var2.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(do1Var);
        }
    }

    public static void i(io1 io1Var) {
        try {
            super.onBackPressed();
        } catch (IllegalStateException e) {
            if (!pe4.d(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                throw e;
            }
        } catch (NullPointerException e2) {
            if (!pe4.d(e2.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                throw e2;
            }
        }
    }

    public static void j(io1 io1Var, Context context) {
        context.getClass();
        Bundle bundleC = ((ot9) io1Var.savedStateRegistryController.c).c("android:support:activity-result");
        if (bundleC != null) {
            go1 go1Var = io1Var.activityResultRegistry;
            LinkedHashMap linkedHashMap = go1Var.b;
            LinkedHashMap linkedHashMap2 = go1Var.a;
            Bundle bundle = go1Var.g;
            ArrayList<Integer> integerArrayList = bundleC.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
            ArrayList<String> stringArrayList = bundleC.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
            if (stringArrayList == null || integerArrayList == null) {
                return;
            }
            ArrayList<String> stringArrayList2 = bundleC.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
            if (stringArrayList2 != null) {
                go1Var.d.addAll(stringArrayList2);
            }
            Bundle bundle2 = bundleC.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
            if (bundle2 != null) {
                bundle.putAll(bundle2);
            }
            int size = stringArrayList.size();
            for (int i = 0; i < size; i++) {
                String str = stringArrayList.get(i);
                if (linkedHashMap.containsKey(str)) {
                    Integer num = (Integer) linkedHashMap.remove(str);
                    if (!bundle.containsKey(str)) {
                        nc8.f(linkedHashMap2);
                        linkedHashMap2.remove(num);
                    }
                }
                Integer num2 = integerArrayList.get(i);
                num2.getClass();
                int iIntValue = num2.intValue();
                String str2 = stringArrayList.get(i);
                str2.getClass();
                String str3 = str2;
                linkedHashMap2.put(Integer.valueOf(iIntValue), str3);
                go1Var.b.put(str3, Integer.valueOf(iIntValue));
            }
        }
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        this.reportFullyDrawnExecutor.a(decorView);
        super.addContentView(view, layoutParams);
    }

    public final void addMenuProvider(xc5 xc5Var) {
        xc5Var.getClass();
        ka kaVar = this.menuHostHelper;
        ((CopyOnWriteArrayList) kaVar.b).add(xc5Var);
        ((Runnable) kaVar.a).run();
    }

    public final void addOnConfigurationChangedListener(yt1 yt1Var) {
        yt1Var.getClass();
        this.onConfigurationChangedListeners.add(yt1Var);
    }

    public final void addOnContextAvailableListener(bt5 bt5Var) {
        cv1 cv1Var = this.contextAwareHelper;
        cv1Var.getClass();
        io1 io1Var = cv1Var.b;
        if (io1Var != null) {
            bt5Var.a(io1Var);
        }
        cv1Var.a.add(bt5Var);
    }

    public final void addOnMultiWindowModeChangedListener(yt1 yt1Var) {
        yt1Var.getClass();
        this.onMultiWindowModeChangedListeners.add(yt1Var);
    }

    public final void addOnNewIntentListener(r rVar) {
        this.onNewIntentListeners.add(rVar);
    }

    public final void addOnPictureInPictureModeChangedListener(yt1 yt1Var) {
        yt1Var.getClass();
        this.onPictureInPictureModeChangedListeners.add(yt1Var);
    }

    public final void addOnTrimMemoryListener(yt1 yt1Var) {
        yt1Var.getClass();
        this.onTrimMemoryListeners.add(yt1Var);
    }

    public final go1 getActivityResultRegistry() {
        return this.activityResultRegistry;
    }

    @Override // defpackage.w24
    public final ej5 getDefaultViewModelCreationExtras() {
        ej5 ej5Var = new ej5(0);
        Application application = getApplication();
        LinkedHashMap linkedHashMap = ej5Var.a;
        if (application != null) {
            linkedHashMap.put(vl8.d, getApplication());
        }
        linkedHashMap.put(cy0.c, this);
        linkedHashMap.put(cy0.d, this);
        Intent intent = getIntent();
        Bundle extras = intent != null ? intent.getExtras() : null;
        if (extras != null) {
            linkedHashMap.put(cy0.e, extras);
        }
        return ej5Var;
    }

    @Override // defpackage.w24
    public final wl8 getDefaultViewModelProviderFactory() {
        return (wl8) this.defaultViewModelProviderFactory$delegate.getValue();
    }

    public final at3 getFullyDrawnReporter() {
        return (at3) this.fullyDrawnReporter$delegate.getValue();
    }

    public final zs5 getOnBackPressedDispatcher() {
        return (zs5) this.onBackPressedDispatcher$delegate.getValue();
    }

    @Override // defpackage.wx6
    public final ot9 getSavedStateRegistry() {
        return (ot9) this.savedStateRegistryController.c;
    }

    @Override // defpackage.zl8
    public final yl8 getViewModelStore() {
        if (getApplication() == null) {
            l0.e("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
            return null;
        }
        l();
        yl8 yl8Var = this._viewModelStore;
        yl8Var.getClass();
        return yl8Var;
    }

    public final void initializeViewTreeOwners() {
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        decorView.setTag(R.id.view_tree_lifecycle_owner, this);
        View decorView2 = getWindow().getDecorView();
        decorView2.getClass();
        decorView2.setTag(R.id.view_tree_view_model_store_owner, this);
        View decorView3 = getWindow().getDecorView();
        decorView3.getClass();
        decorView3.setTag(R.id.view_tree_saved_state_registry_owner, this);
        View decorView4 = getWindow().getDecorView();
        decorView4.getClass();
        decorView4.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        View decorView5 = getWindow().getDecorView();
        decorView5.getClass();
        decorView5.setTag(R.id.report_drawn, this);
        View decorView6 = getWindow().getDecorView();
        decorView6.getClass();
        decorView6.setTag(R.id.view_tree_navigation_event_dispatcher_owner, this);
    }

    public final void k(final zs5 zs5Var) {
        super.getLifecycle().a(new au4() { // from class: wn1
            @Override // defpackage.au4
            public final void g(fu4 fu4Var, rt4 rt4Var) {
                io1.f(zs5Var, this, fu4Var, rt4Var);
            }
        });
    }

    public final void l() {
        if (this._viewModelStore == null) {
            co1 co1Var = (co1) getLastNonConfigurationInstance();
            if (co1Var != null) {
                this._viewModelStore = co1Var.a;
            }
            if (this._viewModelStore == null) {
                this._viewModelStore = new yl8();
            }
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.activityResultRegistry.a(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        ((tl2) this.onBackPressedInput$delegate.getValue()).a();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        configuration.getClass();
        super.onConfigurationChanged(configuration);
        Iterator<yt1> it = this.onConfigurationChangedListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().accept(configuration);
        }
    }

    @Override // defpackage.ho1, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.savedStateRegistryController.u(bundle);
        cv1 cv1Var = this.contextAwareHelper;
        cv1Var.getClass();
        cv1Var.b = this;
        Iterator it = cv1Var.a.iterator();
        while (it.hasNext()) {
            ((bt5) it.next()).a(this);
        }
        super.onCreate(bundle);
        int i = bk6.b;
        zj6.b(this);
        getPackageManager().hasSystemFeature("android.software.picture_in_picture");
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        menu.getClass();
        if (i != 0) {
            return true;
        }
        super.onCreatePanelMenu(i, menu);
        MenuInflater menuInflater = getMenuInflater();
        Iterator it = ((CopyOnWriteArrayList) this.menuHostHelper.b).iterator();
        while (it.hasNext()) {
            ((xc5) it.next()).c(menu, menuInflater);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        menuItem.getClass();
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            Iterator it = ((CopyOnWriteArrayList) this.menuHostHelper.b).iterator();
            while (it.hasNext()) {
                if (((xc5) it.next()).a(menuItem)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        configuration.getClass();
        this.dispatchingOnMultiWindowModeChanged = true;
        try {
            super.onMultiWindowModeChanged(z, configuration);
            this.dispatchingOnMultiWindowModeChanged = false;
            Iterator<yt1> it = this.onMultiWindowModeChangedListeners.iterator();
            it.getClass();
            while (it.hasNext()) {
                it.next().accept(new pi5(z));
            }
        } catch (Throwable th) {
            this.dispatchingOnMultiWindowModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        Iterator<yt1> it = this.onNewIntentListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        menu.getClass();
        Iterator it = ((CopyOnWriteArrayList) this.menuHostHelper.b).iterator();
        while (it.hasNext()) {
            ((xc5) it.next()).b(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        configuration.getClass();
        this.dispatchingOnPictureInPictureModeChanged = true;
        try {
            super.onPictureInPictureModeChanged(z, configuration);
            this.dispatchingOnPictureInPictureModeChanged = false;
            Iterator<yt1> it = this.onPictureInPictureModeChangedListeners.iterator();
            it.getClass();
            while (it.hasNext()) {
                it.next().accept(new j06(z));
            }
        } catch (Throwable th) {
            this.dispatchingOnPictureInPictureModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public final void onPictureInPictureUiStateChanged(PictureInPictureUiState pictureInPictureUiState) {
        pictureInPictureUiState.getClass();
        super.onPictureInPictureUiStateChanged(pictureInPictureUiState);
        cz4 cz4VarA = cm5.a(pictureInPictureUiState);
        Iterator<yt1> it = this.onPictureInPictureUiStateChangedListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().accept(cz4VarA);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        menu.getClass();
        if (i != 0) {
            return true;
        }
        super.onPreparePanel(i, view, menu);
        Iterator it = ((CopyOnWriteArrayList) this.menuHostHelper.b).iterator();
        while (it.hasNext()) {
            ((xc5) it.next()).d(menu);
        }
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        strArr.getClass();
        iArr.getClass();
        if (this.activityResultRegistry.a(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        co1 co1Var;
        yl8 yl8Var = this._viewModelStore;
        if (yl8Var == null && (co1Var = (co1) getLastNonConfigurationInstance()) != null) {
            yl8Var = co1Var.a;
        }
        if (yl8Var == null) {
            return null;
        }
        co1 co1Var2 = new co1();
        co1Var2.a = yl8Var;
        return co1Var2;
    }

    @Override // defpackage.ho1, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        if (super.getLifecycle() != null) {
            hu4 lifecycle = super.getLifecycle();
            lifecycle.getClass();
            lifecycle.c("setCurrentState");
            lifecycle.e(st4.c);
        }
        super.onSaveInstanceState(bundle);
        this.savedStateRegistryController.v(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        super.onTrimMemory(i);
        Iterator<yt1> it = this.onTrimMemoryListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().accept(Integer.valueOf(i));
        }
    }

    @Override // android.app.Activity
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        Iterator<Runnable> it = this.onUserLeaveHintListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().run();
        }
    }

    public final o9 registerForActivityResult(h9 h9Var, j9 j9Var) {
        go1 go1Var = this.activityResultRegistry;
        go1Var.getClass();
        return go1Var.c("activity_rq#" + this.nextLocalRequestCode.getAndIncrement(), this, j9Var, h9Var);
    }

    public final void removeMenuProvider(xc5 xc5Var) {
        xc5Var.getClass();
        ka kaVar = this.menuHostHelper;
        ((CopyOnWriteArrayList) kaVar.b).remove(xc5Var);
        if (((HashMap) kaVar.c).remove(xc5Var) == null) {
            ((Runnable) kaVar.a).run();
        } else {
            e6.d();
        }
    }

    public final void removeOnConfigurationChangedListener(yt1 yt1Var) {
        yt1Var.getClass();
        this.onConfigurationChangedListeners.remove(yt1Var);
    }

    public final void removeOnMultiWindowModeChangedListener(yt1 yt1Var) {
        yt1Var.getClass();
        this.onMultiWindowModeChangedListeners.remove(yt1Var);
    }

    public final void removeOnPictureInPictureModeChangedListener(yt1 yt1Var) {
        yt1Var.getClass();
        this.onPictureInPictureModeChangedListeners.remove(yt1Var);
    }

    public final void removeOnTrimMemoryListener(yt1 yt1Var) {
        yt1Var.getClass();
        this.onTrimMemoryListeners.remove(yt1Var);
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (iz1.p()) {
                iz1.b("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            at3 fullyDrawnReporter = getFullyDrawnReporter();
            synchronized (fullyDrawnReporter.b) {
                try {
                    fullyDrawnReporter.c = true;
                    Iterator it = fullyDrawnReporter.d.iterator();
                    while (it.hasNext()) {
                        ((bt3) it.next()).invoke();
                    }
                    fullyDrawnReporter.d.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            Trace.endSection();
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        initializeViewTreeOwners();
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        this.reportFullyDrawnExecutor.a(decorView);
        super.setContentView(i);
    }

    @Override // android.app.Activity
    public final void startActivityForResult(Intent intent, int i) {
        intent.getClass();
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public final void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        intentSender.getClass();
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    public final void startActivityForResult(Intent intent, int i, Bundle bundle) {
        intent.getClass();
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    public final void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        intentSender.getClass();
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        initializeViewTreeOwners();
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        this.reportFullyDrawnExecutor.a(decorView);
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        this.reportFullyDrawnExecutor.a(decorView);
        super.setContentView(view, layoutParams);
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z) {
        if (this.dispatchingOnMultiWindowModeChanged) {
            return;
        }
        Iterator<yt1> it = this.onMultiWindowModeChangedListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().accept(new pi5(z));
        }
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z) {
        if (this.dispatchingOnPictureInPictureModeChanged) {
            return;
        }
        Iterator<yt1> it = this.onPictureInPictureModeChangedListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().accept(new j06(z));
        }
    }
}
