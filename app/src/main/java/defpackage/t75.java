package defpackage;

import java.util.Iterator;
import java.util.regex.Matcher;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t75 extends l3 {
    public final /* synthetic */ u75 a;

    public t75(u75 u75Var) {
        this.a = u75Var;
    }

    @Override // defpackage.l3, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj == null ? true : obj instanceof r75) {
            return super.contains((r75) obj);
        }
        return false;
    }

    @Override // defpackage.l3
    public final int d() {
        return this.a.a.groupCount() + 1;
    }

    public final r75 e(int i) {
        Matcher matcher = this.a.a;
        nd4 nd4VarF = l73.F(matcher.start(i), matcher.end(i));
        if (nd4VarF.a < 0) {
            return null;
        }
        String strGroup = matcher.group(i);
        strGroup.getClass();
        return new r75(strGroup, nd4VarF);
    }

    @Override // defpackage.l3, java.util.Collection
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new p98(new q98(new ll1(fl1.y0(this)), new w20(this, 16)));
    }
}
