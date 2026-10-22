package defpackage;

import android.graphics.ImageDecoder;
import android.os.Build;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rc implements ql6 {
    public final sc a;

    public rc(sc scVar) {
        this.a = scVar;
    }

    @Override // defpackage.ql6
    public final boolean a(Object obj, ou5 ou5Var) throws IOException {
        sc scVar = this.a;
        ImageHeaderParser$ImageType imageHeaderParser$ImageTypeS = pe4.s(scVar.a, (InputStream) obj, scVar.b);
        if (imageHeaderParser$ImageTypeS != ImageHeaderParser$ImageType.ANIMATED_WEBP) {
            return Build.VERSION.SDK_INT >= 31 && imageHeaderParser$ImageTypeS == ImageHeaderParser$ImageType.ANIMATED_AVIF;
        }
        return true;
    }

    @Override // defpackage.ql6
    public final ll6 b(Object obj, int i, int i2, ou5 ou5Var) {
        return sc.a(ImageDecoder.createSource(ay0.b((InputStream) obj)), i, i2, ou5Var);
    }
}
