package defpackage;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class el5 implements View.OnClickListener {
    public final /* synthetic */ fl5 a;

    public el5(fl5 fl5Var) {
        this.a = fl5Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ic5 itemData = ((al5) view).getItemData();
        fl5 fl5Var = this.a;
        cl5 cl5Var = fl5Var.h0;
        boolean zQ = cl5Var.a.q(itemData, fl5Var.g0, 0);
        if (itemData == null || !itemData.isCheckable()) {
            return;
        }
        if (!zQ || itemData.isChecked()) {
            fl5Var.setCheckedItem(itemData);
        }
    }
}
