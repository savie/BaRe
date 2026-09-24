package defpackage;

import android.widget.CompoundButton;
import androidx.preference.CheckBoxPreference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t51 implements CompoundButton.OnCheckedChangeListener {
    public final /* synthetic */ CheckBoxPreference a;

    public t51(CheckBoxPreference checkBoxPreference) {
        this.a = checkBoxPreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        CheckBoxPreference checkBoxPreference = this.a;
        if (checkBoxPreference.a(boolValueOf)) {
            checkBoxPreference.G(z);
        } else {
            compoundButton.setChecked(!z);
        }
    }
}
