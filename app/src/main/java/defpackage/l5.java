package defpackage;

import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.file.OpenOption;
import java.nio.file.Path;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l5 extends g67 {
    public static final OpenOption[] r = py5.a;
    public y4 k;
    public Charset n = Charset.defaultCharset();
    public Charset p = Charset.defaultCharset();
    public final OpenOption[] q = r;

    public final Path I() {
        y4 y4Var = this.k;
        if (y4Var == null) {
            throw new IllegalStateException("origin == null");
        }
        String simpleName = y4.class.getSimpleName();
        Object obj = y4Var.k;
        throw new UnsupportedOperationException(String.format("%s#%s() for %s origin %s", simpleName, "getPath", obj.getClass().getSimpleName(), obj));
    }

    public final void J(InputStream inputStream) {
        this.k = new y4(inputStream);
    }
}
