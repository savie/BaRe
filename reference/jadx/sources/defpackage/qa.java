package defpackage;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController$RecycleListView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qa implements AdapterView.OnItemClickListener {
    public final /* synthetic */ AlertController$RecycleListView a;
    public final /* synthetic */ ua b;
    public final /* synthetic */ ra c;

    public qa(ra raVar, AlertController$RecycleListView alertController$RecycleListView, ua uaVar) {
        this.c = raVar;
        this.a = alertController$RecycleListView;
        this.b = uaVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        ra raVar = this.c;
        boolean[] zArr = raVar.t;
        AlertController$RecycleListView alertController$RecycleListView = this.a;
        if (zArr != null) {
            zArr[i] = alertController$RecycleListView.isItemChecked(i);
        }
        raVar.x.onClick(this.b.b, i, alertController$RecycleListView.isItemChecked(i));
    }
}
