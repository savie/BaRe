package defpackage;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w93 extends gs4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w93(Object obj, int i) {
        super(0);
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        switch (this.a) {
            case 0:
                Object obj = x93.e;
                File file = (File) this.b;
                synchronized (obj) {
                    x93.d.remove(file.getAbsolutePath());
                }
                return be8.a;
            case 1:
                ((in2) this.b).dispose();
                return be8.a;
            default:
                return ((zl8) ((os4) this.b).getValue()).getViewModelStore();
        }
    }
}
