package defpackage;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j46 extends hh6 {
    public final RecyclerView f;
    public final gh6 g;
    public final i46 h;

    public j46(RecyclerView recyclerView) {
        super(recyclerView);
        this.g = this.e;
        this.h = new i46(this);
        this.f = recyclerView;
    }

    @Override // defpackage.hh6
    public final w5 j() {
        return this.h;
    }
}
