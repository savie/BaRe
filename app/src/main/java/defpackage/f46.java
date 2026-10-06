package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class f46 extends hg6 {
    public final PreferenceGroup d;
    public ArrayList e;
    public ArrayList f;
    public final ArrayList g;
    public final w7 i = new w7(this, 3);
    public final Handler h = new Handler(Looper.getMainLooper());

    public f46(PreferenceScreen preferenceScreen) {
        this.d = preferenceScreen;
        preferenceScreen.Y = this;
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.g = new ArrayList();
        boolean z = preferenceScreen.l0;
        if (this.a.a()) {
            l0.e("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            throw null;
        }
        this.b = z;
        o();
    }

    @Override // defpackage.hg6
    public final int b() {
        return this.f.size();
    }

    @Override // defpackage.hg6
    public final long c(int i) {
        if (this.b) {
            return m(i).d();
        }
        return -1L;
    }

    @Override // defpackage.hg6
    public final int d(int i) {
        e46 e46Var = new e46(m(i));
        ArrayList arrayList = this.g;
        int iIndexOf = arrayList.indexOf(e46Var);
        if (iIndexOf != -1) {
            return iIndexOf;
        }
        int size = arrayList.size();
        arrayList.add(e46Var);
        return size;
    }

    @Override // defpackage.hg6
    public final fh6 j(ViewGroup viewGroup, int i) {
        e46 e46Var = (e46) this.g.get(i);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        TypedArray typedArrayObtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, de6.a);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        if (drawable == null) {
            drawable = iz1.m(viewGroup.getContext(), R.drawable.list_selector_background);
        }
        typedArrayObtainStyledAttributes.recycle();
        View viewInflate = layoutInflaterFrom.inflate(e46Var.a, viewGroup, false);
        if (viewInflate.getBackground() == null) {
            WeakHashMap weakHashMap = dl8.a;
            viewInflate.setBackground(drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) viewInflate.findViewById(R.id.widget_frame);
        if (viewGroup2 != null) {
            int i2 = e46Var.b;
            if (i2 != 0) {
                layoutInflaterFrom.inflate(i2, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new k46(viewInflate);
    }

    public final ArrayList k(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList<Preference> arrayList2 = new ArrayList();
        int size = preferenceGroup.g0.size();
        int i = 0;
        int i2 = 0;
        while (true) {
            CharSequence string = null;
            if (i >= size) {
                int i3 = preferenceGroup.k0;
                if (i3 != Integer.MAX_VALUE && i2 > i3) {
                    Context context = preferenceGroup.a;
                    long j = preferenceGroup.c;
                    h03 h03Var = new h03(context);
                    h03Var.W = org.swiftapps.swiftbackup.R.layout.expand_button;
                    Context context2 = h03Var.a;
                    Drawable drawableM = iz1.m(context2, org.swiftapps.swiftbackup.R.drawable.ic_arrow_down_24dp);
                    if (h03Var.r != drawableM) {
                        h03Var.r = drawableM;
                        h03Var.q = 0;
                        h03Var.h();
                    }
                    h03Var.q = org.swiftapps.swiftbackup.R.drawable.ic_arrow_down_24dp;
                    String string2 = context2.getString(org.swiftapps.swiftbackup.R.string.expand_button_title);
                    if (!TextUtils.equals(string2, h03Var.n)) {
                        h03Var.n = string2;
                        h03Var.h();
                    }
                    if (999 != h03Var.k) {
                        h03Var.k = 999;
                        f46 f46Var = h03Var.Y;
                        if (f46Var != null) {
                            Handler handler = f46Var.h;
                            w7 w7Var = f46Var.i;
                            handler.removeCallbacks(w7Var);
                            handler.post(w7Var);
                        }
                    }
                    ArrayList arrayList3 = new ArrayList();
                    for (Preference preference : arrayList2) {
                        CharSequence charSequence = preference.n;
                        boolean z = preference instanceof PreferenceGroup;
                        if (z && !TextUtils.isEmpty(charSequence)) {
                            arrayList3.add((PreferenceGroup) preference);
                        }
                        if (arrayList3.contains(preference.a0)) {
                            if (z) {
                                arrayList3.add((PreferenceGroup) preference);
                            }
                        } else if (!TextUtils.isEmpty(charSequence)) {
                            string = string == null ? charSequence : context2.getString(org.swiftapps.swiftbackup.R.string.summary_collapsed_preference_list, string, charSequence);
                        }
                    }
                    h03Var.B(string);
                    h03Var.f0 = j + 1000000;
                    h03Var.f = new ix0(this, preferenceGroup);
                    arrayList.add(h03Var);
                }
                return arrayList;
            }
            Preference preferenceH = preferenceGroup.H(i);
            if (preferenceH.O) {
                int i4 = preferenceGroup.k0;
                if (i4 == Integer.MAX_VALUE || i2 < i4) {
                    arrayList.add(preferenceH);
                } else {
                    arrayList2.add(preferenceH);
                }
                if (preferenceH instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) preferenceH;
                    if (preferenceGroup2 instanceof PreferenceScreen) {
                        continue;
                    } else {
                        if (preferenceGroup.k0 != Integer.MAX_VALUE && preferenceGroup2.k0 != Integer.MAX_VALUE) {
                            l0.e("Nesting an expandable group inside of another expandable group is not supported!");
                            return null;
                        }
                        for (Preference preference2 : k(preferenceGroup2)) {
                            int i5 = preferenceGroup.k0;
                            if (i5 == Integer.MAX_VALUE || i2 < i5) {
                                arrayList.add(preference2);
                            } else {
                                arrayList2.add(preference2);
                            }
                            i2++;
                        }
                    }
                } else {
                    i2++;
                }
            }
            i++;
        }
    }

    public final void l(ArrayList arrayList, PreferenceGroup preferenceGroup) {
        synchronized (preferenceGroup) {
            Collections.sort(preferenceGroup.g0);
        }
        int size = preferenceGroup.g0.size();
        for (int i = 0; i < size; i++) {
            Preference preferenceH = preferenceGroup.H(i);
            arrayList.add(preferenceH);
            e46 e46Var = new e46(preferenceH);
            if (!this.g.contains(e46Var)) {
                this.g.add(e46Var);
            }
            if (preferenceH instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) preferenceH;
                if (!(preferenceGroup2 instanceof PreferenceScreen)) {
                    l(arrayList, preferenceGroup2);
                }
            }
            preferenceH.Y = this;
        }
    }

    public final Preference m(int i) {
        if (i < 0 || i >= this.f.size()) {
            return null;
        }
        return (Preference) this.f.get(i);
    }

    @Override // defpackage.hg6
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void h(k46 k46Var, int i) {
        Preference preferenceM = m(i);
        ColorStateList colorStateList = k46Var.v;
        View view = k46Var.a;
        Drawable background = view.getBackground();
        Drawable drawable = k46Var.u;
        if (background != drawable) {
            WeakHashMap weakHashMap = dl8.a;
            view.setBackground(drawable);
        }
        TextView textView = (TextView) k46Var.r(R.id.title);
        if (textView != null && colorStateList != null && !textView.getTextColors().equals(colorStateList)) {
            textView.setTextColor(colorStateList);
        }
        preferenceM.l(k46Var);
    }

    public final void o() {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).Y = null;
        }
        ArrayList arrayList = new ArrayList(this.e.size());
        this.e = arrayList;
        PreferenceGroup preferenceGroup = this.d;
        l(arrayList, preferenceGroup);
        this.f = k(preferenceGroup);
        e();
        Iterator it2 = this.e.iterator();
        while (it2.hasNext()) {
            ((Preference) it2.next()).getClass();
        }
    }
}
