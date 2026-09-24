package defpackage;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pa implements AdapterView.OnItemClickListener {
    public final /* synthetic */ ua a;
    public final /* synthetic */ ra b;

    public pa(ra raVar, ua uaVar) {
        this.b = raVar;
        this.a = uaVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        ra raVar = this.b;
        DialogInterface.OnClickListener onClickListener = raVar.r;
        ua uaVar = this.a;
        onClickListener.onClick(uaVar.b, i);
        if (raVar.v) {
            return;
        }
        uaVar.b.dismiss();
    }
}
