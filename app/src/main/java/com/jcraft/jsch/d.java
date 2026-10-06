package com.jcraft.jsch;

import defpackage.xs1;
import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        byte[][] bArr = KeyPairECDSA.y;
        return xs1.j("ecdsa-sha2-", (String) obj);
    }
}
