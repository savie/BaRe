package defpackage;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w75 implements AdapterView.OnItemClickListener {
    public final /* synthetic */ y75 a;

    public w75(y75 y75Var) {
        this.a = y75Var;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        Object item;
        y75 y75Var = this.a;
        ky4 ky4Var = y75Var.e;
        if (i < 0) {
            item = !ky4Var.R.isShowing() ? null : ky4Var.c.getSelectedItem();
        } else {
            item = y75Var.getAdapter().getItem(i);
        }
        y75Var.setText(y75Var.convertSelectionToString(item), false);
        AdapterView.OnItemClickListener onItemClickListener = y75Var.getOnItemClickListener();
        if (onItemClickListener != null) {
            if (view == null || i < 0) {
                view = !ky4Var.R.isShowing() ? null : ky4Var.c.getSelectedView();
                i = !ky4Var.R.isShowing() ? -1 : ky4Var.c.getSelectedItemPosition();
                j = !ky4Var.R.isShowing() ? Long.MIN_VALUE : ky4Var.c.getSelectedItemId();
            }
            onItemClickListener.onItemClick(ky4Var.c, view, i, j);
        }
        ky4Var.dismiss();
    }
}
