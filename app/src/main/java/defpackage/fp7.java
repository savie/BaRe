package defpackage;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fp7 implements ql6 {
    public final ArrayList a;
    public final ux0 b;
    public final m35 c;

    public fp7(ArrayList arrayList, ux0 ux0Var, m35 m35Var) {
        this.a = arrayList;
        this.b = ux0Var;
        this.c = m35Var;
    }

    @Override // defpackage.ql6
    public final boolean a(Object obj, ou5 ou5Var) {
        return !((Boolean) ou5Var.c(px3.b)).booleanValue() && pe4.s(this.a, (InputStream) obj, this.c) == ImageHeaderParser$ImageType.GIF;
    }

    @Override // defpackage.ql6
    public final ll6 b(Object obj, int i, int i2, ou5 ou5Var) {
        byte[] byteArray;
        InputStream inputStream = (InputStream) obj;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i3 = inputStream.read(bArr);
                if (i3 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i3);
            }
            byteArrayOutputStream.flush();
            byteArray = byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e);
            }
            byteArray = null;
        }
        if (byteArray == null) {
            return null;
        }
        return this.b.b(ByteBuffer.wrap(byteArray), i, i2, ou5Var);
    }
}
