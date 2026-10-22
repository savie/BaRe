package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zs3 extends IllegalStateException {
    public final int a;
    public final String b;

    public zs3(int i, String str) {
        super("Upload failed: ".concat(str));
        this.a = i;
        this.b = str;
    }
}
