package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.fragment.app.h;
import androidx.fragment.app.o;
import defpackage.c46;
import defpackage.de6;
import defpackage.ji5;
import defpackage.ny4;
import defpackage.ws2;
import defpackage.x13;
import defpackage.z5;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class DialogPreference extends Preference {
    public final CharSequence f0;
    public final String g0;
    public final Drawable h0;
    public final String i0;
    public final String j0;
    public final int k0;

    public DialogPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, de6.c, i, 0);
        String string = typedArrayObtainStyledAttributes.getString(9);
        string = string == null ? typedArrayObtainStyledAttributes.getString(0) : string;
        this.f0 = string;
        if (string == null) {
            this.f0 = this.n;
        }
        String string2 = typedArrayObtainStyledAttributes.getString(8);
        this.g0 = string2 == null ? typedArrayObtainStyledAttributes.getString(1) : string2;
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(6);
        this.h0 = drawable == null ? typedArrayObtainStyledAttributes.getDrawable(2) : drawable;
        String string3 = typedArrayObtainStyledAttributes.getString(11);
        this.i0 = string3 == null ? typedArrayObtainStyledAttributes.getString(3) : string3;
        String string4 = typedArrayObtainStyledAttributes.getString(10);
        this.j0 = string4 == null ? typedArrayObtainStyledAttributes.getString(4) : string4;
        this.k0 = typedArrayObtainStyledAttributes.getResourceId(7, typedArrayObtainStyledAttributes.getResourceId(5, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public void o() {
        h ji5Var;
        c46 c46Var = this.b.i;
        if (c46Var != null) {
            for (o parentFragment = c46Var; parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
            }
            if (c46Var.getParentFragmentManager().D("androidx.preference.PreferenceFragment.DIALOG") != null) {
                return;
            }
            boolean z = this instanceof EditTextPreference;
            String str = this.t;
            if (z) {
                ji5Var = new ws2();
                Bundle bundle = new Bundle(1);
                bundle.putString("key", str);
                ji5Var.setArguments(bundle);
            } else if (this instanceof ListPreference) {
                ji5Var = new ny4();
                Bundle bundle2 = new Bundle(1);
                bundle2.putString("key", str);
                ji5Var.setArguments(bundle2);
            } else {
                if (!(this instanceof MultiSelectListPreference)) {
                    z5.d(getClass().getSimpleName(), ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.", "Cannot display dialog for an unknown Preference type: ");
                    return;
                }
                ji5Var = new ji5();
                Bundle bundle3 = new Bundle(1);
                bundle3.putString("key", str);
                ji5Var.setArguments(bundle3);
            }
            ji5Var.setTargetFragment(c46Var);
            ji5Var.k(c46Var.getParentFragmentManager(), "androidx.preference.PreferenceFragment.DIALOG");
        }
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, x13.q(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle), 0);
    }
}
