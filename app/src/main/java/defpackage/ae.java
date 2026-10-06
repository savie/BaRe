package defpackage;

import java.io.Serializable;
import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ae implements ee, Serializable {
    public final Class a;
    public final Class b;
    public final Annotation c;
    public final Annotation d;

    public ae(Class cls, Annotation annotation, Class cls2, Annotation annotation2) {
        this.a = cls;
        this.c = annotation;
        this.b = cls2;
        this.d = annotation2;
    }

    @Override // defpackage.ee
    public final Annotation b(Class cls) {
        if (this.a == cls) {
            return this.c;
        }
        if (this.b == cls) {
            return this.d;
        }
        return null;
    }

    @Override // defpackage.ee
    public final int size() {
        return 2;
    }
}
