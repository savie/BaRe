package defpackage;

import androidx.fragment.app.o;
import androidx.fragment.app.z;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tr3 implements sr3 {
    public final int a;
    public final /* synthetic */ z b;

    public tr3(z zVar, int i) {
        this.b = zVar;
        this.a = i;
    }

    @Override // defpackage.sr3
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        z zVar = this.b;
        o oVar = zVar.z;
        int i = this.a;
        if (oVar == null || i >= 0 || !oVar.getChildFragmentManager().S(-1, 0)) {
            return zVar.T(arrayList, arrayList2, i, 1);
        }
        return false;
    }
}
