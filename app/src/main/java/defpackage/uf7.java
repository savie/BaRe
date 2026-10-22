package defpackage;

import java.lang.reflect.Constructor;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uf7 implements Iterable {
    public final uw5 a;
    public final Constructor b;
    public final Class c;

    public uf7(Constructor constructor, Class cls) {
        this.a = new uw5();
        this.b = constructor;
        this.c = cls;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.a.iterator();
    }

    public final String toString() {
        return this.b.toString();
    }

    public uf7(Constructor constructor) {
        this(constructor, constructor.getDeclaringClass());
    }
}
