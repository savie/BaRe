package defpackage;

import java.util.zip.ZipException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lf8 extends ZipException {
    public lf8(mz8 mz8Var, ez8 ez8Var) {
        super("Unsupported compression method " + ez8Var.a + " (" + mz8Var.name() + ") used in entry " + ez8Var.getName());
    }

    public lf8(kf8 kf8Var, ez8 ez8Var) {
        super("Unsupported feature " + kf8Var + " used in entry " + ez8Var.getName());
    }
}
