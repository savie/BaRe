package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vd extends cy0 {
    public static final vd j = new vd();

    @Override // defpackage.cy0
    public final cy0 b(Annotation annotation) {
        Class<? extends Annotation> clsAnnotationType = annotation.annotationType();
        zd zdVar = new zd();
        zdVar.j = clsAnnotationType;
        zdVar.k = annotation;
        return zdVar;
    }

    @Override // defpackage.cy0
    public final s79 c() {
        return new s79(1);
    }

    @Override // defpackage.cy0
    public final ee d() {
        return cy0.a;
    }

    @Override // defpackage.cy0
    public final boolean y(Annotation annotation) {
        return false;
    }
}
