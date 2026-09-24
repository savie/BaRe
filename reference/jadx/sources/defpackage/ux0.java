package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.a;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ux0 implements ql6 {
    public static final ge f = new ge();
    public static final tx0 g = new tx0(0);
    public final Context a;
    public final ArrayList b;
    public final ot9 e;
    public final ge d = f;
    public final tx0 c = g;

    public ux0(Context context, ArrayList arrayList, nr0 nr0Var, m35 m35Var) {
        this.a = context.getApplicationContext();
        this.b = arrayList;
        this.e = new ot9(nr0Var, m35Var, false);
    }

    public static int d(nx3 nx3Var, int i, int i2) {
        int iMin = Math.min(nx3Var.g / i2, nx3Var.f / i);
        int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
        if (Log.isLoggable("BufferGifDecoder", 2) && iMax > 1) {
            StringBuilder sbN = xs1.n("Downsampling GIF, sampleSize: ", iMax, ", target dimens: [", "x", i);
            sbN.append(i2);
            sbN.append("], actual dimens: [");
            sbN.append(nx3Var.f);
            sbN.append("x");
            sbN.append(nx3Var.g);
            sbN.append("]");
            Log.v("BufferGifDecoder", sbN.toString());
        }
        return iMax;
    }

    @Override // defpackage.ql6
    public final boolean a(Object obj, ou5 ou5Var) {
        return !((Boolean) ou5Var.c(px3.b)).booleanValue() && pe4.t(this.b, (ByteBuffer) obj) == ImageHeaderParser$ImageType.GIF;
    }

    @Override // defpackage.ql6
    public final ll6 b(Object obj, int i, int i2, ou5 ou5Var) {
        ox3 ox3Var;
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        tx0 tx0Var = this.c;
        synchronized (tx0Var) {
            try {
                ox3 ox3Var2 = (ox3) tx0Var.a.poll();
                if (ox3Var2 == null) {
                    ox3Var2 = new ox3();
                }
                ox3Var = ox3Var2;
                ox3Var.b = null;
                Arrays.fill(ox3Var.a, (byte) 0);
                ox3Var.c = new nx3();
                ox3Var.d = 0;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                ox3Var.b = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                ox3Var.b.order(ByteOrder.LITTLE_ENDIAN);
            } catch (Throwable th) {
                throw th;
            }
        }
        try {
            return c(byteBuffer, i, i2, ox3Var, ou5Var);
        } finally {
            this.c.a(ox3Var);
        }
    }

    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(HashMap.java:338)
    	at java.base/java.util.HashMap.getNode(HashMap.java:568)
    	at java.base/java.util.HashMap.containsKey(HashMap.java:594)
    	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
     */
    public final gx3 c(ByteBuffer byteBuffer, int i, int i2, ox3 ox3Var, ou5 ou5Var) {
        StringBuilder sb;
        gl7 gl7Var;
        Bitmap.Config config;
        int i3 = g15.b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            nx3 nx3VarB = ox3Var.b();
            if (nx3VarB.c > 0 && nx3VarB.b == 0) {
                Bitmap.Config config2 = ou5Var.c(px3.a) == pd2.b ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int iD = d(nx3VarB, i, i2);
                ge geVar = this.d;
                ot9 ot9Var = this.e;
                geVar.getClass();
                gl7 gl7Var2 = new gl7(ot9Var, nx3VarB, byteBuffer, iD);
                Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
                if (config2 == config3 || config2 == (config = Bitmap.Config.RGB_565)) {
                    gl7Var = gl7Var2;
                    gl7Var.t = config2;
                } else {
                    gl7Var = gl7Var2;
                    c6.g("Unsupported format: ", config2, ", must be one of ", config3, " or ", config);
                }
                gl7Var.k = (gl7Var.k + 1) % gl7Var.l.c;
                Bitmap bitmapB = gl7Var.b();
                if (bitmapB == null) {
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        sb = new StringBuilder("Decoded GIF from stream in ");
                        sb.append(g15.a(jElapsedRealtimeNanos));
                        Log.v("BufferGifDecoder", sb.toString());
                        return null;
                    }
                    return null;
                }
                gx3 gx3Var = new gx3(new fx3(new ex3(new lx3(a.a(this.a), gl7Var, i, i2, bitmapB))));
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    Log.v("BufferGifDecoder", "Decoded GIF from stream in " + g15.a(jElapsedRealtimeNanos));
                }
                return gx3Var;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                sb = new StringBuilder("Decoded GIF from stream in ");
                sb.append(g15.a(jElapsedRealtimeNanos));
                Log.v("BufferGifDecoder", sb.toString());
                return null;
            }
            return null;
        } catch (Throwable th) {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + g15.a(jElapsedRealtimeNanos));
            }
            throw th;
        }
    }
}
