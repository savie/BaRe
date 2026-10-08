package androidx.fragment.app;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import defpackage.as3;
import defpackage.as4;
import defpackage.ba7;
import defpackage.bs3;
import defpackage.c6;
import defpackage.ca7;
import defpackage.cr3;
import defpackage.cx3;
import defpackage.cy0;
import defpackage.d6;
import defpackage.dr3;
import defpackage.dz4;
import defpackage.ej5;
import defpackage.eq3;
import defpackage.es7;
import defpackage.fr3;
import defpackage.fu4;
import defpackage.gj5;
import defpackage.gz4;
import defpackage.h9;
import defpackage.hu4;
import defpackage.j9;
import defpackage.km5;
import defpackage.l0;
import defpackage.lj3;
import defpackage.m22;
import defpackage.ms8;
import defpackage.n81;
import defpackage.o9;
import defpackage.ot9;
import defpackage.ph6;
import defpackage.ro;
import defpackage.rr3;
import defpackage.rt4;
import defpackage.st4;
import defpackage.ur3;
import defpackage.vl8;
import defpackage.vx6;
import defpackage.w00;
import defpackage.w24;
import defpackage.wl8;
import defpackage.wx6;
import defpackage.xr3;
import defpackage.xx6;
import defpackage.yj7;
import defpackage.yl8;
import defpackage.zl8;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o implements ComponentCallbacks, View.OnCreateContextMenuListener, fu4, zl8, w24, wx6 {
    static final Object USE_DEFAULT_TRANSITION = new Object();
    boolean mAdded;
    dr3 mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    private boolean mCalled;
    ViewGroup mContainer;
    int mContainerId;
    xx6 mDefaultFactory;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    z mFragmentManager;
    boolean mFromLayout;
    boolean mHidden;
    boolean mHiddenChanged;
    t mHost;
    boolean mInDynamicContainer;
    boolean mInLayout;
    boolean mIsCreated;
    LayoutInflater mLayoutInflater;
    hu4 mLifecycleRegistry;
    st4 mMaxState;
    private final AtomicInteger mNextLocalRequestCode;
    private final ArrayList<fr3> mOnPreAttachedListeners;
    o mParentFragment;
    boolean mPerformedCreateView;
    public String mPreviousWho;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    Bundle mSavedFragmentState;
    private final k mSavedStateAttachListener;
    w00 mSavedStateRegistryController;
    Boolean mSavedUserVisibleHint;
    Bundle mSavedViewRegistryState;
    SparseArray<Parcelable> mSavedViewState;
    String mTag;
    o mTarget;
    int mTargetRequestCode;
    boolean mTransitioning;
    View mView;
    f0 mViewLifecycleOwner;
    final gj5 mViewLifecycleOwnerLiveData;
    int mState = -1;
    String mWho = UUID.randomUUID().toString();
    String mTargetWho = null;
    private Boolean mIsPrimaryNavigationFragment = null;
    ur3 mChildFragmentManager = new ur3();
    boolean mMenuVisible = true;
    boolean mUserVisibleHint = true;

    public o() {
        new j(this);
        this.mMaxState = st4.e;
        this.mViewLifecycleOwnerLiveData = new gj5();
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mOnPreAttachedListeners = new ArrayList<>();
        this.mSavedStateAttachListener = new k(this);
        h();
    }

    public Activity c() {
        return getActivity();
    }

    public ms8 createFragmentContainer() {
        return new l(this);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(false);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mSavedViewRegistryState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.mSavedViewRegistryState);
        }
        o oVarG = g(false);
        if (oVarG != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(oVarG);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        dr3 dr3Var = this.mAnimationInfo;
        printWriter.println(dr3Var == null ? false : dr3Var.a);
        dr3 dr3Var2 = this.mAnimationInfo;
        if ((dr3Var2 == null ? 0 : dr3Var2.b) != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            dr3 dr3Var3 = this.mAnimationInfo;
            printWriter.println(dr3Var3 == null ? 0 : dr3Var3.b);
        }
        dr3 dr3Var4 = this.mAnimationInfo;
        if ((dr3Var4 == null ? 0 : dr3Var4.c) != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            dr3 dr3Var5 = this.mAnimationInfo;
            printWriter.println(dr3Var5 == null ? 0 : dr3Var5.c);
        }
        dr3 dr3Var6 = this.mAnimationInfo;
        if ((dr3Var6 == null ? 0 : dr3Var6.d) != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            dr3 dr3Var7 = this.mAnimationInfo;
            printWriter.println(dr3Var7 == null ? 0 : dr3Var7.d);
        }
        dr3 dr3Var8 = this.mAnimationInfo;
        if ((dr3Var8 == null ? 0 : dr3Var8.e) != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            dr3 dr3Var9 = this.mAnimationInfo;
            printWriter.println(dr3Var9 != null ? dr3Var9.e : 0);
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (getContext() != null) {
            new ro(this, getViewModelStore()).e(str, printWriter);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        this.mChildFragmentManager.v(str.concat("  "), fileDescriptor, printWriter, strArr);
    }

    public final dr3 e() {
        if (this.mAnimationInfo == null) {
            dr3 dr3Var = new dr3();
            Object obj = USE_DEFAULT_TRANSITION;
            dr3Var.g = obj;
            dr3Var.h = obj;
            dr3Var.i = obj;
            dr3Var.j = 1.0f;
            dr3Var.k = null;
            this.mAnimationInfo = dr3Var;
        }
        return this.mAnimationInfo;
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int f() {
        st4 st4Var = this.mMaxState;
        return (st4Var == st4.b || this.mParentFragment == null) ? st4Var.ordinal() : Math.min(st4Var.ordinal(), this.mParentFragment.f());
    }

    public final o g(boolean z) {
        String str;
        if (z) {
            as3 as3Var = bs3.a;
            bs3.b(new cx3(this, "Attempting to get target fragment from fragment " + this));
            bs3.a(this).getClass();
        }
        o oVar = this.mTarget;
        if (oVar != null) {
            return oVar;
        }
        z zVar = this.mFragmentManager;
        if (zVar == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return zVar.c.b(str);
    }

    public final String generateActivityResultKey() {
        return "fragment_" + this.mWho + "_rq#" + this.mNextLocalRequestCode.getAndIncrement();
    }

    public final u getActivity() {
        t tVar = this.mHost;
        if (tVar == null) {
            return null;
        }
        return tVar.d;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final z getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        l0.e(eq3.i("Fragment ", this, " has not been attached yet."));
        return null;
    }

    public final Context getContext() {
        t tVar = this.mHost;
        if (tVar == null) {
            return null;
        }
        return tVar.e;
    }

    @Override // defpackage.w24
    public final ej5 getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        if (application == null && z.K(3)) {
            Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        ej5 ej5Var = new ej5(0);
        LinkedHashMap linkedHashMap = ej5Var.a;
        if (application != null) {
            linkedHashMap.put(vl8.d, application);
        }
        linkedHashMap.put(cy0.c, this);
        linkedHashMap.put(cy0.d, this);
        Bundle bundle = this.mArguments;
        if (bundle != null) {
            linkedHashMap.put(cy0.e, bundle);
        }
        return ej5Var;
    }

    @Override // defpackage.w24
    public final wl8 getDefaultViewModelProviderFactory() {
        Application application = null;
        if (this.mFragmentManager == null) {
            l0.e("Can't access ViewModels from detached fragment");
            return null;
        }
        if (this.mDefaultFactory == null) {
            for (Context applicationContext = requireContext().getApplicationContext(); applicationContext instanceof ContextWrapper; applicationContext = ((ContextWrapper) applicationContext).getBaseContext()) {
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
            }
            if (application == null && z.K(3)) {
                Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory");
            }
            this.mDefaultFactory = new xx6(application, this, this.mArguments);
        }
        return this.mDefaultFactory;
    }

    @Deprecated
    public final z getFragmentManager() {
        return this.mFragmentManager;
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        if (layoutInflater != null) {
            return layoutInflater;
        }
        LayoutInflater layoutInflaterOnGetLayoutInflater = onGetLayoutInflater(null);
        this.mLayoutInflater = layoutInflaterOnGetLayoutInflater;
        return layoutInflaterOnGetLayoutInflater;
    }

    @Override // defpackage.fu4
    public final hu4 getLifecycle() {
        return this.mLifecycleRegistry;
    }

    public final o getParentFragment() {
        return this.mParentFragment;
    }

    public final z getParentFragmentManager() {
        z zVar = this.mFragmentManager;
        if (zVar != null) {
            return zVar;
        }
        l0.e(eq3.i("Fragment ", this, " not associated with a fragment manager."));
        return null;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Override // defpackage.wx6
    public final ot9 getSavedStateRegistry() {
        return (ot9) this.mSavedStateRegistryController.c;
    }

    public final String getString(int i) {
        return getResources().getString(i);
    }

    public final View getView() {
        return this.mView;
    }

    public final f0 getViewLifecycleOwner() {
        f0 f0Var = this.mViewLifecycleOwner;
        if (f0Var != null) {
            return f0Var;
        }
        l0.e(eq3.i("Can't access the Fragment View's LifecycleOwner for ", this, " when getView() is null i.e., before onCreateView() or after onDestroyView()"));
        return null;
    }

    @Override // defpackage.zl8
    public final yl8 getViewModelStore() {
        if (this.mFragmentManager == null) {
            l0.e("Can't access ViewModels from detached fragment");
            return null;
        }
        if (f() == 1) {
            l0.e("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
            return null;
        }
        HashMap map = this.mFragmentManager.O.d;
        yl8 yl8Var = (yl8) map.get(this.mWho);
        if (yl8Var != null) {
            return yl8Var;
        }
        yl8 yl8Var2 = new yl8();
        map.put(this.mWho, yl8Var2);
        return yl8Var2;
    }

    public final void h() {
        this.mLifecycleRegistry = new hu4(this);
        this.mSavedStateRegistryController = new w00(new vx6(this, new as4(this, 10)));
        this.mDefaultFactory = null;
        ArrayList<fr3> arrayList = this.mOnPreAttachedListeners;
        k kVar = this.mSavedStateAttachListener;
        if (arrayList.contains(kVar)) {
            return;
        }
        if (this.mState >= 0) {
            kVar.a();
        } else {
            arrayList.add(kVar);
        }
    }

    public final void initState() {
        h();
        this.mPreviousWho = this.mWho;
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new ur3();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        if (this.mHidden) {
            return true;
        }
        z zVar = this.mFragmentManager;
        if (zVar != null) {
            o oVar = this.mParentFragment;
            zVar.getClass();
            if (oVar == null ? false : oVar.isHidden()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        if (z.K(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i + " resultCode: " + i2 + " data: " + intent);
        }
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        t tVar = this.mHost;
        if ((tVar == null ? null : tVar.d) != null) {
            this.mCalled = true;
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public void onCreate(Bundle bundle) {
        Bundle bundle2;
        this.mCalled = true;
        Bundle bundle3 = this.mSavedFragmentState;
        if (bundle3 != null && (bundle2 = bundle3.getBundle("childFragmentManager")) != null) {
            this.mChildFragmentManager.X(bundle2);
            ur3 ur3Var = this.mChildFragmentManager;
            ur3Var.H = false;
            ur3Var.I = false;
            ur3Var.O.g = false;
            ur3Var.u(1);
        }
        ur3 ur3Var2 = this.mChildFragmentManager;
        if (ur3Var2.v >= 1) {
            return;
        }
        ur3Var2.H = false;
        ur3Var2.I = false;
        ur3Var2.O.g = false;
        ur3Var2.u(1);
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        t tVar = this.mHost;
        if (tVar == null) {
            l0.e("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
            return null;
        }
        u uVar = tVar.n;
        LayoutInflater layoutInflaterCloneInContext = uVar.getLayoutInflater().cloneInContext(uVar);
        layoutInflaterCloneInContext.setFactory2(this.mChildFragmentManager.f);
        return layoutInflaterCloneInContext;
    }

    public final void onInflate() {
        this.mCalled = true;
        t tVar = this.mHost;
        if ((tVar == null ? null : tVar.d) != null) {
            this.mCalled = true;
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.mCalled = true;
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    public final void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.Q();
        this.mState = 3;
        this.mCalled = false;
        this.mCalled = true;
        if (!this.mCalled) {
            throw new es7(eq3.i("Fragment ", this, " did not call through to super.onActivityCreated()"));
        }
        if (z.K(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + this);
        }
        if (this.mView != null) {
            Bundle bundle2 = this.mSavedFragmentState;
            Bundle bundle3 = bundle2 != null ? bundle2.getBundle("savedInstanceState") : null;
            SparseArray<Parcelable> sparseArray = this.mSavedViewState;
            if (sparseArray != null) {
                this.mView.restoreHierarchyState(sparseArray);
                this.mSavedViewState = null;
            }
            this.mCalled = false;
            onViewStateRestored(bundle3);
            if (!this.mCalled) {
                throw new es7(eq3.i("Fragment ", this, " did not call through to super.onViewStateRestored()"));
            }
            if (this.mView != null) {
                this.mViewLifecycleOwner.a(rt4.ON_CREATE);
            }
        }
        this.mSavedFragmentState = null;
        ur3 ur3Var = this.mChildFragmentManager;
        ur3Var.H = false;
        ur3Var.I = false;
        ur3Var.O.g = false;
        ur3Var.u(4);
    }

    public final void performAttach() {
        ArrayList<fr3> arrayList = this.mOnPreAttachedListeners;
        Iterator<fr3> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        arrayList.clear();
        this.mChildFragmentManager.b(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach(this.mHost.e);
        if (!this.mCalled) {
            throw new es7(eq3.i("Fragment ", this, " did not call through to super.onAttach()"));
        }
        Iterator it2 = this.mFragmentManager.p.iterator();
        while (it2.hasNext()) {
            ((xr3) it2.next()).a();
        }
        ur3 ur3Var = this.mChildFragmentManager;
        ur3Var.H = false;
        ur3Var.I = false;
        ur3Var.O.g = false;
        ur3Var.u(0);
    }

    public final void performConfigurationChanged() {
        this.mCalled = true;
    }

    public final void performCreate(Bundle bundle) {
        this.mChildFragmentManager.Q();
        this.mState = 1;
        this.mCalled = false;
        this.mLifecycleRegistry.a(new m(this));
        onCreate(bundle);
        this.mIsCreated = true;
        if (!this.mCalled) {
            throw new es7(eq3.i("Fragment ", this, " did not call through to super.onCreate()"));
        }
        this.mLifecycleRegistry.d(rt4.ON_CREATE);
    }

    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.Q();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new f0(this, getViewModelStore(), new i(this));
        View viewOnCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = viewOnCreateView;
        f0 f0Var = this.mViewLifecycleOwner;
        if (viewOnCreateView == null) {
            if (f0Var.e == null) {
                this.mViewLifecycleOwner = null;
                return;
            } else {
                l0.e("Called getViewLifecycleOwner() but onCreateView() returned null");
                return;
            }
        }
        f0Var.b();
        if (z.K(3)) {
            Log.d("FragmentManager", "Setting ViewLifecycleOwner on View " + this.mView + " for Fragment " + this);
        }
        View view = this.mView;
        f0 f0Var2 = this.mViewLifecycleOwner;
        view.getClass();
        view.setTag(R.id.view_tree_lifecycle_owner, f0Var2);
        View view2 = this.mView;
        f0 f0Var3 = this.mViewLifecycleOwner;
        view2.getClass();
        view2.setTag(R.id.view_tree_view_model_store_owner, f0Var3);
        View view3 = this.mView;
        f0 f0Var4 = this.mViewLifecycleOwner;
        view3.getClass();
        view3.setTag(R.id.view_tree_saved_state_registry_owner, f0Var4);
        this.mViewLifecycleOwnerLiveData.k(this.mViewLifecycleOwner);
    }

    public final void performDestroy() {
        this.mChildFragmentManager.l();
        this.mLifecycleRegistry.d(rt4.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (!this.mCalled) {
            throw new es7(eq3.i("Fragment ", this, " did not call through to super.onDestroy()"));
        }
    }

    public final void performDestroyView() {
        this.mChildFragmentManager.u(1);
        if (this.mView != null) {
            f0 f0Var = this.mViewLifecycleOwner;
            f0Var.b();
            if (f0Var.e.d.compareTo(st4.c) >= 0) {
                this.mViewLifecycleOwner.a(rt4.ON_DESTROY);
            }
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (!this.mCalled) {
            throw new es7(eq3.i("Fragment ", this, " did not call through to super.onDestroyView()"));
        }
        yl8 viewModelStore = getViewModelStore();
        viewModelStore.getClass();
        m22 m22Var = m22.b;
        m22Var.getClass();
        lj3 lj3Var = new lj3(viewModelStore, gz4.d, m22Var);
        n81 n81VarA = ph6.a(gz4.class);
        String strB = n81VarA.b();
        if (strB == null) {
            c6.f("Local and anonymous classes can not be ViewModels");
            return;
        }
        yj7 yj7Var = ((gz4) lj3Var.b(n81VarA, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(strB))).b;
        int i = yj7Var.c;
        for (int i2 = 0; i2 < i; i2++) {
            ((dz4) yj7Var.c(i2)).l();
        }
        this.mPerformedCreateView = false;
    }

    public final void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (!this.mCalled) {
            throw new es7(eq3.i("Fragment ", this, " did not call through to super.onDetach()"));
        }
        ur3 ur3Var = this.mChildFragmentManager;
        if (ur3Var.J) {
            return;
        }
        ur3Var.l();
        this.mChildFragmentManager = new ur3();
    }

    public final void performLowMemory() {
        this.mCalled = true;
    }

    public final void performPause() {
        this.mChildFragmentManager.u(5);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(rt4.ON_PAUSE);
        }
        this.mLifecycleRegistry.d(rt4.ON_PAUSE);
        this.mState = 6;
        this.mCalled = true;
    }

    public final void performPrimaryNavigationFragmentChanged() {
        this.mFragmentManager.getClass();
        boolean zO = z.O(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != zO) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(zO);
            ur3 ur3Var = this.mChildFragmentManager;
            ur3Var.g0();
            ur3Var.r(ur3Var.z);
        }
    }

    public final void performResume() {
        this.mChildFragmentManager.Q();
        this.mChildFragmentManager.z(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new es7(eq3.i("Fragment ", this, " did not call through to super.onResume()"));
        }
        hu4 hu4Var = this.mLifecycleRegistry;
        rt4 rt4Var = rt4.ON_RESUME;
        hu4Var.d(rt4Var);
        if (this.mView != null) {
            this.mViewLifecycleOwner.e.d(rt4Var);
        }
        ur3 ur3Var = this.mChildFragmentManager;
        ur3Var.H = false;
        ur3Var.I = false;
        ur3Var.O.g = false;
        ur3Var.u(7);
    }

    public final void performStart() {
        this.mChildFragmentManager.Q();
        this.mChildFragmentManager.z(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new es7(eq3.i("Fragment ", this, " did not call through to super.onStart()"));
        }
        hu4 hu4Var = this.mLifecycleRegistry;
        rt4 rt4Var = rt4.ON_START;
        hu4Var.d(rt4Var);
        if (this.mView != null) {
            this.mViewLifecycleOwner.e.d(rt4Var);
        }
        ur3 ur3Var = this.mChildFragmentManager;
        ur3Var.H = false;
        ur3Var.I = false;
        ur3Var.O.g = false;
        ur3Var.u(5);
    }

    public final void performStop() {
        ur3 ur3Var = this.mChildFragmentManager;
        ur3Var.I = true;
        ur3Var.O.g = true;
        ur3Var.u(4);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(rt4.ON_STOP);
        }
        this.mLifecycleRegistry.d(rt4.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (!this.mCalled) {
            throw new es7(eq3.i("Fragment ", this, " did not call through to super.onStop()"));
        }
    }

    public final o9 registerForActivityResult(h9 h9Var, j9 j9Var) {
        km5 km5Var = new km5(this, 10);
        if (this.mState > 1) {
            l0.e(eq3.i("Fragment ", this, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."));
            return null;
        }
        AtomicReference atomicReference = new AtomicReference();
        n nVar = new n(this, km5Var, atomicReference, j9Var, h9Var);
        if (this.mState >= 0) {
            nVar.a();
        } else {
            this.mOnPreAttachedListeners.add(nVar);
        }
        return new cr3(atomicReference);
    }

    public final u requireActivity() {
        u activity = getActivity();
        if (activity != null) {
            return activity;
        }
        l0.e(eq3.i("Fragment ", this, " not attached to an activity."));
        return null;
    }

    public final Bundle requireArguments() {
        Bundle bundle = this.mArguments;
        if (bundle != null) {
            return bundle;
        }
        l0.e(eq3.i("Fragment ", this, " does not have any arguments."));
        return null;
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        l0.e(eq3.i("Fragment ", this, " not attached to a context."));
        return null;
    }

    public final View requireView() {
        View view = this.mView;
        if (view != null) {
            return view;
        }
        l0.e(eq3.i("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
        return null;
    }

    public final void setAnimations(int i, int i2, int i3, int i4) {
        if (this.mAnimationInfo == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        e().b = i;
        e().c = i2;
        e().d = i3;
        e().e = i4;
    }

    public final void setArguments(Bundle bundle) {
        z zVar = this.mFragmentManager;
        if (zVar == null || !(zVar.H || zVar.I)) {
            this.mArguments = bundle;
        } else {
            l0.e("Fragment already added and state has been saved");
        }
    }

    public final void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
        }
    }

    @Deprecated
    public final void setTargetFragment(o oVar) {
        if (oVar != null) {
            as3 as3Var = bs3.a;
            bs3.b(new ba7(this, "Attempting to set target fragment " + oVar + " with request code 0 for fragment " + this));
            bs3.a(this).getClass();
        }
        z zVar = this.mFragmentManager;
        z zVar2 = oVar != null ? oVar.mFragmentManager : null;
        if (zVar != null && zVar2 != null && zVar != zVar2) {
            c6.f(eq3.i("Fragment ", oVar, " must share the same FragmentManager to be set as a target fragment"));
            return;
        }
        for (o oVarG = oVar; oVarG != null; oVarG = oVarG.g(false)) {
            if (oVarG == this) {
                d6.k("Setting ", oVar, " as the target of ", this, " would create a target cycle");
                return;
            }
        }
        if (oVar == null) {
            this.mTargetWho = null;
            this.mTarget = null;
        } else if (this.mFragmentManager == null || oVar.mFragmentManager == null) {
            this.mTargetWho = null;
            this.mTarget = oVar;
        } else {
            this.mTargetWho = oVar.mWho;
            this.mTarget = null;
        }
        this.mTargetRequestCode = 0;
    }

    @Deprecated
    public final void setUserVisibleHint(boolean z) {
        as3 as3Var = bs3.a;
        bs3.b(new ca7(this, "Attempting to set user visible hint to " + z + " for fragment " + this));
        bs3.a(this).getClass();
        boolean z2 = false;
        if (!this.mUserVisibleHint && z && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            z zVar = this.mFragmentManager;
            d0 d0VarG = zVar.g(this);
            o oVar = d0VarG.c;
            if (oVar.mDeferStart) {
                if (zVar.b) {
                    zVar.K = true;
                } else {
                    oVar.mDeferStart = false;
                    d0VarG.k();
                }
            }
        }
        this.mUserVisibleHint = z;
        if (this.mState < 5 && !z) {
            z2 = true;
        }
        this.mDeferStart = z2;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public final void startActivity(Intent intent) {
        t tVar = this.mHost;
        if (tVar == null) {
            l0.e(eq3.i("Fragment ", this, " not attached to Activity"));
        } else {
            intent.getClass();
            tVar.e.startActivity(intent, null);
        }
    }

    @Deprecated
    public final void startActivityForResult(Intent intent, int i) {
        if (this.mHost == null) {
            l0.e(eq3.i("Fragment ", this, " not attached to Activity"));
            return;
        }
        z parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.C != null) {
            String str = this.mWho;
            rr3 rr3Var = new rr3();
            rr3Var.a = str;
            rr3Var.b = i;
            parentFragmentManager.F.addLast(rr3Var);
            parentFragmentManager.C.a(intent);
            return;
        }
        t tVar = parentFragmentManager.w;
        tVar.getClass();
        intent.getClass();
        if (i == -1) {
            tVar.e.startActivity(intent, null);
        } else {
            l0.e("Starting activity with a requestCode requires a FragmentActivity host");
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.mWho);
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(" tag=");
            sb.append(this.mTag);
        }
        sb.append(")");
        return sb.toString();
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onViewCreated(View view, Bundle bundle) {
    }
}
