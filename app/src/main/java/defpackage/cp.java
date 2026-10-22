package defpackage;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cp implements AdapterView.OnItemClickListener {
    public final /* synthetic */ fp a;

    public cp(fp fpVar) {
        this.a = fpVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        fp fpVar = this.a;
        ip ipVar = fpVar.Y;
        ipVar.setSelection(i);
        if (ipVar.getOnItemClickListener() != null) {
            ipVar.performItemClick(view, i, fpVar.V.getItemId(i));
        }
        fpVar.dismiss();
    }
}
