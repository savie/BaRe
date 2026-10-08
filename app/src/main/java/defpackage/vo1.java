package defpackage;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class vo1 extends yr5 {
    List<kj7> q;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends yr5.a<a, vo1> {
        private void d0(List<kj7> list) {
            if (list == null || list.isEmpty()) {
                c6.f("source objects cannot be empty");
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a b0(List<kj7> list) {
            d0(list);
            this.a.add(new uo1(list, 0));
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
        public void u(vo1 vo1Var) {
            super.u(vo1Var);
            d0(vo1Var.q);
        }
    }

    public vo1(pw1 pw1Var) {
        super(pw1Var);
        this.q = Collections.singletonList(pw1Var.C());
    }

    public static a u() {
        return new a();
    }

    @Override // defpackage.yr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof vo1) && super.equals(obj)) {
            return Objects.equals(this.q, ((vo1) obj).q);
        }
        return false;
    }

    @Override // defpackage.yr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.q);
    }

    @Override // defpackage.yr5
    public void t(boolean z) {
        super.t(z);
        Iterator<kj7> it = this.q.iterator();
        while (it.hasNext()) {
            it.next().k(z);
        }
    }

    public List<kj7> v() {
        return this.q;
    }

    public vo1(vo1 vo1Var, List<kj7> list) {
        super(vo1Var);
        this.q = list;
    }

    public vo1() {
    }
}
