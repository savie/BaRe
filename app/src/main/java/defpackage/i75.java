package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicMarkableReference;
import org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i75 implements jk8 {
    public Object a;
    public Object b;
    public Object c;
    public Object d = new fh8(this, false);
    public Object e = new fh8(this, true);
    public Object f;
    public Object k;

    public i75(String str, ca3 ca3Var, s02 s02Var) {
        i66 i66Var = new i66();
        i66Var.b = new ArrayList();
        i66Var.a = 128;
        this.f = i66Var;
        this.k = new AtomicMarkableReference(null, false);
        this.c = str;
        this.a = new lf5(ca3Var);
        this.b = s02Var;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (SwiftSegmentedCardGroup) this.a;
    }
}
