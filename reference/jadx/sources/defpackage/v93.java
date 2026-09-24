package defpackage;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v93 extends gs4 implements mt3 {
    public static final v93 a = new v93(1);

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        File file = (File) obj;
        file.getClass();
        String absolutePath = file.getCanonicalFile().getAbsolutePath();
        absolutePath.getClass();
        return new eh7(absolutePath);
    }
}
