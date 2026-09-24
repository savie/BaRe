package androidx.preference;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import defpackage.cq2;
import defpackage.k46;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class DropDownPreference extends ListPreference {
    public final ArrayAdapter q0;
    public Spinner r0;
    public final cq2 s0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropDownPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.dropdownPreferenceStyle, 0);
        this.s0 = new cq2(this);
        ArrayAdapter arrayAdapter = new ArrayAdapter(context, android.R.layout.simple_spinner_dropdown_item);
        this.q0 = arrayAdapter;
        arrayAdapter.clear();
        CharSequence[] charSequenceArr = this.l0;
        if (charSequenceArr != null) {
            for (CharSequence charSequence : charSequenceArr) {
                arrayAdapter.add(charSequence.toString());
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void h() {
        super.h();
        ArrayAdapter arrayAdapter = this.q0;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.preference.Preference
    public final void l(k46 k46Var) {
        int length;
        CharSequence[] charSequenceArr;
        Spinner spinner = (Spinner) k46Var.a.findViewById(R.id.spinner);
        this.r0 = spinner;
        spinner.setAdapter((SpinnerAdapter) this.q0);
        this.r0.setOnItemSelectedListener(this.s0);
        Spinner spinner2 = this.r0;
        String str = this.n0;
        if (str == null || (charSequenceArr = this.m0) == null) {
            length = -1;
        } else {
            length = charSequenceArr.length - 1;
            while (length >= 0) {
                if (!TextUtils.equals(charSequenceArr[length].toString(), str)) {
                    length--;
                }
            }
            length = -1;
        }
        spinner2.setSelection(length);
        super.l(k46Var);
    }

    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    public final void o() {
        this.r0.performClick();
    }
}
