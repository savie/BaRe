package com.google.android.datatransport.cct;

import android.content.Context;
import defpackage.d31;
import defpackage.hd0;
import defpackage.k22;
import defpackage.ua8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CctBackendFactory {
    public ua8 create(k22 k22Var) {
        Context context = ((hd0) k22Var).a;
        hd0 hd0Var = (hd0) k22Var;
        return new d31(context, hd0Var.b, hd0Var.c);
    }
}
