package defpackage;

import java.util.function.IntUnaryOperator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k5 implements IntUnaryOperator {
    @Override // java.util.function.IntUnaryOperator
    public final int applyAsInt(int i) {
        if (i <= Integer.MAX_VALUE) {
            return i;
        }
        l0.i("Request %,d exceeds maximum %,d", new Object[]{Integer.valueOf(i), Integer.MAX_VALUE});
        return 0;
    }
}
