package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jq3 implements yt1 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ jq3(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.yt1
    public final void accept(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                mq3 mq3Var = (mq3) obj;
                if (mq3Var == null) {
                    mq3Var = new mq3(-3);
                }
                ((ot9) obj2).f(mq3Var);
                break;
            default:
                ((kq0) obj2).a((yq0) obj);
                break;
        }
    }
}
