package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum wu6 implements sx2 {
    d(1, "AES_128_CCM", "AES/CCM/NoPadding"),
    e(2, "AES_128_GCM", "AES/GCM/NoPadding");

    public final long a;
    public final String b;
    public final int c;

    wu6(long j, String str, String str2) {
        this.a = j;
        this.b = str2;
        this.c = i;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
