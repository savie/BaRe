package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zb5 extends op1 {
    public zb5(int i, long j) {
        super(String.format("%,d KiB of memory would be needed; limit was %,d KiB. If the file is not corrupt, consider increasing the memory limit.", Long.valueOf(j), Integer.valueOf(i)));
    }

    public zb5(long j, int i, yb5 yb5Var) {
        super(String.format("%,d KiB of memory would be needed; limit was %,d KiB. If the file is not corrupt, consider increasing the memory limit.", Long.valueOf(j), Integer.valueOf(i)), yb5Var);
    }
}
