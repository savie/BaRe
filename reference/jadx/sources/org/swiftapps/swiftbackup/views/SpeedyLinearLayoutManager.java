package org.swiftapps.swiftbackup.views;

import android.content.Context;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.bh6;
import defpackage.bk7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class SpeedyLinearLayoutManager extends LinearLayoutManager {
    public final float W;
    public final int X;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpeedyLinearLayoutManager(Context context) {
        super(context);
        context.getClass();
        this.W = 10.0f;
        this.X = 600;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final void N0(RecyclerView recyclerView, int i) {
        bk7 bk7Var = new bk7(this, recyclerView.getContext());
        bk7Var.a = i;
        O0(bk7Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final boolean P0() {
        return false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final int h1(bh6 bh6Var) {
        bh6Var.getClass();
        return this.X;
    }
}
