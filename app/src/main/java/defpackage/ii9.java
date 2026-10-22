package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ii9 extends li9 {
    @Override // defpackage.li9
    public final void a(Object obj, long j) {
        lf9 lf9Var = (lf9) ((oh9) fm9.d(obj, j));
        if (lf9Var.a) {
            lf9Var.a = false;
        }
    }

    @Override // defpackage.li9
    public final void b(Object obj, long j, Object obj2) {
        oh9 oh9VarZzd = (oh9) fm9.d(obj, j);
        oh9 oh9Var = (oh9) fm9.d(obj2, j);
        int size = oh9VarZzd.size();
        int size2 = oh9Var.size();
        if (size > 0 && size2 > 0) {
            if (!((lf9) oh9VarZzd).a) {
                oh9VarZzd = oh9VarZzd.zzd(size2 + size);
            }
            oh9VarZzd.addAll(oh9Var);
        }
        if (size > 0) {
            oh9Var = oh9VarZzd;
        }
        fm9.j(obj, j, oh9Var);
    }
}
