package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class dm7 {
    public int a;

    public final void a() {
        int i = this.a;
        if (i <= 3) {
            this.a = 0;
        } else if (i <= 9) {
            this.a = i - 3;
        } else {
            this.a = i - 6;
        }
    }

    public final void b() {
        this.a = this.a < 7 ? 8 : 11;
    }

    public final void c() {
        this.a = this.a >= 7 ? 10 : 7;
    }
}
