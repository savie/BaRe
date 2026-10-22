package defpackage;

import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t9 extends o9 {
    public final /* synthetic */ go1 a;
    public final /* synthetic */ String b;
    public final /* synthetic */ j9 c;

    public t9(go1 go1Var, String str, j9 j9Var) {
        this.a = go1Var;
        this.b = str;
        this.c = j9Var;
    }

    @Override // defpackage.o9
    public final void a(Object obj) {
        go1 go1Var = this.a;
        ArrayList arrayList = go1Var.d;
        LinkedHashMap linkedHashMap = go1Var.b;
        String str = this.b;
        Object obj2 = linkedHashMap.get(str);
        j9 j9Var = this.c;
        if (obj2 == null) {
            q.g("Attempting to launch an unregistered ActivityResultLauncher with contract ", j9Var, " and input ", obj, ". You must ensure the ActivityResultLauncher is registered before calling launch().");
            return;
        }
        int iIntValue = ((Number) obj2).intValue();
        arrayList.add(str);
        try {
            go1Var.b(iIntValue, j9Var, obj);
        } catch (Exception e) {
            arrayList.remove(str);
            throw e;
        }
    }

    @Override // defpackage.o9
    public final void b() {
        this.a.f(this.b);
    }
}
