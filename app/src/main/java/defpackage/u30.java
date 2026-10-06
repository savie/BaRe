package defpackage;

import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u30 extends gs4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u30(Object obj, int i) {
        super(0);
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.bt3
    public final Object invoke() throws IOException {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return (zl8) ((t30) obj).invoke();
            case 1:
                return ((zl8) ((os4) obj).getValue()).getViewModelStore();
            case 2:
                fi5 fi5Var = (fi5) obj;
                File file = new File(fi5Var.b.getAbsolutePath() + fi5Var.e);
                fi5.f(fi5Var, file);
                return file;
            default:
                return (zl8) ((l37) obj).c();
        }
    }
}
