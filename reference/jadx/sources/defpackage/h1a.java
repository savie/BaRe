package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h1a extends v39 {
    public final /* synthetic */ gl9 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h1a(fu fuVar, CharSequence charSequence, gl9 gl9Var) {
        super(fuVar, charSequence);
        this.f = gl9Var;
    }

    @Override // defpackage.v39
    public final int a(int i) {
        return i + 1;
    }

    @Override // defpackage.v39
    public final int b(int i) {
        CharSequence charSequence = this.c;
        int length = charSequence.length();
        if (i < 0 || i > length) {
            a6.d(pe4.N(i, length, "index"));
            return 0;
        }
        while (i < length) {
            if (charSequence.charAt(i) == this.f.a) {
                return i;
            }
            i++;
        }
        return -1;
    }
}
