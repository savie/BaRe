package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class bl implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ gl b;

    public /* synthetic */ bl(gl glVar, int i) {
        this.a = i;
        this.b = glVar;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        gl glVar = this.b;
        switch (i) {
            case 0:
                return (Set) glVar.f.getValue();
            default:
                String strE = ((zn7) glVar.j.getValue()).e(null);
                return Boolean.valueOf(pe4.d(strE, "vfat") || pe4.d(strE, "sdfat"));
        }
    }
}
