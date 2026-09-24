package defpackage;

import android.widget.CompoundButton;
import androidx.preference.SwitchPreferenceCompat;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hu7 implements CompoundButton.OnCheckedChangeListener {
    public final /* synthetic */ SwitchPreferenceCompat a;

    public hu7(SwitchPreferenceCompat switchPreferenceCompat) {
        this.a = switchPreferenceCompat;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        SwitchPreferenceCompat switchPreferenceCompat = this.a;
        if (switchPreferenceCompat.a(boolValueOf)) {
            switchPreferenceCompat.G(z);
        } else {
            compoundButton.setChecked(!z);
        }
    }
}
