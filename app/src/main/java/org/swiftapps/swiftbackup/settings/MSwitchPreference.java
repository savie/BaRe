package org.swiftapps.swiftbackup.settings;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.preference.SwitchPreferenceCompat;
import defpackage.k46;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MSwitchPreference extends SwitchPreferenceCompat {
    public MSwitchPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        this.X = R.layout.material_switch_preference;
    }

    @Override // androidx.preference.SwitchPreferenceCompat, androidx.preference.Preference
    public final void l(k46 k46Var) {
        super.l(k46Var);
        TextView textView = (TextView) k46Var.r(android.R.id.title);
        textView.setSingleLine(false);
        textView.setMaxLines(100);
        ((TextView) k46Var.r(android.R.id.summary)).setMaxLines(100);
    }

    public MSwitchPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.X = R.layout.material_switch_preference;
    }
}
