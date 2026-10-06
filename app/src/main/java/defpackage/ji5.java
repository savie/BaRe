package defpackage;

import android.os.Bundle;
import androidx.preference.MultiSelectListPreference;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ji5 extends z36 {
    public final HashSet Q = new HashSet();
    public boolean R;
    public CharSequence[] S;
    public CharSequence[] T;

    @Override // defpackage.z36
    public final void n(boolean z) {
        if (z && this.R) {
            MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) l();
            HashSet hashSet = this.Q;
            if (multiSelectListPreference.a(hashSet)) {
                multiSelectListPreference.G(hashSet);
            }
        }
        this.R = false;
    }

    @Override // defpackage.z36
    public final void o(va vaVar) {
        int length = this.T.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = this.Q.contains(this.T[i].toString());
        }
        vaVar.e(this.S, zArr, new ii5(this));
    }

    @Override // defpackage.z36, androidx.fragment.app.h, androidx.fragment.app.o
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        HashSet hashSet = this.Q;
        if (bundle != null) {
            hashSet.clear();
            hashSet.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values"));
            this.R = bundle.getBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", false);
            this.S = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries");
            this.T = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues");
            return;
        }
        MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) l();
        CharSequence[] charSequenceArr = multiSelectListPreference.l0;
        CharSequence[] charSequenceArr2 = multiSelectListPreference.m0;
        if (charSequenceArr == null || charSequenceArr2 == null) {
            l0.e("MultiSelectListPreference requires an entries array and an entryValues array.");
            return;
        }
        hashSet.clear();
        hashSet.addAll(multiSelectListPreference.n0);
        this.R = false;
        this.S = multiSelectListPreference.l0;
        this.T = charSequenceArr2;
    }

    @Override // defpackage.z36, androidx.fragment.app.h, androidx.fragment.app.o
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values", new ArrayList<>(this.Q));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", this.R);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries", this.S);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues", this.T);
    }
}
