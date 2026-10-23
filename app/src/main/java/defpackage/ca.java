package defpackage;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ca extends da {
    public qi4 h;
    public final /* synthetic */ Type[] i;
    public final /* synthetic */ Type j;
    public final /* synthetic */ Set k;
    public final /* synthetic */ Set l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ca(Type type, Set set, Object obj, Method method, int i, boolean z, Type[] typeArr, Type type2, Set set2, Set set3) {
        super(type, set, obj, method, i, 1, z);
        this.i = typeArr;
        this.j = type2;
        this.k = set2;
        this.l = set3;
    }

    @Override // defpackage.da
    public final void a(nh5 nh5Var, ea eaVar) {
        super.a(nh5Var, eaVar);
        Type[] typeArr = this.i;
        boolean zG = wx3.g(typeArr[0], this.j);
        Set set = this.k;
        this.h = (zG && set.equals(this.l)) ? nh5Var.c(eaVar, typeArr[0], set) : nh5Var.b(typeArr[0], set, null);
    }

    @Override // defpackage.da
    public final Object b(bn4 bn4Var) {
        return c(this.h.a(bn4Var));
    }
}
