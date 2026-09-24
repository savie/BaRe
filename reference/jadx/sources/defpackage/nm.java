package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nm extends hx2 {
    @Override // defpackage.hx2
    public final void bind(nw6 nw6Var, Object obj) {
        pm pmVar = (pm) obj;
        nw6Var.getClass();
        nw6Var.C(1, pmVar.a);
        nw6Var.C(2, pmVar.b);
        Boolean bool = pmVar.c;
        Integer numValueOf = bool != null ? Integer.valueOf(bool.booleanValue() ? 1 : 0) : null;
        if (numValueOf == null) {
            nw6Var.f(3);
        } else {
            nw6Var.e(3, numValueOf.intValue());
        }
        Boolean bool2 = pmVar.d;
        Integer numValueOf2 = bool2 != null ? Integer.valueOf(bool2.booleanValue() ? 1 : 0) : null;
        if (numValueOf2 == null) {
            nw6Var.f(4);
        } else {
            nw6Var.e(4, numValueOf2.intValue());
        }
        Boolean bool3 = pmVar.e;
        Integer numValueOf3 = bool3 != null ? Integer.valueOf(bool3.booleanValue() ? 1 : 0) : null;
        if (numValueOf3 == null) {
            nw6Var.f(5);
        } else {
            nw6Var.e(5, numValueOf3.intValue());
        }
        String str = pmVar.f;
        if (str == null) {
            nw6Var.f(6);
        } else {
            nw6Var.C(6, str);
        }
    }

    @Override // defpackage.hx2
    public final String createQuery() {
        return "INSERT OR REPLACE INTO `app_cached_data` (`pkgName`,`name`,`isInstalled`,`isEnabled`,`isLaunchable`,`locale`) VALUES (?,?,?,?,?,?)";
    }
}
