package defpackage;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class px6 implements ux6 {
    public final /* synthetic */ cy6 a;

    public /* synthetic */ px6(cy6 cy6Var) {
        this.a = cy6Var;
    }

    @Override // defpackage.ux6
    public final Bundle a() {
        pw5[] pw5VarArr;
        cy6 cy6Var = this.a;
        for (Map.Entry entry : x65.u0((LinkedHashMap) cy6Var.e).entrySet()) {
            cy6Var.g(((km7) entry.getValue()).d(), (String) entry.getKey());
        }
        for (Map.Entry entry2 : x65.u0((LinkedHashMap) cy6Var.c).entrySet()) {
            cy6Var.g(((ux6) entry2.getValue()).a(), (String) entry2.getKey());
        }
        LinkedHashMap linkedHashMap = (LinkedHashMap) cy6Var.b;
        if (linkedHashMap.isEmpty()) {
            pw5VarArr = new pw5[0];
        } else {
            ArrayList arrayList = new ArrayList(linkedHashMap.size());
            for (Map.Entry entry3 : linkedHashMap.entrySet()) {
                arrayList.add(new pw5((String) entry3.getKey(), entry3.getValue()));
            }
            pw5VarArr = (pw5[]) arrayList.toArray(new pw5[0]);
        }
        return jd4.b((pw5[]) Arrays.copyOf(pw5VarArr, pw5VarArr.length));
    }
}
