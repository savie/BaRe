package defpackage;

import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q77 implements p77, jz0 {
    public final p77 a;
    public final String b;
    public final Set c;

    public q77(p77 p77Var) {
        p77Var.getClass();
        this.a = p77Var;
        this.b = p77Var.a() + '?';
        this.c = bb9.l(p77Var);
    }

    @Override // defpackage.p77
    public final String a() {
        return this.b;
    }

    @Override // defpackage.jz0
    public final Set b() {
        return this.c;
    }

    @Override // defpackage.p77
    public final boolean c() {
        return true;
    }

    @Override // defpackage.p77
    public final int d(String str) {
        str.getClass();
        return this.a.d(str);
    }

    @Override // defpackage.p77
    public final zh8 e() {
        return this.a.e();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q77) {
            return pe4.d(this.a, ((q77) obj).a);
        }
        return false;
    }

    @Override // defpackage.p77
    public final int f() {
        return this.a.f();
    }

    @Override // defpackage.p77
    public final String g(int i) {
        return this.a.g(i);
    }

    @Override // defpackage.p77
    public final List getAnnotations() {
        return this.a.getAnnotations();
    }

    @Override // defpackage.p77
    public final List h(int i) {
        return this.a.h(i);
    }

    public final int hashCode() {
        return this.a.hashCode() * 31;
    }

    @Override // defpackage.p77
    public final p77 i(int i) {
        return this.a.i(i);
    }

    @Override // defpackage.p77
    public final boolean isInline() {
        return this.a.isInline();
    }

    @Override // defpackage.p77
    public final boolean j(int i) {
        return this.a.j(i);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append('?');
        return sb.toString();
    }
}
