package org.swiftapps.swiftbackup.views;

import android.content.Context;
import androidx.recyclerview.widget.LinearLayoutManager;
import defpackage.bh6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class PreCachingLinearLayoutManager extends LinearLayoutManager {
    public final int W;
    public final int X;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreCachingLinearLayoutManager(Context context, int i) {
        super(context, i, false);
        context.getClass();
        this.W = 600;
        this.X = -1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final boolean P0() {
        return false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final int h1(bh6 bh6Var) {
        bh6Var.getClass();
        int i = this.X;
        return i > 0 ? i : this.W;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreCachingLinearLayoutManager(Context context) {
        super(context);
        context.getClass();
        this.W = 600;
        this.X = -1;
    }
}
