package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.zip.CRC32;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cy6 implements bw1, jk8 {
    public final /* synthetic */ int a = 4;
    public Object b;
    public Object c;
    public Object d;
    public final Object e;
    public Object f;

    public cy6(Map map) {
        map.getClass();
        this.b = new LinkedHashMap(map);
        this.c = new LinkedHashMap();
        this.d = new LinkedHashMap();
        this.e = new LinkedHashMap();
        this.f = new px6(this);
    }

    @Override // defpackage.bw1
    public void a(ev5 ev5Var, Object obj) {
        switch (this.a) {
            case 1:
                int length = Array.getLength(obj);
                for (int i = 0; i < length; i++) {
                    ((ro) this.c).w(ev5Var, Array.get(obj, i), (Class) ((ln5) this.e).b, (String) this.d);
                }
                ev5Var.commit();
                break;
            default:
                String strI = ((xk1) this.b).i(obj);
                if (strI != null) {
                    ev5Var.setValue(strI);
                }
                break;
        }
    }

    @Override // defpackage.bw1
    public Object b(mc4 mc4Var) throws kd5 {
        switch (this.a) {
            case 1:
                y40 y40Var = (y40) ((x40) this.b).f(mc4Var);
                Object objD = y40Var.d();
                if (!((wi8) y40Var.c).c()) {
                    c(mc4Var, objD);
                }
                return objD;
            default:
                Class cls = (Class) this.e;
                if (!mc4Var.b()) {
                    return f(mc4Var, cls);
                }
                xk1 xk1Var = (xk1) this.b;
                wi8 wi8VarA = xk1Var.a(mc4Var);
                Class clsB = xk1Var.b();
                ai5 ai5Var = (ai5) xk1Var.a;
                gd4 gd4VarK = wi8VarA == null ? ai5Var.k(clsB) : new x00(ai5Var, wi8VarA);
                if (gd4VarK.c()) {
                    return gd4VarK.d();
                }
                Object objF = f(mc4Var, cls);
                gd4VarK.e(objF);
                return objF;
        }
    }

    @Override // defpackage.bw1
    public Object c(mc4 mc4Var, Object obj) throws kd5 {
        int i = this.a;
        Object obj2 = this.e;
        switch (i) {
            case 1:
                int length = Array.getLength(obj);
                int i2 = 0;
                while (true) {
                    tr9 position = mc4Var.getPosition();
                    mc4 mc4VarD = mc4Var.d();
                    if (mc4VarD == null) {
                        return obj;
                    }
                    if (i2 >= length) {
                        throw new wt1("Array length missing or incorrect for %s at %s", (vb8) this.f, position);
                    }
                    Array.set(obj, i2, !((lc4) mc4VarD).k() ? ((ro) this.c).r(mc4VarD, (Class) ((ln5) obj2).b) : null);
                    i2++;
                }
                break;
            default:
                if (obj == null) {
                    return b(mc4Var);
                }
                throw new kd5("Can not read existing %s for %s", (Class) obj2, (vb8) this.f);
        }
    }

    @Override // defpackage.bw1
    public boolean d(mc4 mc4Var) {
        switch (this.a) {
            case 1:
                y40 y40Var = (y40) ((x40) this.b).f(mc4Var);
                if (!((wi8) y40Var.c).c()) {
                    y40Var.e(null);
                    Class cls = (Class) y40Var.d;
                    while (true) {
                        mc4 mc4VarD = mc4Var.d();
                        if (mc4VarD == null) {
                            break;
                        } else if (!((lc4) mc4VarD).k()) {
                            ((ro) this.c).v(mc4VarD, cls);
                        }
                    }
                }
                break;
            default:
                if (!mc4Var.b()) {
                    mc4Var.getValue();
                } else {
                    xk1 xk1Var = (xk1) this.b;
                    wi8 wi8VarA = xk1Var.a(mc4Var);
                    Class clsB = xk1Var.b();
                    ai5 ai5Var = (ai5) xk1Var.a;
                    gd4 gd4VarK = wi8VarA == null ? ai5Var.k(clsB) : new x00(ai5Var, wi8VarA);
                    if (!gd4VarK.c()) {
                        gd4VarK.e(null);
                    }
                }
                break;
        }
        return true;
    }

    public void e() {
        x50.n0((byte[]) this.f);
        byte[] bArr = (byte[]) this.b;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
        byte[] bArr2 = (byte[]) this.c;
        Arrays.fill(bArr2, 0, bArr2.length, (byte) 0);
        Arrays.fill((byte[]) this.d, 0, 16, (byte) 0);
        Arrays.fill((byte[]) this.e, 0, 16, (byte) 0);
    }

    public Object f(mc4 mc4Var, Class cls) throws j98 {
        String str = (String) this.d;
        String value = mc4Var.getValue();
        if (value == null) {
            return null;
        }
        if (str != null && value.equals(str)) {
            return str;
        }
        uz7 uz7Var = (uz7) ((ai5) this.c).b;
        vc9 vc9Var = uz7Var.b;
        vc9 vc9Var2 = uz7Var.c;
        vc9 vc9Var3 = uz7Var.a;
        if (value.indexOf(36) >= 0) {
            try {
                vc9Var3.b(value);
                uz7Var.a();
                value = vc9Var2.toString();
                vc9Var.b = 0;
                vc9Var2.b = 0;
                vc9Var3.b = 0;
                uz7Var.e = 0;
            } catch (Throwable th) {
                vc9Var.b = 0;
                vc9Var2.b = 0;
                vc9Var3.b = 0;
                uz7Var.e = 0;
                throw th;
            }
        }
        i98 i98VarC = ((s02) ((x44) ((xk1) this.b).b).f).c(cls);
        if (i98VarC != null) {
            return i98VarC.a(value);
        }
        throw new j98("Transform of %s not supported", cls);
    }

    public void g(Object obj, String str) {
        du9 du9Var = ly8.c;
        str.getClass();
        ((LinkedHashMap) this.b).put(str, obj);
        km7 km7Var = (km7) ((LinkedHashMap) this.d).get(str);
        if (km7Var != null) {
            km7Var.e(null, obj == null ? du9Var : obj);
        }
        km7 km7Var2 = (km7) ((LinkedHashMap) this.e).get(str);
        if (km7Var2 != null) {
            if (obj == null) {
                obj = du9Var;
            }
            km7Var2.e(null, obj);
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (LinearLayout) this.b;
    }

    public void h(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        try {
            if (randomAccessFile.length() < 176) {
                throw new IOException("SBA archive is too small for v2 index MAC: " + randomAccessFile.length());
            }
            byte[] bArr = new byte[144];
            randomAccessFile.seek(0L);
            randomAccessFile.readFully(bArr);
            for (int i = 0; i < 32; i++) {
                bArr[(int) (((long) i) + 104)] = 0;
            }
            byte[] bArr2 = new byte[32];
            randomAccessFile.seek(randomAccessFile.length() - 32);
            randomAccessFile.readFully(bArr2);
            long jB = nh4.b(bArr2, 8);
            long jB2 = nh4.b(bArr2, 16);
            int i2 = 0;
            for (int i3 = 0; i3 < 4; i3++) {
                i2 = (i2 << 8) | (bArr2[24 + i3] & 255);
            }
            if (jB < 144 || jB2 <= 0 || jB2 > 67108864) {
                throw new IOException("Invalid SBA v2 index location while writing MAC: offset=" + jB + " size=" + jB2);
            }
            int i4 = (int) jB2;
            byte[] bArr3 = new byte[i4];
            randomAccessFile.seek(jB);
            randomAccessFile.readFully(bArr3);
            CRC32 crc32 = new CRC32();
            crc32.update(bArr3);
            int value = (int) crc32.getValue();
            if (value != i2) {
                throw new IOException("SBA index CRC mismatch while writing MAC: expected=" + i2 + " actual=" + value);
            }
            byte[] bArr4 = sy6.a;
            byte[] bArrB = sy6.b((byte[]) this.f, bArr, jB, jB2, i2, bArr3);
            try {
                randomAccessFile.seek(104L);
                randomAccessFile.write(bArrB);
                randomAccessFile.getFD().sync();
                Arrays.fill(bArrB, 0, bArrB.length, (byte) 0);
                Arrays.fill(bArr3, 0, i4, (byte) 0);
                randomAccessFile.close();
            } catch (Throwable th) {
                Arrays.fill(bArrB, 0, bArrB.length, (byte) 0);
                Arrays.fill(bArr3, 0, i4, (byte) 0);
                throw th;
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                rs9.c(randomAccessFile, th2);
                throw th3;
            }
        }
    }

    public String toString() {
        switch (this.a) {
            case 4:
                String property = System.getProperty("line.separator");
                StringBuilder sbU = dj7.u("PublicationError{", property, "\tcause=");
                sbU.append((Throwable) this.b);
                sbU.append(property);
                sbU.append("\tmessage='");
                sbU.append((String) this.c);
                sbU.append('\'');
                sbU.append(property);
                sbU.append("\thandler=");
                sbU.append((Method) this.d);
                sbU.append(property);
                sbU.append("\tlistener=");
                sbU.append(this.e);
                sbU.append(property);
                sbU.append("\tpublishedMessage=");
                sbU.append(this.f);
                sbU.append('}');
                return sbU.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ cy6() {
    }

    public cy6(LinearLayout linearLayout, View view, ImageView imageView, TextView textView, TextView textView2) {
        this.b = linearLayout;
        this.c = view;
        this.d = imageView;
        this.e = textView;
        this.f = textView2;
    }

    public cy6(Throwable th, String str, Method method, Object obj, rd5 rd5Var) {
        this.b = th;
        this.c = str;
        this.d = method;
        this.e = obj;
        this.f = rd5Var.b;
    }

    public cy6(ai5 ai5Var, vb8 vb8Var, ln5 ln5Var, String str) {
        this.b = new x40(ai5Var, vb8Var, null);
        this.c = new ro(ai5Var);
        this.d = str;
        this.e = ln5Var;
        this.f = vb8Var;
    }

    public cy6(ai5 ai5Var, vb8 vb8Var, String str) {
        this.b = new xk1(ai5Var, vb8Var, null);
        this.e = vb8Var.getType();
        this.c = ai5Var;
        this.d = str;
        this.f = vb8Var;
    }

    public cy6(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        this.b = bArr;
        this.c = bArr2;
        this.d = bArr3;
        this.e = bArr4;
        this.f = sy6.c(bArr, bArr3, bArr4);
    }
}
