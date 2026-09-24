package defpackage;

import android.graphics.ImageDecoder;
import android.os.Build;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qc implements ql6 {
    public final /* synthetic */ int a;
    public final Object b;

    public qc() {
        this.a = 1;
        this.b = new lr0(0);
    }

    @Override // defpackage.ql6
    public final boolean a(Object obj, ou5 ou5Var) {
        switch (this.a) {
            case 0:
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeT = pe4.t(((sc) this.b).a, (ByteBuffer) obj);
                if (imageHeaderParser$ImageTypeT != ImageHeaderParser$ImageType.ANIMATED_WEBP) {
                    return Build.VERSION.SDK_INT >= 31 && imageHeaderParser$ImageTypeT == ImageHeaderParser$ImageType.ANIMATED_AVIF;
                }
                return true;
            default:
                return true;
        }
    }

    @Override // defpackage.ql6
    public final ll6 b(Object obj, int i, int i2, ou5 ou5Var) {
        switch (this.a) {
            case 0:
                return sc.a(ImageDecoder.createSource((ByteBuffer) obj), i, i2, ou5Var);
            default:
                return ((lr0) this.b).c(ImageDecoder.createSource((ByteBuffer) obj), i, i2, ou5Var);
        }
    }

    public qc(sc scVar) {
        this.a = 0;
        this.b = scVar;
    }
}
