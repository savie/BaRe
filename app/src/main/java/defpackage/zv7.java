package defpackage;

import android.database.DataSetObserver;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zv7 extends DataSetObserver {
    public final /* synthetic */ TabLayout a;

    public zv7(TabLayout tabLayout) {
        this.a = tabLayout;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        this.a.i();
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.a.i();
    }
}
