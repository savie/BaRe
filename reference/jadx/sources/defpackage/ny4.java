package defpackage;

import android.os.Bundle;
import androidx.preference.ListPreference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ny4 extends z36 {
    public int Q;
    public CharSequence[] R;
    public CharSequence[] S;

    @Override // defpackage.z36
    public final void n(boolean z) {
        int i;
        if (!z || (i = this.Q) < 0) {
            return;
        }
        String string = this.S[i].toString();
        ListPreference listPreference = (ListPreference) l();
        if (listPreference.a(string)) {
            listPreference.H(string);
        }
    }

    @Override // defpackage.z36
    public final void o(va vaVar) {
        vaVar.k(this.R, this.Q, new my4(this));
        vaVar.j(null, null);
    }

    @Override // defpackage.z36, androidx.fragment.app.h, androidx.fragment.app.o
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.Q = bundle.getInt("ListPreferenceDialogFragment.index", 0);
            this.R = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
            this.S = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
            return;
        }
        ListPreference listPreference = (ListPreference) l();
        CharSequence[] charSequenceArr = listPreference.l0;
        CharSequence[] charSequenceArr2 = listPreference.m0;
        if (charSequenceArr == null || charSequenceArr2 == null) {
            l0.e("ListPreference requires an entries array and an entryValues array.");
            return;
        }
        this.Q = listPreference.G(listPreference.n0);
        this.R = listPreference.l0;
        this.S = charSequenceArr2;
    }

    @Override // defpackage.z36, androidx.fragment.app.h, androidx.fragment.app.o
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.Q);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.R);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.S);
    }
}
