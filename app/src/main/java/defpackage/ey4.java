package defpackage;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ey4 implements AdapterView.OnItemSelectedListener {
    public final /* synthetic */ ky4 a;

    public ey4(ky4 ky4Var) {
        this.a = ky4Var;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        bq2 bq2Var;
        if (i == -1 || (bq2Var = this.a.c) == null) {
            return;
        }
        bq2Var.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
