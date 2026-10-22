package defpackage;

import android.text.Editable;
import android.text.TextUtils;
import com.google.android.material.timepicker.ChipTextInputComboView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x61 extends z18 {
    public final /* synthetic */ ChipTextInputComboView a;

    public x61(ChipTextInputComboView chipTextInputComboView) {
        this.a = chipTextInputComboView;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        boolean zIsEmpty = TextUtils.isEmpty(editable);
        ChipTextInputComboView chipTextInputComboView = this.a;
        if (zIsEmpty) {
            int i = ChipTextInputComboView.G;
            chipTextInputComboView.k = j38.c(chipTextInputComboView.getResources(), "00", "%02d");
            return;
        }
        int i2 = ChipTextInputComboView.G;
        String strC = j38.c(chipTextInputComboView.getResources(), editable, "%02d");
        if (TextUtils.isEmpty(strC)) {
            strC = j38.c(chipTextInputComboView.getResources(), "00", "%02d");
        }
        chipTextInputComboView.k = strC;
    }
}
