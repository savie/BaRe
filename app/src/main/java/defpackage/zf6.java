package defpackage;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zf6 implements ux6 {
    public final LinkedHashSet a = new LinkedHashSet();

    public zf6(ot9 ot9Var) {
        ot9Var.h("androidx.savedstate.Restarter", this);
    }

    @Override // defpackage.ux6
    public final Bundle a() {
        Bundle bundleB = jd4.b((pw5[]) Arrays.copyOf(new pw5[0], 0));
        List listV1 = el1.v1(this.a);
        bundleB.putStringArrayList("classes_to_restore", listV1 instanceof ArrayList ? (ArrayList) listV1 : new ArrayList<>(listV1));
        return bundleB;
    }
}
