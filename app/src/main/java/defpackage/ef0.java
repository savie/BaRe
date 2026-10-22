package defpackage;

import javax.crypto.spec.GCMParameterSpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ef0 extends gf0 {
    @Override // defpackage.gf0
    public final e a(byte[] bArr, GCMParameterSpec gCMParameterSpec) {
        return new e(new oo4(bArr, bArr.length), gCMParameterSpec.getTLen(), gCMParameterSpec.getIV());
    }
}
