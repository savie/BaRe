package defpackage;

import android.widget.CompoundButton;
import androidx.preference.SwitchPreference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gu7 implements CompoundButton.OnCheckedChangeListener {
    public final /* synthetic */ SwitchPreference a;

    public gu7(SwitchPreference switchPreference) {
        this.a = switchPreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        SwitchPreference switchPreference = this.a;
        if (switchPreference.a(boolValueOf)) {
            switchPreference.G(z);
        } else {
            compoundButton.setChecked(!z);
        }
    }
}
