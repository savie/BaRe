package defpackage;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsSeekBar;
import android.widget.EditText;
import androidx.fragment.app.z;
import com.bumptech.glide.a;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.firebase.FirebaseApp;
import com.microsoft.identity.common.java.authscheme.BearerAuthenticationSchemeInternal;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ro implements a13, ji3, cl6, to2, n59 {
    public static final int[] d = {R.attr.indeterminateDrawable, R.attr.progressDrawable};
    public final /* synthetic */ int a;
    public Object b;
    public Object c;

    public ro(EditText editText) {
        this.a = 4;
        this.b = editText;
        bv2 bv2Var = new bv2(editText);
        this.c = bv2Var;
        editText.addTextChangedListener(bv2Var);
        if (qu2.b == null) {
            synchronized (qu2.a) {
                try {
                    if (qu2.b == null) {
                        qu2 qu2Var = new qu2();
                        try {
                            qu2.c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, qu2.class.getClassLoader());
                        } catch (Throwable unused) {
                        }
                        qu2.b = qu2Var;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        editText.setEditableFactory(qu2.b);
    }

    @Override // defpackage.a13
    public int a() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ((nh) this.b).b;
        ExtendedFloatingActionButton extendedFloatingActionButton2 = (ExtendedFloatingActionButton) this.c;
        int i = extendedFloatingActionButton2.A0;
        if (i != -1) {
            return (i == 0 || i == -2) ? extendedFloatingActionButton.getMeasuredHeight() : i;
        }
        if (!(extendedFloatingActionButton2.getParent() instanceof View)) {
            return extendedFloatingActionButton.getMeasuredHeight();
        }
        View view = (View) extendedFloatingActionButton2.getParent();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null || layoutParams.height != -2) {
            return (view.getHeight() - ((!(extendedFloatingActionButton2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) extendedFloatingActionButton2.getLayoutParams()) == null) ? 0 : marginLayoutParams.topMargin + marginLayoutParams.bottomMargin)) - (view.getPaddingBottom() + view.getPaddingTop());
        }
        return extendedFloatingActionButton.getMeasuredHeight();
    }

    @Override // defpackage.a13
    public int b() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        nh nhVar = (nh) this.b;
        ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) this.c;
        if (!(extendedFloatingActionButton.getParent() instanceof View)) {
            return nhVar.b();
        }
        View view = (View) extendedFloatingActionButton.getParent();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null || layoutParams.width != -2) {
            return (view.getWidth() - ((!(extendedFloatingActionButton.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) extendedFloatingActionButton.getLayoutParams()) == null) ? 0 : marginLayoutParams.leftMargin + marginLayoutParams.rightMargin)) - (view.getPaddingRight() + view.getPaddingLeft());
        }
        return nhVar.b();
    }

    @Override // defpackage.to2
    public void c() {
        eg6 eg6Var = (eg6) this.b;
        synchronized (eg6Var) {
            eg6Var.c = eg6Var.a.length;
        }
    }

    @Override // defpackage.cl6
    public void d(String str, String str2) {
        ((wj6) ((km5) this.c).b).j(((gd) this.b).k(str != null ? wc2.b(str, str2) : null));
    }

    public void e(String str, PrintWriter printWriter) {
        gz4 gz4Var = (gz4) this.c;
        if (gz4Var.b.c <= 0) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Loaders:");
        String strConcat = str.concat("    ");
        int i = 0;
        while (true) {
            yj7 yj7Var = gz4Var.b;
            if (i >= yj7Var.c) {
                return;
            }
            dz4 dz4Var = (dz4) yj7Var.c(i);
            printWriter.print(str);
            printWriter.print("  #");
            printWriter.print(gz4Var.b.a[i]);
            printWriter.print(": ");
            printWriter.println(dz4Var.toString());
            printWriter.print(strConcat);
            printWriter.print("mId=");
            printWriter.print(0);
            printWriter.print(" mArgs=");
            printWriter.println((Object) null);
            printWriter.print(strConcat);
            printWriter.print("mLoader=");
            printWriter.println(dz4Var.l);
            y29 y29Var = dz4Var.l;
            String strConcat2 = strConcat.concat("  ");
            y29Var.getClass();
            printWriter.print(strConcat2);
            printWriter.print("mId=");
            printWriter.print(0);
            printWriter.print(" mListener=");
            printWriter.println(y29Var.a);
            if (y29Var.b || y29Var.e) {
                printWriter.print(strConcat2);
                printWriter.print("mStarted=");
                printWriter.print(y29Var.b);
                printWriter.print(" mContentChanged=");
                printWriter.print(y29Var.e);
                printWriter.print(" mProcessingChange=");
                printWriter.println(false);
            }
            if (y29Var.c || y29Var.d) {
                printWriter.print(strConcat2);
                printWriter.print("mAbandoned=");
                printWriter.print(y29Var.c);
                printWriter.print(" mReset=");
                printWriter.println(y29Var.d);
            }
            if (y29Var.g != null) {
                printWriter.print(strConcat2);
                printWriter.print("mTask=");
                printWriter.print(y29Var.g);
                printWriter.print(" waiting=");
                y29Var.g.getClass();
                printWriter.println(false);
            }
            if (y29Var.h != null) {
                printWriter.print(strConcat2);
                printWriter.print("mCancellingTask=");
                printWriter.print(y29Var.h);
                printWriter.print(" waiting=");
                y29Var.h.getClass();
                printWriter.println(false);
            }
            if (dz4Var.n != null) {
                printWriter.print(strConcat);
                printWriter.print("mCallbacks=");
                printWriter.println(dz4Var.n);
                ez4 ez4Var = dz4Var.n;
                String strConcat3 = strConcat.concat("  ");
                ez4Var.getClass();
                printWriter.print(strConcat3);
                printWriter.print("mDeliveredData=");
                printWriter.println(ez4Var.b);
            }
            printWriter.print(strConcat);
            printWriter.print("mData=");
            y29 y29Var2 = dz4Var.l;
            Object objD = dz4Var.d();
            y29Var2.getClass();
            StringBuilder sb = new StringBuilder(64);
            if (objD == null) {
                sb.append("null");
            } else {
                Class<?> cls = objD.getClass();
                sb.append(cls.getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(cls)));
                sb.append("}");
            }
            printWriter.println(sb.toString());
            printWriter.print(strConcat);
            printWriter.print("mStarted=");
            printWriter.println(dz4Var.c > 0);
            i++;
        }
    }

    public long[] f(int i) {
        Semaphore semaphore = (Semaphore) this.c;
        try {
            if (!semaphore.tryAcquire(i, 5000L, TimeUnit.MILLISECONDS)) {
                throw new gv6("Not enough credits (" + semaphore.availablePermits() + " available) to hand out " + i + " sequence numbers");
            }
            long j = i;
            long andAdd = ((AtomicLong) this.b).getAndAdd(j);
            int i2 = (int) ((j + andAdd) - andAdd);
            long[] jArr = new long[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                jArr[i3] = ((long) i3) + andAdd;
            }
            return jArr;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            StringBuilder sbR = dj7.r(i, "Got interrupted waiting for ", " to be available. Credits available at this moment: ");
            sbR.append(semaphore.availablePermits());
            throw new gv6(sbR.toString());
        }
    }

    @Override // defpackage.to2
    public void g(nr0 nr0Var, Bitmap bitmap) throws IOException {
        IOException iOException = ((iz2) this.c).b;
        if (iOException != null) {
            if (bitmap == null) {
                throw iOException;
            }
            nr0Var.f(bitmap);
            throw iOException;
        }
    }

    @Override // defpackage.a13
    public int getPaddingEnd() {
        return ((ExtendedFloatingActionButton) this.c).t0;
    }

    @Override // defpackage.a13
    public int getPaddingStart() {
        return ((ExtendedFloatingActionButton) this.c).s0;
    }

    @Override // defpackage.n59
    public void h(f59 f59Var) {
        m69 m69Var = (m69) f59Var;
        ((ke) this.c).t(new b69(m69Var.b, m69Var.a, Long.valueOf(m69Var.c), BearerAuthenticationSchemeInternal.SCHEME_BEARER), null, null, Boolean.valueOf(m69Var.d), null, (yf1) this.b, this);
    }

    @Override // defpackage.a13
    public ViewGroup.LayoutParams i() {
        int i = ((ExtendedFloatingActionButton) this.c).A0;
        if (i == 0) {
            i = -2;
        }
        return new ViewGroup.LayoutParams(-1, i);
    }

    public yo1 k(Class cls) throws sf5 {
        ln5 ln5Var = new ln5(cls, 4);
        if (cls != null) {
            return new yo1((ai5) this.b, ln5Var, null);
        }
        throw new sf5("Can not instantiate null class", new Object[0]);
    }

    public File l() {
        if (((File) this.b) == null) {
            synchronized (this) {
                try {
                    if (((File) this.b) == null) {
                        String str = "PersistedInstallation." + ((FirebaseApp) this.c).getPersistenceKey() + ".json";
                        File file = new File(((FirebaseApp) this.c).getApplicationContext().getNoBackupFilesDir(), str);
                        this.b = file;
                        if (file.exists()) {
                            return (File) this.b;
                        }
                        File file2 = new File(((FirebaseApp) this.c).getApplicationContext().getFilesDir(), str);
                        if (file2.exists() && !file2.renameTo((File) this.b)) {
                            Log.e("PersistedInstallation", "Unable to move the file from back up to non back up directory", new IOException("Unable to move the file from back up to non back up directory"));
                            return file2;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return (File) this.b;
    }

    public yk6 m(Context context, a aVar, hu4 hu4Var, z zVar, boolean z) {
        xh8.c();
        xh8.c();
        HashMap map = (HashMap) this.b;
        yk6 yk6Var = (yk6) map.get(hu4Var);
        if (yk6Var != null) {
            return yk6Var;
        }
        cu4 cu4Var = new cu4(hu4Var);
        fo8 fo8Var = (fo8) this.c;
        ns0 ns0Var = new ns0(this, zVar);
        fo8Var.getClass();
        yk6 yk6Var2 = new yk6(aVar, cu4Var, ns0Var, context);
        map.put(hu4Var, yk6Var2);
        cu4Var.k(new iu4(this, hu4Var));
        if (z) {
            yk6Var2.m();
        }
        return yk6Var2;
    }

    public void n(ee0 ee0Var) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", ee0Var.a);
            jSONObject.put("Status", dj7.A(ee0Var.b));
            jSONObject.put("AuthToken", ee0Var.c);
            jSONObject.put("RefreshToken", ee0Var.d);
            jSONObject.put("TokenCreationEpochInSecs", ee0Var.f);
            jSONObject.put("ExpiresInSecs", ee0Var.e);
            jSONObject.put("FisError", ee0Var.g);
            File fileCreateTempFile = File.createTempFile("PersistedInstallation", "tmp", ((FirebaseApp) this.c).getApplicationContext().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (fileCreateTempFile.renameTo(l())) {
            } else {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
    }

    public void o(AttributeSet attributeSet, int i) {
        AbsSeekBar absSeekBar = (AbsSeekBar) this.b;
        u94 u94VarE = u94.e(i, 0, absSeekBar.getContext(), attributeSet, d);
        Drawable drawableC = u94VarE.c(0);
        if (drawableC != null) {
            if (drawableC instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) drawableC;
                int numberOfFrames = animationDrawable.getNumberOfFrames();
                AnimationDrawable animationDrawable2 = new AnimationDrawable();
                animationDrawable2.setOneShot(animationDrawable.isOneShot());
                for (int i2 = 0; i2 < numberOfFrames; i2++) {
                    Drawable drawableU = u(animationDrawable.getFrame(i2), true);
                    drawableU.setLevel(yr5.p);
                    animationDrawable2.addFrame(drawableU, animationDrawable.getDuration(i2));
                }
                animationDrawable2.setLevel(yr5.p);
                drawableC = animationDrawable2;
            }
            absSeekBar.setIndeterminateDrawable(drawableC);
        }
        Drawable drawableC2 = u94VarE.c(1);
        if (drawableC2 != null) {
            absSeekBar.setProgressDrawable(u(drawableC2, false));
        }
        u94VarE.f();
    }

    public void p(byte[] bArr) {
        long[] jArr = ((long[][]) this.c)[bArr[15] & 255];
        long j = jArr[0];
        long j2 = jArr[1];
        for (int i = 14; i >= 0; i--) {
            long[] jArr2 = ((long[][]) this.c)[bArr[i] & 255];
            long j3 = j2 << 56;
            j2 = ((j2 >>> 8) | (j << 56)) ^ jArr2[1];
            j = (((((j >>> 8) ^ jArr2[0]) ^ j3) ^ (j3 >>> 1)) ^ (j3 >>> 2)) ^ (j3 >>> 7);
        }
        xx3.u(0, j, bArr);
        xx3.u(8, j2, bArr);
    }

    public void q(String str) {
        ((ScheduledExecutorService) this.b).execute(new zu1(0, (js1) this.c, str));
    }

    public Object r(mc4 mc4Var, Class cls) {
        Object objB = k(cls).b(mc4Var);
        if (objB == null) {
            return null;
        }
        ((ai5) this.b).m(objB.getClass());
        ((cz4) this.c).getClass();
        return objB;
    }

    public ee0 s() {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(l());
            while (true) {
                try {
                    int i = fileInputStream.read(bArr, 0, 16384);
                    if (i < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            }
            jSONObject = new JSONObject(byteArrayOutputStream.toString());
            fileInputStream.close();
        } catch (IOException | JSONException unused) {
            jSONObject = new JSONObject();
        }
        String strOptString = jSONObject.optString("Fid", null);
        int iOptInt = jSONObject.optInt("Status", 0);
        String strOptString2 = jSONObject.optString("AuthToken", null);
        String strOptString3 = jSONObject.optString("RefreshToken", null);
        long jOptLong = jSONObject.optLong("TokenCreationEpochInSecs", 0L);
        long jOptLong2 = jSONObject.optLong("ExpiresInSecs", 0L);
        String strOptString4 = jSONObject.optString("FisError", null);
        int i2 = ee0.h;
        byte b = (byte) (((byte) (0 | 2)) | 1);
        int i3 = dj7.C(5)[iOptInt];
        if (i3 == 0) {
            f6.n("Null registrationStatus");
            return null;
        }
        byte b2 = (byte) (((byte) (b | 2)) | 1);
        if (b2 == 3 && i3 != 0) {
            return new ee0(strOptString, i3, strOptString2, strOptString3, jOptLong2, jOptLong, strOptString4);
        }
        StringBuilder sb = new StringBuilder();
        if (i3 == 0) {
            sb.append(" registrationStatus");
        }
        if ((b2 & 1) == 0) {
            sb.append(" expiresInSecs");
        }
        if ((b2 & 2) == 0) {
            sb.append(" tokenCreationEpochInSecs");
        }
        l0.e(xs1.k("Missing required properties:", sb));
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
    
        if (r7.a(r8, r9, r0) == r5) goto L23;
     */
    @Override // defpackage.ji3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object t(defpackage.li3 r8, defpackage.kv1 r9) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r9 instanceof defpackage.qi3
            if (r0 == 0) goto L13
            r0 = r9
            qi3 r0 = (defpackage.qi3) r0
            int r1 = r0.b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.b = r1
            goto L18
        L13:
            qi3 r0 = new qi3
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.a
            int r1 = r0.b
            r2 = 2
            r3 = 1
            r4 = 0
            yx1 r5 = defpackage.yx1.a
            if (r1 == 0) goto L3c
            if (r1 == r3) goto L31
            if (r1 != r2) goto L2b
            defpackage.lg7.H(r9)
            goto L66
        L2b:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r7)
            return r4
        L31:
            int r8 = r0.e
            li3 r1 = r0.d
            defpackage.lg7.H(r9)
            r6 = r1
            r1 = r8
            r8 = r6
            goto L51
        L3c:
            defpackage.lg7.H(r9)
            java.lang.Object r9 = r7.b
            ji3 r9 = (defpackage.ji3) r9
            r0.d = r8
            r1 = 0
            r0.e = r1
            r0.b = r3
            java.io.Serializable r9 = defpackage.xx3.b(r9, r8, r0)
            if (r9 != r5) goto L51
            goto L65
        L51:
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            if (r9 == 0) goto L66
            java.lang.Object r7 = r7.c
            hd7 r7 = (defpackage.hd7) r7
            r0.d = r4
            r0.e = r1
            r0.b = r2
            java.lang.Object r7 = r7.a(r8, r9, r0)
            if (r7 != r5) goto L66
        L65:
            return r5
        L66:
            be8 r7 = defpackage.be8.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ro.t(li3, kv1):java.lang.Object");
    }

    public String toString() {
        switch (this.a) {
            case XmlPullParser.COMMENT /* 9 */:
                StringBuilder sb = new StringBuilder(128);
                sb.append("LoaderManager{");
                sb.append(Integer.toHexString(System.identityHashCode(this)));
                sb.append(" in ");
                Class<?> cls = ((fu4) this.b).getClass();
                sb.append(cls.getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(cls)));
                sb.append("}}");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public Drawable u(Drawable drawable, boolean z) {
        if (!(drawable instanceof LayerDrawable)) {
            if (!(drawable instanceof BitmapDrawable)) {
                return drawable;
            }
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (((Bitmap) this.c) == null) {
                this.c = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
        }
        LayerDrawable layerDrawable = (LayerDrawable) drawable;
        int numberOfLayers = layerDrawable.getNumberOfLayers();
        Drawable[] drawableArr = new Drawable[numberOfLayers];
        for (int i = 0; i < numberOfLayers; i++) {
            int id = layerDrawable.getId(i);
            drawableArr[i] = u(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
        }
        LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
        for (int i2 = 0; i2 < numberOfLayers; i2++) {
            layerDrawable2.setId(i2, layerDrawable.getId(i2));
            layerDrawable2.setLayerGravity(i2, layerDrawable.getLayerGravity(i2));
            layerDrawable2.setLayerWidth(i2, layerDrawable.getLayerWidth(i2));
            layerDrawable2.setLayerHeight(i2, layerDrawable.getLayerHeight(i2));
            layerDrawable2.setLayerInsetLeft(i2, layerDrawable.getLayerInsetLeft(i2));
            layerDrawable2.setLayerInsetRight(i2, layerDrawable.getLayerInsetRight(i2));
            layerDrawable2.setLayerInsetTop(i2, layerDrawable.getLayerInsetTop(i2));
            layerDrawable2.setLayerInsetBottom(i2, layerDrawable.getLayerInsetBottom(i2));
            layerDrawable2.setLayerInsetStart(i2, layerDrawable.getLayerInsetStart(i2));
            layerDrawable2.setLayerInsetEnd(i2, layerDrawable.getLayerInsetEnd(i2));
        }
        return layerDrawable2;
    }

    public boolean v(mc4 mc4Var, Class cls) throws sf5 {
        yo1 yo1VarK = k(cls);
        ((ai5) this.b).m(cls);
        ((cz4) this.c).getClass();
        return yo1VarK.d(mc4Var);
    }

    public void w(ev5 ev5Var, Object obj, Class cls, String str) {
        ai5 ai5Var = (ai5) this.b;
        ev5 ev5VarI = ev5Var.i(str);
        ln5 ln5Var = new ln5(cls, 4);
        if (obj != null) {
            Class<?> cls2 = obj.getClass();
            xd2 xd2VarE = ((x44) ai5Var.d).d(cls2).e();
            if (xd2VarE != null) {
                ((oe) xd2VarE).e(ev5VarI, null);
            }
            cv5 cv5Var = (cv5) ev5VarI;
            xn5 attributes = cv5Var.getAttributes();
            if (attributes == null) {
                throw new kd5("No attributes for %s", cv5Var);
            }
            if (!((zo7) ai5Var.c).d(ln5Var, obj, attributes, (i87) ai5Var.e)) {
                k(cls2).a(cv5Var, obj);
            }
        }
        ((cv5) ev5VarI).commit();
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((yf1) this.b).a(zv1.t(str));
    }

    public /* synthetic */ ro(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public /* synthetic */ ro(Object obj, Object obj2, int i, boolean z) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }

    public ro(ke keVar, yf1 yf1Var) {
        this.a = 18;
        this.b = yf1Var;
        Objects.requireNonNull(keVar);
        this.c = keVar;
    }

    public ro(fo8 fo8Var) {
        this.a = 8;
        this.b = new HashMap();
        this.c = fo8Var;
    }

    public ro(fu4 fu4Var, yl8 yl8Var) {
        this.a = 9;
        this.b = fu4Var;
        yl8Var.getClass();
        m22 m22Var = m22.b;
        m22Var.getClass();
        lj3 lj3Var = new lj3(yl8Var, gz4.d, m22Var);
        n81 n81VarA = ph6.a(gz4.class);
        String strB = n81VarA.b();
        if (strB != null) {
            this.c = (gz4) lj3Var.b(n81VarA, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(strB));
        } else {
            c6.f("Local and anonymous classes can not be ViewModels");
            throw null;
        }
    }

    public ro(AbsSeekBar absSeekBar) {
        this.a = 0;
        this.b = absSeekBar;
    }

    public ro(FirebaseApp firebaseApp, int i) {
        this.a = i;
        switch (i) {
            case 10:
                this.c = firebaseApp;
                return;
            default:
                new HashSet();
                this.c = firebaseApp;
                if (firebaseApp != null) {
                    this.b = firebaseApp.getApplicationContext();
                    return;
                }
                Log.e("FirebaseDatabase", "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
                Log.e("FirebaseDatabase", "ERROR: You must call FirebaseApp.initializeApp() before using Firebase Database.");
                Log.e("FirebaseDatabase", "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
                g84.h("You need to call FirebaseApp.initializeApp() before using Firebase Database.");
                throw null;
        }
    }

    public ro(ai5 ai5Var) {
        this.a = 17;
        this.c = ai5Var.n();
        this.b = ai5Var;
    }

    public /* synthetic */ ro(int i) {
        this.a = i;
    }
}
