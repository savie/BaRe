package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x extends ol1 {
    @Override // defpackage.ol1
    public final z0 C(m2 m2Var, byte[] bArr) {
        boolean z = bArr.length == 1;
        int length = bArr.length;
        if (!z) {
            l0.e(fz5.j(length, "Value of ASN1Boolean should have length 1, but was "));
            return null;
        }
        boolean z2 = bArr[0] != 0;
        a0 a0Var = new a0(m2.f, bArr);
        a0Var.c = z2;
        return a0Var;
    }
}
