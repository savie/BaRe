package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fz6 extends od2 {
    public final char[] i;

    public fz6(char[] cArr) {
        cArr.getClass();
        this.i = cArr;
        if (cArr.length == 0) {
            c6.f("SBA archive password must not be empty");
            throw null;
        }
    }
}
