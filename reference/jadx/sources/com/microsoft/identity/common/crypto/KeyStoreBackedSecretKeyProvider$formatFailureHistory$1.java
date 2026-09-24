package com.microsoft.identity.common.crypto;

import defpackage.gs4;
import defpackage.mt3;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class KeyStoreBackedSecretKeyProvider$formatFailureHistory$1 extends gs4 implements mt3 {
    public static final KeyStoreBackedSecretKeyProvider$formatFailureHistory$1 INSTANCE = new KeyStoreBackedSecretKeyProvider$formatFailureHistory$1(1);

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        return ((IKeyGenSpec) entry.getKey()) + ": " + ((Throwable) entry.getValue()).getMessage();
    }
}
