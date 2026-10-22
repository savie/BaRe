package defpackage;

import java.util.Collection;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yf5 extends m81 {
    public final String c;

    public yf5(gc8 gc8Var, lc8 lc8Var, Collection collection) {
        super(gc8Var, lc8Var, collection);
        String name = gc8Var.f.getName();
        int iLastIndexOf = name.lastIndexOf(46);
        if (iLastIndexOf < 0) {
            this.c = ".";
        } else {
            this.c = name.substring(0, iLastIndexOf + 1);
            name.substring(0, iLastIndexOf);
        }
    }

    @Override // defpackage.m81, defpackage.mc8
    public final String b(Object obj) {
        return c(obj.getClass(), obj);
    }

    @Override // defpackage.m81, defpackage.mc8
    public final String c(Class cls, Object obj) {
        String name = mc8.a(cls).getName();
        String str = this.c;
        return name.startsWith(str) ? name.substring(str.length() - 1) : name;
    }
}
