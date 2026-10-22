package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ps0 implements es5, zt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ mt3 b;

    public /* synthetic */ ps0(int i, mt3 mt3Var) {
        this.a = i;
        this.b = mt3Var;
    }

    @Override // defpackage.zt3
    public final yt3 a() {
        int i = this.a;
        mt3 mt3Var = this.b;
        switch (i) {
            case 0:
                return (ox) mt3Var;
            case 1:
                return (d7) mt3Var;
            case 2:
                return (hj) mt3Var;
            default:
                return (k3) mt3Var;
        }
    }

    @Override // defpackage.es5
    public final /* synthetic */ void b(Object obj) {
        int i = this.a;
        mt3 mt3Var = this.b;
        switch (i) {
            case 0:
                ((ox) mt3Var).invoke(obj);
                break;
            case 1:
                ((d7) mt3Var).invoke(obj);
                break;
            case 2:
                ((hj) mt3Var).invoke(obj);
                break;
            default:
                ((k3) mt3Var).invoke(obj);
                break;
        }
    }

    public final boolean equals(Object obj) {
        switch (this.a) {
            case 0:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
            case 1:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
            case 2:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
            default:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
        }
    }

    public final int hashCode() {
        switch (this.a) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
        }
        return a().hashCode();
    }
}
