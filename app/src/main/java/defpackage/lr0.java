package defpackage;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lr0 implements ql6 {
    public final /* synthetic */ int a;
    public final Object b;

    public lr0(int i) {
        this.a = i;
        switch (i) {
            case 1:
                this.b = new lr0(0);
                break;
            default:
                this.b = new ge();
                break;
        }
    }

    @Override // defpackage.ql6
    public final /* bridge */ /* synthetic */ boolean a(Object obj, ou5 ou5Var) {
        switch (this.a) {
            case 0:
                f6.d(obj);
                break;
            default:
                break;
        }
        return true;
    }

    @Override // defpackage.ql6
    public final ll6 b(Object obj, int i, int i2, ou5 ou5Var) {
        switch (this.a) {
            case 0:
                return c(f6.d(obj), i, i2, ou5Var);
            default:
                return ((lr0) this.b).c(ImageDecoder.createSource(ay0.b((InputStream) obj)), i, i2, ou5Var);
        }
    }

    public or0 c(ImageDecoder.Source source, int i, int i2, ou5 ou5Var) throws IOException {
        Bitmap bitmapDecodeBitmap = ImageDecoder.decodeBitmap(source, new if2(i, i2, ou5Var));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            Log.v("BitmapImageDecoder", "Decoded [" + bitmapDecodeBitmap.getWidth() + "x" + bitmapDecodeBitmap.getHeight() + "] for [" + i + "x" + i2 + "]");
        }
        return new or0((ge) this.b, bitmapDecodeBitmap);
    }
}
