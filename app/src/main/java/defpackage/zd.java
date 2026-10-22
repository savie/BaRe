package defpackage;

import java.lang.annotation.Annotation;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zd extends cy0 {
    public Class j;
    public Annotation k;

    @Override // defpackage.cy0
    public final cy0 b(Annotation annotation) {
        Class<? extends Annotation> clsAnnotationType = annotation.annotationType();
        Class<? extends Annotation> cls = this.j;
        if (cls != clsAnnotationType) {
            return new wd(cls, this.k, clsAnnotationType, annotation);
        }
        this.k = annotation;
        return this;
    }

    @Override // defpackage.cy0
    public final s79 c() {
        Class cls = this.j;
        Annotation annotation = this.k;
        HashMap map = new HashMap(4);
        map.put(cls, annotation);
        return new s79(map, 1);
    }

    @Override // defpackage.cy0
    public final ee d() {
        return new yd(this.j, this.k);
    }

    @Override // defpackage.cy0
    public final boolean y(Annotation annotation) {
        return annotation.annotationType() == this.j;
    }
}
