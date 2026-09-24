package androidx.fragment.app;

import android.content.res.Resources;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import defpackage.ak7;
import defpackage.as3;
import defpackage.bs3;
import defpackage.c6;
import defpackage.dj7;
import defpackage.dl8;
import defpackage.dr3;
import defpackage.eq3;
import defpackage.l0;
import defpackage.or3;
import defpackage.qw8;
import defpackage.rw8;
import defpackage.st4;
import defpackage.ur3;
import defpackage.w00;
import defpackage.xs1;
import defpackage.zr3;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d0 {
    public final w00 a;
    public final e0 b;
    public final o c;
    public boolean d = false;
    public int e = -1;

    public d0(w00 w00Var, e0 e0Var, ClassLoader classLoader, or3 or3Var, Bundle bundle) {
        this.a = w00Var;
        this.b = e0Var;
        c0 c0Var = (c0) bundle.getParcelable("state");
        o oVarA = or3Var.a(c0Var.a);
        oVarA.mWho = c0Var.b;
        oVarA.mFromLayout = c0Var.c;
        oVarA.mInDynamicContainer = c0Var.d;
        oVarA.mRestored = true;
        oVarA.mFragmentId = c0Var.e;
        oVarA.mContainerId = c0Var.f;
        oVarA.mTag = c0Var.k;
        oVarA.mRetainInstance = c0Var.n;
        oVarA.mRemoving = c0Var.p;
        oVarA.mDetached = c0Var.q;
        oVarA.mHidden = c0Var.r;
        oVarA.mMaxState = st4.values()[c0Var.t];
        oVarA.mTargetWho = c0Var.x;
        oVarA.mTargetRequestCode = c0Var.y;
        oVarA.mUserVisibleHint = c0Var.G;
        this.c = oVarA;
        oVarA.mSavedFragmentState = bundle;
        Bundle bundle2 = bundle.getBundle("arguments");
        if (bundle2 != null) {
            bundle2.setClassLoader(classLoader);
        }
        oVarA.setArguments(bundle2);
        if (z.K(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + oVarA);
        }
    }

    public final void a() {
        boolean zK = z.K(3);
        o oVar = this.c;
        if (zK) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + oVar);
        }
        Bundle bundle = oVar.mSavedFragmentState;
        oVar.performActivityCreated(bundle != null ? bundle.getBundle("savedInstanceState") : null);
        this.a.c(oVar, false);
    }

    public final void b() {
        o oVar;
        View view;
        View view2;
        o oVar2 = this.c;
        View view3 = oVar2.mContainer;
        while (true) {
            oVar = null;
            if (view3 == null) {
                break;
            }
            Object tag = view3.getTag(R.id.fragment_container_view_tag);
            o oVar3 = tag instanceof o ? (o) tag : null;
            if (oVar3 != null) {
                oVar = oVar3;
                break;
            } else {
                Object parent = view3.getParent();
                view3 = parent instanceof View ? (View) parent : null;
            }
        }
        o oVar4 = oVar2.mParentFragment;
        if (oVar != null && oVar != oVar4) {
            int i = oVar2.mContainerId;
            as3 as3Var = bs3.a;
            StringBuilder sb = new StringBuilder("Attempting to nest fragment ");
            sb.append(oVar2);
            sb.append(" within the view of parent fragment ");
            sb.append(oVar);
            sb.append(" via container with ID ");
            bs3.b(new rw8(oVar2, xs1.m(sb, i, " without using parent's childFragmentManager")));
            bs3.a(oVar2).getClass();
        }
        ArrayList arrayList = this.b.a;
        ViewGroup viewGroup = oVar2.mContainer;
        int iIndexOfChild = -1;
        if (viewGroup != null) {
            int iIndexOf = arrayList.indexOf(oVar2);
            for (int i2 = iIndexOf - 1; i2 >= 0; i2--) {
                o oVar5 = (o) arrayList.get(i2);
                if (oVar5.mContainer == viewGroup && (view2 = oVar5.mView) != null) {
                    iIndexOfChild = viewGroup.indexOfChild(view2) + 1;
                }
            }
            while (true) {
                iIndexOf++;
                if (iIndexOf >= arrayList.size()) {
                    break;
                }
                o oVar6 = (o) arrayList.get(iIndexOf);
                if (oVar6.mContainer == viewGroup && (view = oVar6.mView) != null) {
                    iIndexOfChild = viewGroup.indexOfChild(view);
                    break;
                }
            }
        }
        oVar2.mContainer.addView(oVar2.mView, iIndexOfChild);
    }

    public final void c() {
        boolean zK = z.K(3);
        o oVar = this.c;
        if (zK) {
            Log.d("FragmentManager", "moveto ATTACHED: " + oVar);
        }
        o oVar2 = oVar.mTarget;
        d0 d0Var = null;
        e0 e0Var = this.b;
        if (oVar2 != null) {
            d0 d0Var2 = (d0) e0Var.b.get(oVar2.mWho);
            if (d0Var2 == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(oVar);
                o oVar3 = oVar.mTarget;
                sb.append(" declared target fragment ");
                sb.append(oVar3);
                sb.append(" that does not belong to this FragmentManager!");
                throw new IllegalStateException(sb.toString());
            }
            oVar.mTargetWho = oVar.mTarget.mWho;
            oVar.mTarget = null;
            d0Var = d0Var2;
        } else {
            String str = oVar.mTargetWho;
            if (str != null && (d0Var = (d0) e0Var.b.get(str)) == null) {
                StringBuilder sb2 = new StringBuilder("Fragment ");
                sb2.append(oVar);
                sb2.append(" declared target fragment ");
                l0.e(dj7.n(sb2, oVar.mTargetWho, " that does not belong to this FragmentManager!"));
                return;
            }
        }
        if (d0Var != null) {
            d0Var.k();
        }
        z zVar = oVar.mFragmentManager;
        oVar.mHost = zVar.w;
        oVar.mParentFragment = zVar.y;
        w00 w00Var = this.a;
        w00Var.j(oVar, false);
        oVar.performAttach();
        w00Var.d(oVar, false);
    }

    public final int d() {
        o oVar = this.c;
        if (oVar.mFragmentManager == null) {
            return oVar.mState;
        }
        int iMin = this.e;
        int iOrdinal = oVar.mMaxState.ordinal();
        int i = 0;
        if (iOrdinal == 1) {
            iMin = Math.min(iMin, 0);
        } else if (iOrdinal == 2) {
            iMin = Math.min(iMin, 1);
        } else if (iOrdinal == 3) {
            iMin = Math.min(iMin, 5);
        } else if (iOrdinal != 4) {
            iMin = Math.min(iMin, -1);
        }
        if (oVar.mFromLayout) {
            boolean z = oVar.mInLayout;
            int i2 = this.e;
            if (z) {
                iMin = Math.max(i2, 2);
                View view = oVar.mView;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = i2 < 4 ? Math.min(iMin, oVar.mState) : Math.min(iMin, 1);
            }
        }
        if (oVar.mInDynamicContainer && oVar.mContainer == null) {
            iMin = Math.min(iMin, 4);
        }
        if (!oVar.mAdded) {
            iMin = Math.min(iMin, 1);
        }
        ViewGroup viewGroup = oVar.mContainer;
        if (viewGroup != null) {
            g gVarI = g.i(viewGroup, oVar.getParentFragmentManager());
            h0 h0VarF = gVarI.f(oVar);
            int i3 = h0VarF != null ? h0VarF.b : 0;
            h0 h0VarG = gVarI.g(oVar);
            i = h0VarG != null ? h0VarG.b : 0;
            int i4 = i3 == 0 ? -1 : ak7.a[dj7.A(i3)];
            if (i4 != -1 && i4 != 1) {
                i = i3;
            }
        }
        if (i == 2) {
            iMin = Math.min(iMin, 6);
        } else if (i == 3) {
            iMin = Math.max(iMin, 3);
        } else if (oVar.mRemoving) {
            iMin = oVar.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, -1);
        }
        if (oVar.mDeferStart && oVar.mState < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (oVar.mTransitioning) {
            iMin = Math.max(iMin, 3);
        }
        if (z.K(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + oVar);
        }
        return iMin;
    }

    public final void e() {
        Bundle bundle;
        boolean zK = z.K(3);
        o oVar = this.c;
        if (zK) {
            Log.d("FragmentManager", "moveto CREATED: " + oVar);
        }
        Bundle bundle2 = oVar.mSavedFragmentState;
        Bundle bundle3 = bundle2 != null ? bundle2.getBundle("savedInstanceState") : null;
        if (!oVar.mIsCreated) {
            w00 w00Var = this.a;
            w00Var.k(oVar, false);
            oVar.performCreate(bundle3);
            w00Var.e(oVar, false);
            return;
        }
        oVar.mState = 1;
        Bundle bundle4 = oVar.mSavedFragmentState;
        if (bundle4 == null || (bundle = bundle4.getBundle("childFragmentManager")) == null) {
            return;
        }
        oVar.mChildFragmentManager.X(bundle);
        ur3 ur3Var = oVar.mChildFragmentManager;
        ur3Var.H = false;
        ur3Var.I = false;
        ur3Var.O.g = false;
        ur3Var.u(1);
    }

    public final void f() {
        String resourceName;
        o oVar = this.c;
        if (oVar.mFromLayout) {
            return;
        }
        if (z.K(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + oVar);
        }
        Bundle bundle = oVar.mSavedFragmentState;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        LayoutInflater layoutInflaterOnGetLayoutInflater = oVar.onGetLayoutInflater(bundle2);
        oVar.mLayoutInflater = layoutInflaterOnGetLayoutInflater;
        ViewGroup viewGroup = oVar.mContainer;
        if (viewGroup == null) {
            int i = oVar.mContainerId;
            if (i == 0) {
                viewGroup = null;
            } else {
                if (i == -1) {
                    c6.f(eq3.i("Cannot create fragment ", oVar, " for a container view with no id"));
                    return;
                }
                viewGroup = (ViewGroup) oVar.mFragmentManager.x.C(i);
                if (viewGroup == null) {
                    if (!oVar.mRestored && !oVar.mInDynamicContainer) {
                        try {
                            resourceName = oVar.getResources().getResourceName(oVar.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = "unknown";
                        }
                        defpackage.q.h("No view found for id 0x", Integer.toHexString(oVar.mContainerId), " (", resourceName, ") for fragment ", oVar);
                        return;
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    as3 as3Var = bs3.a;
                    bs3.b(new qw8(oVar, "Attempting to add fragment " + oVar + " to container " + viewGroup + " which is not a FragmentContainerView"));
                    bs3.a(oVar).getClass();
                }
            }
        }
        oVar.mContainer = viewGroup;
        oVar.performCreateView(layoutInflaterOnGetLayoutInflater, viewGroup, bundle2);
        if (oVar.mView != null) {
            if (z.K(3)) {
                Log.d("FragmentManager", "moveto VIEW_CREATED: " + oVar);
            }
            oVar.mView.setSaveFromParentEnabled(false);
            oVar.mView.setTag(R.id.fragment_container_view_tag, oVar);
            if (viewGroup != null) {
                b();
            }
            if (oVar.mHidden) {
                oVar.mView.setVisibility(8);
            }
            boolean zIsAttachedToWindow = oVar.mView.isAttachedToWindow();
            View view = oVar.mView;
            if (zIsAttachedToWindow) {
                WeakHashMap weakHashMap = dl8.a;
                view.requestApplyInsets();
            } else {
                view.addOnAttachStateChangeListener(new zr3(view));
            }
            Bundle bundle3 = oVar.mSavedFragmentState;
            oVar.onViewCreated(oVar.mView, bundle3 != null ? bundle3.getBundle("savedInstanceState") : null);
            oVar.mChildFragmentManager.u(2);
            this.a.p(oVar, oVar.mView, false);
            int visibility = oVar.mView.getVisibility();
            oVar.e().j = oVar.mView.getAlpha();
            if (oVar.mContainer != null && visibility == 0) {
                View viewFindFocus = oVar.mView.findFocus();
                if (viewFindFocus != null) {
                    oVar.e().k = viewFindFocus;
                    if (z.K(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + oVar);
                    }
                }
                oVar.mView.setAlpha(0.0f);
            }
        }
        oVar.mState = 2;
    }

    public final void g() {
        o oVarB;
        boolean zK = z.K(3);
        o oVar = this.c;
        if (zK) {
            Log.d("FragmentManager", "movefrom CREATED: " + oVar);
        }
        boolean zIsChangingConfigurations = true;
        boolean z = oVar.mRemoving && !oVar.isInBackStack();
        e0 e0Var = this.b;
        if (z) {
            e0Var.i(null, oVar.mWho);
        }
        if (!z) {
            a0 a0Var = e0Var.d;
            if (!((a0Var.b.containsKey(oVar.mWho) && a0Var.e) ? a0Var.f : true)) {
                String str = oVar.mTargetWho;
                if (str != null && (oVarB = e0Var.b(str)) != null && oVarB.mRetainInstance) {
                    oVar.mTarget = oVarB;
                }
                oVar.mState = 0;
                return;
            }
        }
        t tVar = oVar.mHost;
        if (tVar != null) {
            zIsChangingConfigurations = e0Var.d.f;
        } else {
            u uVar = tVar.e;
            if (uVar != null) {
                zIsChangingConfigurations = true ^ uVar.isChangingConfigurations();
            }
        }
        if (z || zIsChangingConfigurations) {
            e0Var.d.c(oVar, false);
        }
        oVar.performDestroy();
        this.a.f(oVar, false);
        for (d0 d0Var : e0Var.d()) {
            if (d0Var != null) {
                o oVar2 = d0Var.c;
                if (oVar.mWho.equals(oVar2.mTargetWho)) {
                    oVar2.mTarget = oVar;
                    oVar2.mTargetWho = null;
                }
            }
        }
        String str2 = oVar.mTargetWho;
        if (str2 != null) {
            oVar.mTarget = e0Var.b(str2);
        }
        e0Var.h(this);
    }

    public final void h() {
        View view;
        boolean zK = z.K(3);
        o oVar = this.c;
        if (zK) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + oVar);
        }
        ViewGroup viewGroup = oVar.mContainer;
        if (viewGroup != null && (view = oVar.mView) != null) {
            viewGroup.removeView(view);
        }
        oVar.performDestroyView();
        this.a.q(oVar, false);
        oVar.mContainer = null;
        oVar.mView = null;
        oVar.mViewLifecycleOwner = null;
        oVar.mViewLifecycleOwnerLiveData.k(null);
        oVar.mInLayout = false;
    }

    public final void i() {
        boolean zK = z.K(3);
        o oVar = this.c;
        if (zK) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + oVar);
        }
        oVar.performDetach();
        this.a.g(oVar, false);
        oVar.mState = -1;
        oVar.mHost = null;
        oVar.mParentFragment = null;
        oVar.mFragmentManager = null;
        if (!oVar.mRemoving || oVar.isInBackStack()) {
            a0 a0Var = this.b.d;
            if (!((a0Var.b.containsKey(oVar.mWho) && a0Var.e) ? a0Var.f : true)) {
                return;
            }
        }
        if (z.K(3)) {
            Log.d("FragmentManager", "initState called for fragment: " + oVar);
        }
        oVar.initState();
    }

    public final void j() {
        o oVar = this.c;
        if (oVar.mFromLayout && oVar.mInLayout && !oVar.mPerformedCreateView) {
            if (z.K(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + oVar);
            }
            Bundle bundle = oVar.mSavedFragmentState;
            Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
            LayoutInflater layoutInflaterOnGetLayoutInflater = oVar.onGetLayoutInflater(bundle2);
            oVar.mLayoutInflater = layoutInflaterOnGetLayoutInflater;
            oVar.performCreateView(layoutInflaterOnGetLayoutInflater, null, bundle2);
            View view = oVar.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                oVar.mView.setTag(R.id.fragment_container_view_tag, oVar);
                if (oVar.mHidden) {
                    oVar.mView.setVisibility(8);
                }
                Bundle bundle3 = oVar.mSavedFragmentState;
                oVar.onViewCreated(oVar.mView, bundle3 != null ? bundle3.getBundle("savedInstanceState") : null);
                oVar.mChildFragmentManager.u(2);
                this.a.p(oVar, oVar.mView, false);
                oVar.mState = 2;
            }
        }
    }

    public final void k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        e0 e0Var = this.b;
        boolean z = this.d;
        o oVar = this.c;
        if (z) {
            if (z.K(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + oVar);
                return;
            }
            return;
        }
        try {
            this.d = true;
            boolean z2 = false;
            while (true) {
                int iD = d();
                int i = oVar.mState;
                int i2 = 3;
                if (iD == i) {
                    if (!z2 && i == -1 && oVar.mRemoving && !oVar.isInBackStack()) {
                        if (z.K(3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + oVar);
                        }
                        e0Var.d.c(oVar, true);
                        e0Var.h(this);
                        if (z.K(3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + oVar);
                        }
                        oVar.initState();
                    }
                    if (oVar.mHiddenChanged) {
                        if (oVar.mView != null && (viewGroup = oVar.mContainer) != null) {
                            g gVarI = g.i(viewGroup, oVar.getParentFragmentManager());
                            if (oVar.mHidden) {
                                if (z.K(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + oVar);
                                }
                                gVarI.d(3, 1, this);
                            } else {
                                if (z.K(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + oVar);
                                }
                                gVarI.d(2, 1, this);
                            }
                        }
                        z zVar = oVar.mFragmentManager;
                        if (zVar != null && oVar.mAdded && z.L(oVar)) {
                            zVar.G = true;
                        }
                        oVar.mHiddenChanged = false;
                        oVar.mChildFragmentManager.o();
                    }
                    this.d = false;
                    return;
                }
                w00 w00Var = this.a;
                if (iD <= i) {
                    switch (i - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            oVar.mState = 1;
                            break;
                        case 2:
                            oVar.mInLayout = false;
                            oVar.mState = 2;
                            break;
                        case 3:
                            if (z.K(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + oVar);
                            }
                            if (oVar.mView != null && oVar.mSavedViewState == null) {
                                n();
                            }
                            if (oVar.mView != null && (viewGroup2 = oVar.mContainer) != null) {
                                g gVarI2 = g.i(viewGroup2, oVar.getParentFragmentManager());
                                if (z.K(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + oVar);
                                }
                                gVarI2.d(1, 3, this);
                            }
                            oVar.mState = 3;
                            break;
                        case 4:
                            if (z.K(3)) {
                                Log.d("FragmentManager", "movefrom STARTED: " + oVar);
                            }
                            oVar.performStop();
                            w00Var.o(oVar, false);
                            break;
                        case 5:
                            oVar.mState = 5;
                            break;
                        case 6:
                            if (z.K(3)) {
                                Log.d("FragmentManager", "movefrom RESUMED: " + oVar);
                            }
                            oVar.performPause();
                            w00Var.i(oVar, false);
                            break;
                    }
                } else {
                    switch (i + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (oVar.mView != null && (viewGroup3 = oVar.mContainer) != null) {
                                g gVarI3 = g.i(viewGroup3, oVar.getParentFragmentManager());
                                int visibility = oVar.mView.getVisibility();
                                if (visibility == 0) {
                                    i2 = 2;
                                } else if (visibility == 4) {
                                    i2 = 4;
                                } else if (visibility != 8) {
                                    throw new IllegalArgumentException("Unknown visibility " + visibility);
                                }
                                if (z.K(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + oVar);
                                }
                                gVarI3.d(i2, 2, this);
                            }
                            oVar.mState = 4;
                            break;
                        case 5:
                            if (z.K(3)) {
                                Log.d("FragmentManager", "moveto STARTED: " + oVar);
                            }
                            oVar.performStart();
                            w00Var.n(oVar, false);
                            break;
                        case 6:
                            oVar.mState = 6;
                            break;
                        case 7:
                            m();
                            break;
                    }
                }
                z2 = true;
            }
        } catch (Throwable th) {
            this.d = false;
            throw th;
        }
    }

    public final void l(ClassLoader classLoader) {
        o oVar = this.c;
        Bundle bundle = oVar.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        if (oVar.mSavedFragmentState.getBundle("savedInstanceState") == null) {
            oVar.mSavedFragmentState.putBundle("savedInstanceState", new Bundle());
        }
        try {
            oVar.mSavedViewState = oVar.mSavedFragmentState.getSparseParcelableArray("viewState");
            oVar.mSavedViewRegistryState = oVar.mSavedFragmentState.getBundle("viewRegistryState");
            c0 c0Var = (c0) oVar.mSavedFragmentState.getParcelable("state");
            if (c0Var != null) {
                oVar.mTargetWho = c0Var.x;
                oVar.mTargetRequestCode = c0Var.y;
                Boolean bool = oVar.mSavedUserVisibleHint;
                if (bool != null) {
                    oVar.mUserVisibleHint = bool.booleanValue();
                    oVar.mSavedUserVisibleHint = null;
                } else {
                    oVar.mUserVisibleHint = c0Var.G;
                }
            }
            if (oVar.mUserVisibleHint) {
                return;
            }
            oVar.mDeferStart = true;
        } catch (BadParcelableException e) {
            throw new IllegalStateException("Failed to restore view hierarchy state for fragment " + oVar, e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    /* JADX WARN: Code duplicated, block: B:21:0x0052  */
    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    public final void m() {
        boolean zRequestFocus;
        String str;
        boolean zK = z.K(3);
        o oVar = this.c;
        if (zK) {
            Log.d("FragmentManager", "moveto RESUMED: " + oVar);
        }
        dr3 dr3Var = oVar.mAnimationInfo;
        View view = dr3Var == null ? null : dr3Var.k;
        if (view != null) {
            if (view == oVar.mView) {
                zRequestFocus = view.requestFocus();
                if (z.K(2)) {
                    StringBuilder sb = new StringBuilder("requestFocus: Restoring focused view ");
                    sb.append(view);
                    sb.append(TokenAuthenticationScheme.SCHEME_DELIMITER);
                    if (zRequestFocus) {
                        str = "succeeded";
                    } else {
                        str = "failed";
                    }
                    sb.append(str);
                    sb.append(" on Fragment ");
                    sb.append(oVar);
                    sb.append(" resulting in focused view ");
                    sb.append(oVar.mView.findFocus());
                    Log.v("FragmentManager", sb.toString());
                }
            } else {
                ViewParent parent = view.getParent();
                while (true) {
                    if (parent != null) {
                        if (parent == oVar.mView) {
                            break;
                        } else {
                            parent = parent.getParent();
                        }
                    }
                }
                zRequestFocus = view.requestFocus();
                if (z.K(2)) {
                    StringBuilder sb2 = new StringBuilder("requestFocus: Restoring focused view ");
                    sb2.append(view);
                    sb2.append(TokenAuthenticationScheme.SCHEME_DELIMITER);
                    if (zRequestFocus) {
                        str = "succeeded";
                    } else {
                        str = "failed";
                    }
                    sb2.append(str);
                    sb2.append(" on Fragment ");
                    sb2.append(oVar);
                    sb2.append(" resulting in focused view ");
                    sb2.append(oVar.mView.findFocus());
                    Log.v("FragmentManager", sb2.toString());
                }
            }
        }
        oVar.e().k = null;
        oVar.performResume();
        this.a.l(oVar, false);
        this.b.i(null, oVar.mWho);
        oVar.mSavedFragmentState = null;
        oVar.mSavedViewState = null;
        oVar.mSavedViewRegistryState = null;
    }

    public final void n() {
        o oVar = this.c;
        if (oVar.mView == null) {
            return;
        }
        if (z.K(2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + oVar + " with view " + oVar.mView);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        oVar.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            oVar.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        oVar.mViewLifecycleOwner.f.v(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        oVar.mSavedViewRegistryState = bundle;
    }

    public d0(w00 w00Var, e0 e0Var, o oVar) {
        this.a = w00Var;
        this.b = e0Var;
        this.c = oVar;
    }

    public d0(w00 w00Var, e0 e0Var, o oVar, Bundle bundle) {
        this.a = w00Var;
        this.b = e0Var;
        this.c = oVar;
        oVar.mSavedViewState = null;
        oVar.mSavedViewRegistryState = null;
        oVar.mBackStackNesting = 0;
        oVar.mInLayout = false;
        oVar.mAdded = false;
        o oVar2 = oVar.mTarget;
        oVar.mTargetWho = oVar2 != null ? oVar2.mWho : null;
        oVar.mTarget = null;
        oVar.mSavedFragmentState = bundle;
        oVar.mArguments = bundle.getBundle("arguments");
    }
}
