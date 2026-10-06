package androidx.preference;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.a;
import androidx.fragment.app.o;
import androidx.fragment.app.z;
import defpackage.c6;
import defpackage.de6;
import defpackage.dj7;
import defpackage.dl8;
import defpackage.f46;
import defpackage.h46;
import defpackage.iz1;
import defpackage.ju0;
import defpackage.k46;
import defpackage.l0;
import defpackage.lr1;
import defpackage.or3;
import defpackage.pe4;
import defpackage.t36;
import defpackage.u36;
import defpackage.v36;
import defpackage.w7;
import defpackage.x13;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Preference implements Comparable<Preference> {
    public Bundle G;
    public boolean H;
    public final boolean I;
    public boolean J;
    public final String K;
    public final Object L;
    public boolean M;
    public boolean N;
    public boolean O;
    public final boolean P;
    public final boolean Q;
    public boolean R;
    public boolean S;
    public boolean T;
    public final boolean U;
    public final boolean V;
    public int W;
    public int X;
    public f46 Y;
    public ArrayList Z;
    public final Context a;
    public PreferenceGroup a0;
    public h46 b;
    public boolean b0;
    public long c;
    public u36 c0;
    public boolean d;
    public v36 d0;
    public lr1 e;
    public final ju0 e0;
    public t36 f;
    public int k;
    public CharSequence n;
    public CharSequence p;
    public int q;
    public Drawable r;
    public final String t;
    public Intent x;
    public final String y;

    public Preference(Context context, AttributeSet attributeSet, int i, int i2) {
        this.k = Integer.MAX_VALUE;
        this.H = true;
        this.I = true;
        this.J = true;
        this.M = true;
        this.N = true;
        this.O = true;
        this.P = true;
        this.Q = true;
        this.S = true;
        this.V = true;
        this.W = R.layout.preference;
        this.e0 = new ju0(this, 1);
        this.a = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, de6.g, i, i2);
        this.q = typedArrayObtainStyledAttributes.getResourceId(23, typedArrayObtainStyledAttributes.getResourceId(0, 0));
        String string = typedArrayObtainStyledAttributes.getString(26);
        this.t = string == null ? typedArrayObtainStyledAttributes.getString(6) : string;
        CharSequence text = typedArrayObtainStyledAttributes.getText(34);
        this.n = text == null ? typedArrayObtainStyledAttributes.getText(4) : text;
        CharSequence text2 = typedArrayObtainStyledAttributes.getText(33);
        this.p = text2 == null ? typedArrayObtainStyledAttributes.getText(7) : text2;
        this.k = typedArrayObtainStyledAttributes.getInt(28, typedArrayObtainStyledAttributes.getInt(8, Integer.MAX_VALUE));
        String string2 = typedArrayObtainStyledAttributes.getString(22);
        this.y = string2 == null ? typedArrayObtainStyledAttributes.getString(13) : string2;
        this.W = typedArrayObtainStyledAttributes.getResourceId(27, typedArrayObtainStyledAttributes.getResourceId(3, R.layout.preference));
        this.X = typedArrayObtainStyledAttributes.getResourceId(35, typedArrayObtainStyledAttributes.getResourceId(9, 0));
        this.H = typedArrayObtainStyledAttributes.getBoolean(21, typedArrayObtainStyledAttributes.getBoolean(2, true));
        boolean z = typedArrayObtainStyledAttributes.getBoolean(30, typedArrayObtainStyledAttributes.getBoolean(5, true));
        this.I = z;
        this.J = typedArrayObtainStyledAttributes.getBoolean(29, typedArrayObtainStyledAttributes.getBoolean(1, true));
        String string3 = typedArrayObtainStyledAttributes.getString(19);
        this.K = string3 == null ? typedArrayObtainStyledAttributes.getString(10) : string3;
        this.P = typedArrayObtainStyledAttributes.getBoolean(16, typedArrayObtainStyledAttributes.getBoolean(16, z));
        this.Q = typedArrayObtainStyledAttributes.getBoolean(17, typedArrayObtainStyledAttributes.getBoolean(17, z));
        if (typedArrayObtainStyledAttributes.hasValue(18)) {
            this.L = r(typedArrayObtainStyledAttributes, 18);
        } else if (typedArrayObtainStyledAttributes.hasValue(11)) {
            this.L = r(typedArrayObtainStyledAttributes, 11);
        }
        this.V = typedArrayObtainStyledAttributes.getBoolean(31, typedArrayObtainStyledAttributes.getBoolean(12, true));
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(32);
        this.R = zHasValue;
        if (zHasValue) {
            this.S = typedArrayObtainStyledAttributes.getBoolean(32, typedArrayObtainStyledAttributes.getBoolean(14, true));
        }
        this.T = typedArrayObtainStyledAttributes.getBoolean(24, typedArrayObtainStyledAttributes.getBoolean(15, false));
        this.O = typedArrayObtainStyledAttributes.getBoolean(25, typedArrayObtainStyledAttributes.getBoolean(25, true));
        this.U = typedArrayObtainStyledAttributes.getBoolean(20, typedArrayObtainStyledAttributes.getBoolean(20, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void A(View view, boolean z) {
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                A(viewGroup.getChildAt(childCount), z);
            }
        }
    }

    public void B(CharSequence charSequence) {
        if (this.d0 != null) {
            l0.e("Preference already has a SummaryProvider set.");
        } else {
            if (TextUtils.equals(this.p, charSequence)) {
                return;
            }
            this.p = charSequence;
            h();
        }
    }

    public final void C(boolean z) {
        if (this.O != z) {
            this.O = z;
            f46 f46Var = this.Y;
            if (f46Var != null) {
                Handler handler = f46Var.h;
                w7 w7Var = f46Var.i;
                handler.removeCallbacks(w7Var);
                handler.post(w7Var);
            }
        }
    }

    public boolean E() {
        return !g();
    }

    public final boolean F() {
        return (this.b == null || !this.J || TextUtils.isEmpty(this.t)) ? false : true;
    }

    public final boolean a(Serializable serializable) {
        lr1 lr1Var = this.e;
        if (lr1Var == null) {
            return true;
        }
        Boolean bool = serializable instanceof Boolean ? (Boolean) serializable : null;
        if (bool == null) {
            return false;
        }
        String str = this.t;
        if (pe4.d(str, "config_backup_app_cache")) {
            ConfigSettings.Companion.getClass();
            if (!bool.booleanValue()) {
                bool = null;
            }
            lr1Var.r().k(ConfigSettings.copy$default(lr1Var.r().j(), 0, null, null, null, null, null, null, null, null, null, null, null, null, bool != null ? Integer.valueOf(bool.booleanValue() ? 1 : 0) : null, null, null, 57343, null));
            return true;
        }
        if (!pe4.d(str, "config_restore_ssaids")) {
            return true;
        }
        ConfigSettings.Companion.getClass();
        if (!bool.booleanValue()) {
            bool = null;
        }
        lr1Var.r().k(ConfigSettings.copy$default(lr1Var.r().j(), 0, null, null, null, null, null, null, null, null, null, null, bool != null ? Integer.valueOf(bool.booleanValue() ? 1 : 0) : null, null, null, null, null, 63487, null));
        return true;
    }

    public void b(Bundle bundle) {
        Parcelable parcelable;
        String str = this.t;
        if (TextUtils.isEmpty(str) || (parcelable = bundle.getParcelable(str)) == null) {
            return;
        }
        this.b0 = false;
        s(parcelable);
        if (this.b0) {
            return;
        }
        l0.e("Derived class did not call super.onRestoreInstanceState()");
    }

    public void c(Bundle bundle) {
        String str = this.t;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.b0 = false;
        Parcelable parcelableT = t();
        if (!this.b0) {
            l0.e("Derived class did not call super.onSaveInstanceState()");
        } else if (parcelableT != null) {
            bundle.putParcelable(str, parcelableT);
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Preference preference) {
        Preference preference2 = preference;
        int i = this.k;
        int i2 = preference2.k;
        if (i != i2) {
            return i - i2;
        }
        CharSequence charSequence = this.n;
        CharSequence charSequence2 = preference2.n;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference2.n.toString());
    }

    public long d() {
        return this.c;
    }

    public final String e(String str) {
        return !F() ? str : this.b.b().getString(this.t, str);
    }

    public CharSequence f() {
        v36 v36Var = this.d0;
        return v36Var != null ? v36Var.j(this) : this.p;
    }

    public boolean g() {
        return this.H && this.M && this.N;
    }

    public void h() {
        int iIndexOf;
        f46 f46Var = this.Y;
        if (f46Var == null || (iIndexOf = f46Var.f.indexOf(this)) == -1) {
            return;
        }
        f46Var.a.d(this, iIndexOf, 1);
    }

    public void i(boolean z) {
        ArrayList arrayList = this.Z;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Preference preference = (Preference) arrayList.get(i);
            if (preference.M == z) {
                preference.M = !z;
                preference.i(preference.E());
                preference.h();
            }
        }
    }

    public void j() {
        PreferenceScreen preferenceScreen;
        String str = this.K;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        h46 h46Var = this.b;
        Preference preferenceG = null;
        if (h46Var != null && (preferenceScreen = h46Var.g) != null) {
            preferenceG = preferenceScreen.G(str);
        }
        if (preferenceG == null) {
            StringBuilder sbU = dj7.u("Dependency \"", str, "\" not found for preference \"");
            sbU.append(this.t);
            sbU.append("\" (title: \"");
            sbU.append((Object) this.n);
            sbU.append("\"");
            throw new IllegalStateException(sbU.toString());
        }
        if (preferenceG.Z == null) {
            preferenceG.Z = new ArrayList();
        }
        preferenceG.Z.add(this);
        boolean zE = preferenceG.E();
        if (this.M == zE) {
            this.M = !zE;
            i(E());
            h();
        }
    }

    public final void k(h46 h46Var) {
        long j;
        this.b = h46Var;
        if (!this.d) {
            synchronized (h46Var) {
                j = h46Var.b;
                h46Var.b = 1 + j;
            }
            this.c = j;
        }
        if (F()) {
            h46 h46Var2 = this.b;
            if ((h46Var2 != null ? h46Var2.b() : null).contains(this.t)) {
                u(null);
                return;
            }
        }
        Object obj = this.L;
        if (obj != null) {
            u(obj);
        }
    }

    public void l(k46 k46Var) {
        Integer numValueOf;
        View view = k46Var.a;
        view.setOnClickListener(this.e0);
        view.setId(0);
        TextView textView = (TextView) k46Var.r(android.R.id.summary);
        if (textView != null) {
            CharSequence charSequenceF = f();
            if (TextUtils.isEmpty(charSequenceF)) {
                textView.setVisibility(8);
                numValueOf = null;
            } else {
                textView.setText(charSequenceF);
                textView.setVisibility(0);
                numValueOf = Integer.valueOf(textView.getCurrentTextColor());
            }
        } else {
            numValueOf = null;
        }
        TextView textView2 = (TextView) k46Var.r(android.R.id.title);
        boolean z = this.I;
        if (textView2 != null) {
            CharSequence charSequence = this.n;
            if (TextUtils.isEmpty(charSequence)) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(charSequence);
                textView2.setVisibility(0);
                if (this.R) {
                    textView2.setSingleLine(this.S);
                }
                if (!z && g() && numValueOf != null) {
                    textView2.setTextColor(numValueOf.intValue());
                }
            }
        }
        ImageView imageView = (ImageView) k46Var.r(android.R.id.icon);
        if (imageView != null) {
            int i = this.q;
            if (i != 0 || this.r != null) {
                if (this.r == null) {
                    this.r = iz1.m(this.a, i);
                }
                Drawable drawable = this.r;
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                }
            }
            if (this.r != null) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(this.T ? 4 : 8);
            }
        }
        View viewR = k46Var.r(R.id.icon_frame);
        if (viewR == null) {
            viewR = k46Var.r(android.R.id.icon_frame);
        }
        if (viewR != null) {
            if (this.r != null) {
                viewR.setVisibility(0);
            } else {
                viewR.setVisibility(this.T ? 4 : 8);
            }
        }
        if (this.V) {
            A(view, g());
        } else {
            A(view, true);
        }
        view.setFocusable(z);
        view.setClickable(z);
        k46Var.x = this.P;
        k46Var.y = this.Q;
        boolean z2 = this.U;
        if (z2 && this.c0 == null) {
            this.c0 = new u36(this);
        }
        view.setOnCreateContextMenuListener(z2 ? this.c0 : null);
        view.setLongClickable(z2);
        if (!z2 || z) {
            return;
        }
        WeakHashMap weakHashMap = dl8.a;
        view.setBackground(null);
    }

    public void p() {
        ArrayList arrayList;
        PreferenceScreen preferenceScreen;
        String str = this.K;
        if (str != null) {
            h46 h46Var = this.b;
            Preference preferenceG = null;
            if (h46Var != null && (preferenceScreen = h46Var.g) != null) {
                preferenceG = preferenceScreen.G(str);
            }
            if (preferenceG == null || (arrayList = preferenceG.Z) == null) {
                return;
            }
            arrayList.remove(this);
        }
    }

    public Object r(TypedArray typedArray, int i) {
        return null;
    }

    public void s(Parcelable parcelable) {
        this.b0 = true;
        if (parcelable == AbsSavedState.EMPTY_STATE || parcelable == null) {
            return;
        }
        c6.f("Wrong state class -- expecting Preference State");
    }

    public Parcelable t() {
        this.b0 = true;
        return AbsSavedState.EMPTY_STATE;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        CharSequence charSequence = this.n;
        if (!TextUtils.isEmpty(charSequence)) {
            sb.append(charSequence);
            sb.append(' ');
        }
        CharSequence charSequenceF = f();
        if (!TextUtils.isEmpty(charSequenceF)) {
            sb.append(charSequenceF);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    public void w(View view) {
        o oVar;
        String str;
        if (g() && this.I) {
            o();
            t36 t36Var = this.f;
            if (t36Var == null || !t36Var.d(this)) {
                h46 h46Var = this.b;
                if (h46Var == null || (oVar = h46Var.h) == null || (str = this.y) == null) {
                    Intent intent = this.x;
                    if (intent != null) {
                        this.a.startActivity(intent);
                        return;
                    }
                    return;
                }
                for (o parentFragment = oVar; parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
                }
                Log.w("PreferenceFragment", "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
                z parentFragmentManager = oVar.getParentFragmentManager();
                if (this.G == null) {
                    this.G = new Bundle();
                }
                Bundle bundle = this.G;
                or3 or3VarH = parentFragmentManager.H();
                oVar.requireActivity().getClassLoader();
                o oVarA = or3VarH.a(str);
                oVarA.setArguments(bundle);
                oVarA.setTargetFragment(oVar);
                a aVar = new a(parentFragmentManager);
                aVar.j(((View) oVar.requireView().getParent()).getId(), oVarA);
                if (!aVar.h) {
                    l0.e("This FragmentTransaction is not allowed to be added to the back stack.");
                    return;
                }
                aVar.g = true;
                aVar.i = null;
                aVar.e();
            }
        }
    }

    public final void x(String str) {
        if (F() && !TextUtils.equals(str, e(null))) {
            SharedPreferences.Editor editorA = this.b.a();
            editorA.putString(this.t, str);
            if (this.b.e) {
                return;
            }
            editorA.apply();
        }
    }

    public final void y() {
        if (this.H) {
            this.H = false;
            i(E());
            h();
        }
    }

    public void o() {
    }

    public void u(Object obj) {
    }

    public Preference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, x13.q(context, R.attr.preferenceStyle, android.R.attr.preferenceStyle));
    }

    public Preference(Context context) {
        this(context, null);
    }
}
