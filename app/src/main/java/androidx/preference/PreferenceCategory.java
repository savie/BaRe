package androidx.preference;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import defpackage.k46;
import defpackage.x13;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, x13.q(context, R.attr.preferenceCategoryStyle, android.R.attr.preferenceCategoryStyle));
    }

    @Override // androidx.preference.Preference
    public final boolean E() {
        return !super.g();
    }

    @Override // androidx.preference.Preference
    public final boolean g() {
        return false;
    }

    @Override // androidx.preference.Preference
    public final void l(k46 k46Var) {
        super.l(k46Var);
        if (Build.VERSION.SDK_INT >= 28) {
            k46Var.a.setAccessibilityHeading(true);
        }
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public PreferenceCategory(Context context) {
        this(context, null);
    }
}
