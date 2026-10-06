package defpackage;

import android.graphics.Bitmap;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n35 implements nr0 {
    public static final Bitmap.Config q = Bitmap.Config.ARGB_8888;
    public final rh7 a;
    public final Set b;
    public final ma2 c;
    public final long d;
    public long e;
    public int f;
    public int k;
    public int n;
    public int p;

    public n35(long j) {
        rh7 rh7Var = new rh7();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        hashSet.add(null);
        hashSet.remove(Bitmap.Config.HARDWARE);
        Set setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        this.d = j;
        this.a = rh7Var;
        this.b = setUnmodifiableSet;
        this.c = new ma2(11);
    }

    public final void a() {
        Log.v("LruBitmapPool", "Hits=" + this.f + ", misses=" + this.k + ", puts=" + this.n + ", evictions=" + this.p + ", currentSize=" + this.e + ", maxSize=" + this.d + "\nStrategy=" + this.a);
    }

    public final synchronized Bitmap b(int i, int i2, Bitmap.Config config) {
        Bitmap bitmapB;
        try {
            if (config == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
            }
            bitmapB = this.a.b(i, i2, config != null ? config : q);
            if (bitmapB == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    this.a.getClass();
                    Log.d("LruBitmapPool", "Missing bitmap=".concat(rh7.c(xh8.m(config) * i * i2, config)));
                }
                this.k++;
            } else {
                this.f++;
                long j = this.e;
                this.a.getClass();
                this.e = j - ((long) xh8.l(bitmapB));
                this.c.getClass();
                bitmapB.setHasAlpha(true);
                bitmapB.setPremultiplied(true);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                this.a.getClass();
                Log.v("LruBitmapPool", "Get bitmap=".concat(rh7.c(xh8.m(config) * i * i2, config)));
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                a();
            }
        } catch (Throwable th) {
            throw th;
        }
        return bitmapB;
    }

    public final synchronized void c(long j) {
        while (this.e > j) {
            try {
                rh7 rh7Var = this.a;
                Bitmap bitmap = (Bitmap) rh7Var.b.l();
                if (bitmap != null) {
                    rh7Var.a(Integer.valueOf(xh8.l(bitmap)), bitmap);
                }
                if (bitmap == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        Log.w("LruBitmapPool", "Size mismatch, resetting");
                        a();
                    }
                    this.e = 0L;
                    return;
                }
                this.c.getClass();
                long j2 = this.e;
                this.a.getClass();
                this.e = j2 - ((long) xh8.l(bitmap));
                this.p++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Evicting bitmap=");
                    this.a.getClass();
                    sb.append(rh7.c(xh8.l(bitmap), bitmap.getConfig()));
                    Log.d("LruBitmapPool", sb.toString());
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    a();
                }
                bitmap.recycle();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.nr0
    public final Bitmap d(int i, int i2, Bitmap.Config config) {
        Bitmap bitmapB = b(i, i2, config);
        if (bitmapB != null) {
            return bitmapB;
        }
        if (config == null) {
            config = q;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // defpackage.nr0
    public final synchronized void f(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable()) {
                this.a.getClass();
                if (xh8.l(bitmap) <= this.d && this.b.contains(bitmap.getConfig())) {
                    this.a.getClass();
                    int iL = xh8.l(bitmap);
                    this.a.e(bitmap);
                    this.c.getClass();
                    this.n++;
                    this.e += (long) iL;
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        this.a.getClass();
                        Log.v("LruBitmapPool", "Put bitmap in pool=".concat(rh7.c(xh8.l(bitmap), bitmap.getConfig())));
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        a();
                    }
                    c(this.d);
                    return;
                }
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                StringBuilder sb = new StringBuilder("Reject bitmap from pool, bitmap: ");
                this.a.getClass();
                sb.append(rh7.c(xh8.l(bitmap), bitmap.getConfig()));
                sb.append(", is mutable: ");
                sb.append(bitmap.isMutable());
                sb.append(", is allowed config: ");
                sb.append(this.b.contains(bitmap.getConfig()));
                Log.v("LruBitmapPool", sb.toString());
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // defpackage.nr0
    public final Bitmap k(int i, int i2, Bitmap.Config config) {
        Bitmap bitmapB = b(i, i2, config);
        if (bitmapB != null) {
            bitmapB.eraseColor(0);
            return bitmapB;
        }
        if (config == null) {
            config = q;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // defpackage.nr0
    public final void l(int i) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i);
        }
        if (i >= 40 || i >= 20) {
            o();
        } else if (i >= 20 || i == 15) {
            c(this.d / 2);
        }
    }

    @Override // defpackage.nr0
    public final void o() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        c(0L);
    }
}
