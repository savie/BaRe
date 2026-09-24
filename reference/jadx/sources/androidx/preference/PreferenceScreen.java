package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.fragment.app.o;
import defpackage.x13;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {
    public final boolean l0;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, x13.q(context, R.attr.preferenceScreenStyle, android.R.attr.preferenceScreenStyle), 0);
        this.l0 = true;
    }

    @Override // androidx.preference.Preference
    public final void o() {
        o parentFragment;
        if (this.x != null || this.y != null || this.g0.size() == 0 || (parentFragment = this.b.j) == null) {
            return;
        }
        for (parentFragment = this.b.j; parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
        }
    }
}
