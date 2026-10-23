package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e74 {
    public final /* synthetic */ int a = 1;
    public int b;
    public String c;

    public e74(int i, String str, Object[] objArr) {
        this.c = String.format(str, objArr);
        this.b = i;
    }

    public String toString() {
        switch (this.a) {
            case 1:
                return this.b + ": " + this.c;
            default:
                return super.toString();
        }
    }

    public /* synthetic */ e74() {
    }

    public e74(int i, String str) {
        this.b = i;
        this.c = str;
    }
}
