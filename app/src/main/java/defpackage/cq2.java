package defpackage;

import android.view.View;
import android.widget.AdapterView;
import androidx.preference.DropDownPreference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cq2 implements AdapterView.OnItemSelectedListener {
    public final /* synthetic */ DropDownPreference a;

    public cq2(DropDownPreference dropDownPreference) {
        this.a = dropDownPreference;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        if (i >= 0) {
            DropDownPreference dropDownPreference = this.a;
            String string = dropDownPreference.m0[i].toString();
            if (string.equals(dropDownPreference.n0) || !dropDownPreference.a(string)) {
                return;
            }
            dropDownPreference.H(string);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
