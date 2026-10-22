package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jl4 {
    public final /* synthetic */ int a;
    public Object[] b;
    public int c;
    public Object d;

    public /* synthetic */ jl4(int i) {
        this.a = i;
    }

    public String a() {
        StringBuilder sb = new StringBuilder("$");
        int i = this.c + 1;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = this.b[i2];
            if (obj instanceof p77) {
                p77 p77Var = (p77) obj;
                boolean zD = pe4.d(p77Var.e(), er7.g);
                int[] iArr = (int[]) this.d;
                if (!zD) {
                    int i3 = iArr[i2];
                    if (i3 >= 0) {
                        sb.append(".");
                        sb.append(p77Var.g(i3));
                    }
                } else if (iArr[i2] != -1) {
                    sb.append("[");
                    sb.append(((int[]) this.d)[i2]);
                    sb.append("]");
                }
            } else if (obj != ge.e) {
                sb.append("['");
                sb.append(obj);
                sb.append("']");
            }
        }
        return sb.toString();
    }

    public String toString() {
        switch (this.a) {
            case 0:
                return a();
            default:
                return super.toString();
        }
    }
}
