package defpackage;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class aa extends da {
    public qi4 h;
    public final /* synthetic */ Type[] i;
    public final /* synthetic */ Type j;
    public final /* synthetic */ Set k;
    public final /* synthetic */ Set l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aa(Type type, Set set, Object obj, Method method, int i, boolean z, Type[] typeArr, Type type2, Set set2, Set set3) {
        super(type, set, obj, method, i, 1, z);
        this.i = typeArr;
        this.j = type2;
        this.k = set2;
        this.l = set3;
    }

    @Override // defpackage.da
    public final void a(nh5 nh5Var, ea eaVar) {
        super.a(nh5Var, eaVar);
        Type type = this.i[0];
        Type type2 = this.j;
        boolean zG = wx3.g(type, type2);
        Set set = this.l;
        this.h = (zG && this.k.equals(set)) ? nh5Var.c(eaVar, type2, set) : nh5Var.b(type2, set, null);
    }

    @Override // defpackage.da
    public final void d(dn4 dn4Var, Object obj) {
        this.h.e(dn4Var, c(obj));
    }
}
