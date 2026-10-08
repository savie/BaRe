package defpackage;

import java.io.ByteArrayOutputStream;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qt6 extends mt6 {
    public String b;

    @Override // defpackage.mt6
    public final void c(zu6 zu6Var) throws iw0 {
        String strC;
        Charset charset = h51.d;
        vw2 vw2Var = zu6Var.b;
        String strName = charset.name();
        strName.getClass();
        switch (strName) {
            case "UTF-16":
                strC = vw2Var.c(zu6Var);
                break;
            case "UTF-8":
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte bN = zu6Var.n();
                while (bN != 0) {
                    byteArrayOutputStream.write(bN);
                    bN = zu6Var.n();
                }
                strC = new String(byteArrayOutputStream.toByteArray(), charset);
                break;
            case "UTF-16BE":
                strC = vw2.b(zu6Var, h51.b);
                break;
            case "UTF-16LE":
                strC = vw2.b(zu6Var, h51.c);
                break;
            default:
                throw new UnsupportedCharsetException(charset.name());
        }
        this.b = strC;
    }

    @Override // defpackage.mt6
    public final int d(zu6 zu6Var) {
        zu6Var.h(this.b, h51.d);
        return (this.b.length() * 2) + 2;
    }
}
