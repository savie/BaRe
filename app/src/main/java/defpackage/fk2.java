package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fk2 implements ri2 {
    public LinkedList a;
    public LinkedList b;
    public kk5 c;
    public jk5 d;
    public Annotation[] e;
    public eg2 f;
    public eg2 g;
    public pu5 h;
    public no6 i;
    public Class j;
    public String k;
    public boolean l;
    public boolean m;

    @Override // defpackage.ri2
    public final boolean a() {
        return this.m;
    }

    @Override // defpackage.ri2
    public final eg2 d() {
        return this.f;
    }

    @Override // defpackage.ri2
    public final Constructor[] e() {
        return this.j.getDeclaredConstructors();
    }

    @Override // defpackage.ri2
    public final boolean f() {
        Class cls = this.j;
        if (Modifier.isStatic(cls.getModifiers())) {
            return true;
        }
        return !cls.isMemberClass();
    }

    @Override // defpackage.ri2
    public final kk5 g() {
        return this.c;
    }

    @Override // defpackage.ri2
    public final String getName() {
        return this.k;
    }

    @Override // defpackage.ri2
    public final jk5 getNamespace() {
        return this.d;
    }

    @Override // defpackage.ri2
    public final pu5 getOrder() {
        return this.h;
    }

    @Override // defpackage.ri2
    public final no6 getRoot() {
        return this.i;
    }

    @Override // defpackage.ri2
    public final Class getType() {
        return this.j;
    }

    @Override // defpackage.ri2
    public final List h() {
        return this.b;
    }

    @Override // defpackage.ri2
    public final eg2 i() {
        eg2 eg2Var = this.f;
        return eg2Var != null ? eg2Var : this.g;
    }

    @Override // defpackage.ri2
    public final boolean isPrimitive() {
        return this.j.isPrimitive();
    }

    @Override // defpackage.ri2
    public final boolean isRequired() {
        return this.l;
    }

    @Override // defpackage.ri2
    public final Class j() {
        Class superclass = this.j.getSuperclass();
        if (superclass == Object.class) {
            return null;
        }
        return superclass;
    }

    @Override // defpackage.ri2
    public final List k() {
        return this.a;
    }

    public final String toString() {
        return this.j.toString();
    }
}
