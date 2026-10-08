package defpackage;

import java.io.Serializable;
import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yd implements ee, Serializable {
    public final Class a;
    public final Annotation b;

    public yd(Class cls, Annotation annotation) {
        this.a = cls;
        this.b = annotation;
    }

    @Override // defpackage.ee
    public final Annotation b(Class cls) {
        if (this.a == cls) {
            return this.b;
        }
        return null;
    }

    @Override // defpackage.ee
    public final int size() {
        return 1;
    }
}
