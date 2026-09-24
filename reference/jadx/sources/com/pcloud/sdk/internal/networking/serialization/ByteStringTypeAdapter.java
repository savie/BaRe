package com.pcloud.sdk.internal.networking.serialization;

import com.google.gson.b;
import defpackage.ge;
import defpackage.hy0;
import defpackage.nn4;
import defpackage.tl4;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ByteStringTypeAdapter extends b {
    @Override // com.google.gson.b
    public final Object read(tl4 tl4Var) {
        String strNextString = tl4Var.nextString();
        hy0 hy0Var = hy0.d;
        return ge.t(strNextString);
    }

    @Override // com.google.gson.b
    public final void write(nn4 nn4Var, Object obj) throws IOException {
        nn4Var.S(((hy0) obj).e());
    }
}
