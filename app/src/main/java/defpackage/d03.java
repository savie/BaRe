package defpackage;

import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d03 implements x94 {
    @Override // defpackage.x94
    public final ImageHeaderParser$ImageType a(ByteBuffer byteBuffer) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    @Override // defpackage.x94
    public final int b(ByteBuffer byteBuffer, m35 m35Var) {
        AtomicReference atomicReference = ay0.a;
        return d(new yx0(byteBuffer), m35Var);
    }

    @Override // defpackage.x94
    public final ImageHeaderParser$ImageType c(InputStream inputStream) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    @Override // defpackage.x94
    public final int d(InputStream inputStream, m35 m35Var) throws Throwable {
        int iE;
        c03 c03Var = new c03(inputStream);
        yz2 yz2VarC = c03Var.c("Orientation");
        if (yz2VarC == null) {
            iE = 1;
        } else {
            try {
                iE = yz2VarC.e(c03Var.f);
            } catch (NumberFormatException unused) {
                iE = 1;
            }
        }
        if (iE == 0) {
            return -1;
        }
        return iE;
    }
}
