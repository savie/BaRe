package com.google.android.recaptcha.internal;

import defpackage.el1;
import defpackage.g84;
import defpackage.ov2;
import defpackage.x50;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhy {
    private List zza = ov2.a;

    public final long zza(long[] jArr) {
        Iterator it = el1.g1(this.zza, x50.y0(jArr)).iterator();
        if (!it.hasNext()) {
            g84.j("Empty collection can't be reduced.");
            return 0L;
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = Long.valueOf(((Number) it.next()).longValue() ^ ((Number) next).longValue());
        }
        return ((Number) next).longValue();
    }

    public final void zzb(long[] jArr) {
        this.zza = x50.y0(jArr);
    }
}
