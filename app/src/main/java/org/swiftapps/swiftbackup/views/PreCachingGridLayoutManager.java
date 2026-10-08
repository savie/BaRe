package org.swiftapps.swiftbackup.views;

import android.content.Context;
import androidx.recyclerview.widget.GridLayoutManager;
import defpackage.bh6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PreCachingGridLayoutManager extends GridLayoutManager {
    public final int i0;
    public final int j0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreCachingGridLayoutManager(Context context, int i) {
        super(context, i);
        context.getClass();
        this.i0 = 600;
        this.j0 = -1;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final boolean P0() {
        return false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final int h1(bh6 bh6Var) {
        bh6Var.getClass();
        int i = this.j0;
        return i > 0 ? i : this.i0;
    }
}
