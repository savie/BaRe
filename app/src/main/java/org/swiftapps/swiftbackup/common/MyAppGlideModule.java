package org.swiftapps.swiftbackup.common;

import android.content.Context;
import android.graphics.drawable.Drawable;
import defpackage.by3;
import defpackage.cz4;
import defpackage.lk;
import defpackage.mi6;
import defpackage.oy3;
import defpackage.py3;
import defpackage.sl4;
import defpackage.sx3;
import defpackage.ux3;
import defpackage.x13;
import defpackage.zx3;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MyAppGlideModule extends x13 {
    @Override // defpackage.x13
    public final void O(Context context, com.bumptech.glide.a aVar, mi6 mi6Var) {
        mi6Var.c(sx3.class, sx3.class, new sl4());
        mi6Var.d("legacy_append", sx3.class, Drawable.class, new ux3());
        mi6Var.c(zx3.class, zx3.class, new lk());
        mi6Var.d("legacy_append", zx3.class, Drawable.class, new by3());
        mi6Var.c(oy3.class, oy3.class, new cz4(15));
        mi6Var.d("legacy_append", oy3.class, Drawable.class, new py3());
    }
}
