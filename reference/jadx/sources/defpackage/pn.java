package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pn extends jb9 {
    public final /* synthetic */ int M;
    public final /* synthetic */ Object N;

    public /* synthetic */ pn(Object obj, int i) {
        this.M = i;
        this.N = obj;
    }

    @Override // defpackage.jb9, defpackage.om8
    public void b() {
        switch (this.M) {
            case 0:
                ((fo) ((qn) this.N).b).M.setVisibility(0);
                break;
        }
    }

    @Override // defpackage.om8
    public final void d() {
        int i = this.M;
        Object obj = this.N;
        switch (i) {
            case 0:
                fo foVar = (fo) ((qn) obj).b;
                foVar.M.setAlpha(1.0f);
                foVar.P.d(null);
                foVar.P = null;
                break;
            default:
                ou8 ou8Var = (ou8) obj;
                ou8Var.w = null;
                ou8Var.h.requestLayout();
                break;
        }
    }
}
