package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Looper;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.o;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.a;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c46 extends o {
    public h46 b;
    public RecyclerView c;
    public boolean d;
    public boolean e;
    public final b46 a = new b46(this);
    public int f = R.layout.preference_list_fragment;
    public final a46 k = new a46(this, Looper.getMainLooper());
    public final bo0 n = new bo0(this, 2);

    public final void i(int i) {
        h46 h46Var = this.b;
        if (h46Var == null) {
            g84.h("This should be called after super.onCreate.");
            return;
        }
        Context contextRequireContext = requireContext();
        PreferenceScreen preferenceScreen = this.b.g;
        h46Var.e = true;
        g46 g46Var = new g46(contextRequireContext, h46Var);
        XmlResourceParser xml = contextRequireContext.getResources().getXml(i);
        try {
            PreferenceGroup preferenceGroupC = g46Var.c(xml, preferenceScreen);
            xml.close();
            PreferenceScreen preferenceScreen2 = (PreferenceScreen) preferenceGroupC;
            preferenceScreen2.k(h46Var);
            SharedPreferences.Editor editor = h46Var.d;
            if (editor != null) {
                editor.apply();
            }
            h46Var.e = false;
            h46 h46Var2 = this.b;
            PreferenceScreen preferenceScreen3 = h46Var2.g;
            if (preferenceScreen2 != preferenceScreen3) {
                if (preferenceScreen3 != null) {
                    preferenceScreen3.p();
                }
                h46Var2.g = preferenceScreen2;
                this.d = true;
                if (this.e) {
                    a46 a46Var = this.k;
                    if (a46Var.hasMessages(1)) {
                        return;
                    }
                    a46Var.obtainMessage(1).sendToTarget();
                }
            }
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }

    public final Preference j(String str) {
        PreferenceScreen preferenceScreen;
        h46 h46Var = this.b;
        if (h46Var == null || (preferenceScreen = h46Var.g) == null) {
            return null;
        }
        return preferenceScreen.G(str);
    }

    public hg6 k(PreferenceScreen preferenceScreen) {
        return new f46(preferenceScreen);
    }

    public abstract void l();

    @Override // androidx.fragment.app.o
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        requireContext().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i = typedValue.resourceId;
        if (i == 0) {
            i = R.style.PreferenceThemeOverlay;
        }
        requireContext().getTheme().applyStyle(i, false);
        h46 h46Var = new h46(requireContext());
        this.b = h46Var;
        h46Var.j = this;
        if (getArguments() != null) {
            getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT");
        }
        l();
    }

    @Override // androidx.fragment.app.o
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerView;
        TypedArray typedArrayObtainStyledAttributes = requireContext().obtainStyledAttributes(null, de6.h, R.attr.preferenceFragmentCompatStyle, 0);
        this.f = typedArrayObtainStyledAttributes.getResourceId(0, this.f);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(3, true);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(requireContext());
        View viewInflate = layoutInflaterCloneInContext.inflate(this.f, viewGroup, false);
        View viewFindViewById = viewInflate.findViewById(android.R.id.list_container);
        if (!(viewFindViewById instanceof ViewGroup)) {
            l0.e("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
            return null;
        }
        ViewGroup viewGroup2 = (ViewGroup) viewFindViewById;
        if (!requireContext().getPackageManager().hasSystemFeature("android.hardware.type.automotive") || (recyclerView = (RecyclerView) viewGroup2.findViewById(R.id.recycler_view)) == null) {
            recyclerView = (RecyclerView) layoutInflaterCloneInContext.inflate(R.layout.preference_recyclerview, viewGroup2, false);
            recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
            recyclerView.setAccessibilityDelegateCompat(new j46(recyclerView));
        }
        this.c = recyclerView;
        b46 b46Var = this.a;
        recyclerView.h(b46Var);
        if (drawable != null) {
            b46Var.getClass();
            b46Var.b = drawable.getIntrinsicHeight();
        } else {
            b46Var.b = 0;
        }
        b46Var.a = drawable;
        RecyclerView recyclerView2 = b46Var.d.c;
        if (recyclerView2.H.size() != 0) {
            a aVar = recyclerView2.y;
            if (aVar != null) {
                aVar.m("Cannot invalidate item decorations during a scroll or layout");
            }
            recyclerView2.Q();
            recyclerView2.requestLayout();
        }
        if (dimensionPixelSize != -1) {
            b46Var.b = dimensionPixelSize;
            RecyclerView recyclerView3 = b46Var.d.c;
            if (recyclerView3.H.size() != 0) {
                a aVar2 = recyclerView3.y;
                if (aVar2 != null) {
                    aVar2.m("Cannot invalidate item decorations during a scroll or layout");
                }
                recyclerView3.Q();
                recyclerView3.requestLayout();
            }
        }
        b46Var.c = z;
        if (this.c.getParent() == null) {
            viewGroup2.addView(this.c);
        }
        this.k.post(this.n);
        return viewInflate;
    }

    @Override // androidx.fragment.app.o
    public final void onDestroyView() {
        bo0 bo0Var = this.n;
        a46 a46Var = this.k;
        a46Var.removeCallbacks(bo0Var);
        a46Var.removeMessages(1);
        if (this.d) {
            this.c.setAdapter(null);
            PreferenceScreen preferenceScreen = this.b.g;
            if (preferenceScreen != null) {
                preferenceScreen.p();
            }
        }
        this.c = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.o
    public final void onSaveInstanceState(Bundle bundle) {
        PreferenceScreen preferenceScreen = this.b.g;
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.c(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // androidx.fragment.app.o
    public void onStart() {
        super.onStart();
        h46 h46Var = this.b;
        h46Var.h = this;
        h46Var.i = this;
    }

    @Override // androidx.fragment.app.o
    public final void onStop() {
        super.onStop();
        h46 h46Var = this.b;
        h46Var.h = null;
        h46Var.i = null;
    }

    @Override // androidx.fragment.app.o
    public void onViewCreated(View view, Bundle bundle) {
        PreferenceScreen preferenceScreen;
        Bundle bundle2;
        PreferenceScreen preferenceScreen2;
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (preferenceScreen2 = this.b.g) != null) {
            preferenceScreen2.b(bundle2);
        }
        if (this.d && (preferenceScreen = this.b.g) != null) {
            this.c.setAdapter(k(preferenceScreen));
            preferenceScreen.j();
        }
        this.e = true;
    }
}
