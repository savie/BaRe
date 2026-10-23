package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class js implements es5, zt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ mt3 b;

    public /* synthetic */ js(int i, mt3 mt3Var) {
        this.a = i;
        this.b = mt3Var;
    }

    @Override // defpackage.zt3
    public final yt3 a() {
        int i = this.a;
        mt3 mt3Var = this.b;
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
                return mt3Var;
            default:
                return (e7) mt3Var;
        }
    }

    @Override // defpackage.es5
    public final /* synthetic */ void b(Object obj) {
        int i = this.a;
        mt3 mt3Var = this.b;
        switch (i) {
            case 0:
                mt3Var.invoke(obj);
                break;
            case 1:
                mt3Var.invoke(obj);
                break;
            case 2:
                mt3Var.invoke(obj);
                break;
            case 3:
                mt3Var.invoke(obj);
                break;
            default:
                ((e7) mt3Var).invoke(obj);
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
            case 3:
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
            case 3:
                break;
        }
        return a().hashCode();
    }
}
