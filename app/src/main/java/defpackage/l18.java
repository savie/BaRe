package defpackage;

import android.content.res.AssetManager;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l18 extends am0 {
    public final StringBuilder A;
    public final RectF B;
    public final Matrix C;
    public final vp4 D;
    public final k18 E;
    public final HashMap F;
    public final v15 G;
    public final i18 H;
    public final c35 I;
    public final e25 J;
    public final tl1 K;
    public xi8 L;
    public final tl1 M;
    public xi8 N;
    public final xh3 O;
    public xi8 P;
    public final xh3 Q;
    public xi8 R;
    public xi8 S;
    public xi8 T;

    public l18(c35 c35Var, js4 js4Var) {
        bc bcVar;
        bc bcVar2;
        ac acVar;
        ac acVar2;
        super(c35Var, js4Var);
        this.A = new StringBuilder(2);
        this.B = new RectF();
        this.C = new Matrix();
        vp4 vp4Var = new vp4(1, 1);
        vp4Var.setStyle(Paint.Style.FILL);
        this.D = vp4Var;
        k18 k18Var = new k18(1);
        k18Var.setStyle(Paint.Style.STROKE);
        this.E = k18Var;
        this.F = new HashMap();
        this.G = new v15();
        this.I = c35Var;
        this.J = js4Var.b;
        i18 i18Var = new i18((List) js4Var.q.b);
        this.H = i18Var;
        i18Var.a(this);
        g(i18Var);
        kc kcVar = js4Var.r;
        if (kcVar != null && (acVar2 = (ac) kcVar.b) != null) {
            yl0 yl0VarN = acVar2.n();
            this.K = (tl1) yl0VarN;
            yl0VarN.a(this);
            g(yl0VarN);
        }
        if (kcVar != null && (acVar = (ac) kcVar.c) != null) {
            yl0 yl0VarN2 = acVar.n();
            this.M = (tl1) yl0VarN2;
            yl0VarN2.a(this);
            g(yl0VarN2);
        }
        if (kcVar != null && (bcVar2 = (bc) kcVar.d) != null) {
            yl0 yl0VarN3 = bcVar2.n();
            this.O = (xh3) yl0VarN3;
            yl0VarN3.a(this);
            g(yl0VarN3);
        }
        if (kcVar == null || (bcVar = (bc) kcVar.e) == null) {
            return;
        }
        yl0 yl0VarN4 = bcVar.n();
        this.Q = (xh3) yl0VarN4;
        yl0VarN4.a(this);
        g(yl0VarN4);
    }

    public static void t(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    public static void u(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    @Override // defpackage.am0, defpackage.rp2
    public final void e(RectF rectF, Matrix matrix, boolean z) {
        super.e(rectF, matrix, z);
        e25 e25Var = this.J;
        rectF.set(0.0f, 0.0f, e25Var.j.width(), e25Var.j.height());
    }

    @Override // defpackage.am0, defpackage.qo4
    public final void f(cd cdVar, Object obj) {
        super.f(cdVar, obj);
        PointF pointF = f35.a;
        if (obj == 1) {
            xi8 xi8Var = this.L;
            if (xi8Var != null) {
                p(xi8Var);
            }
            xi8 xi8Var2 = new xi8(cdVar, null);
            this.L = xi8Var2;
            xi8Var2.a(this);
            g(this.L);
            return;
        }
        if (obj == 2) {
            xi8 xi8Var3 = this.N;
            if (xi8Var3 != null) {
                p(xi8Var3);
            }
            xi8 xi8Var4 = new xi8(cdVar, null);
            this.N = xi8Var4;
            xi8Var4.a(this);
            g(this.N);
            return;
        }
        if (obj == f35.n) {
            xi8 xi8Var5 = this.P;
            if (xi8Var5 != null) {
                p(xi8Var5);
            }
            xi8 xi8Var6 = new xi8(cdVar, null);
            this.P = xi8Var6;
            xi8Var6.a(this);
            g(this.P);
            return;
        }
        if (obj == f35.o) {
            xi8 xi8Var7 = this.R;
            if (xi8Var7 != null) {
                p(xi8Var7);
            }
            xi8 xi8Var8 = new xi8(cdVar, null);
            this.R = xi8Var8;
            xi8Var8.a(this);
            g(this.R);
            return;
        }
        if (obj == f35.A) {
            xi8 xi8Var9 = this.S;
            if (xi8Var9 != null) {
                p(xi8Var9);
            }
            xi8 xi8Var10 = new xi8(cdVar, null);
            this.S = xi8Var10;
            xi8Var10.a(this);
            g(this.S);
            return;
        }
        if (obj == f35.H) {
            xi8 xi8Var11 = this.T;
            if (xi8Var11 != null) {
                p(xi8Var11);
            }
            xi8 xi8Var12 = new xi8(cdVar, null);
            this.T = xi8Var12;
            xi8Var12.a(this);
            g(this.T);
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:104:0x0312  */
    /* JADX WARN: Code duplicated, block: B:105:0x0317  */
    /* JADX WARN: Code duplicated, block: B:107:0x0323  */
    /* JADX WARN: Code duplicated, block: B:108:0x0328  */
    /* JADX WARN: Code duplicated, block: B:111:0x0358 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:113:0x035c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:114:0x035e  */
    /* JADX WARN: Code duplicated, block: B:115:0x0360 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:116:0x0362  */
    /* JADX WARN: Code duplicated, block: B:117:0x0364  */
    /* JADX WARN: Code duplicated, block: B:121:0x036c  */
    /* JADX WARN: Code duplicated, block: B:123:0x0375  */
    /* JADX WARN: Code duplicated, block: B:126:0x037b  */
    /* JADX WARN: Code duplicated, block: B:129:0x0382  */
    /* JADX WARN: Code duplicated, block: B:131:0x0389  */
    /* JADX WARN: Code duplicated, block: B:132:0x0394  */
    /* JADX WARN: Code duplicated, block: B:135:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:137:0x03c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:138:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:141:0x03f1  */
    /* JADX WARN: Code duplicated, block: B:143:0x040d  */
    /* JADX WARN: Code duplicated, block: B:145:0x0410  */
    /* JADX WARN: Code duplicated, block: B:146:0x0414  */
    /* JADX WARN: Code duplicated, block: B:147:0x041e  */
    /* JADX WARN: Code duplicated, block: B:151:0x0439  */
    /* JADX WARN: Code duplicated, block: B:154:0x0448  */
    /* JADX WARN: Code duplicated, block: B:156:0x0454  */
    /* JADX WARN: Code duplicated, block: B:167:0x0487  */
    /* JADX WARN: Code duplicated, block: B:168:0x0490  */
    /* JADX WARN: Code duplicated, block: B:170:0x0499 A[LOOP:8: B:169:0x0497->B:170:0x0499, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:174:0x04bb  */
    /* JADX WARN: Code duplicated, block: B:175:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:183:0x0181 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:197:0x0473 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x010b  */
    /* JADX WARN: Code duplicated, block: B:40:0x010f  */
    /* JADX WARN: Code duplicated, block: B:43:0x013c  */
    /* JADX WARN: Code duplicated, block: B:46:0x0150  */
    /* JADX WARN: Code duplicated, block: B:49:0x0165  */
    /* JADX WARN: Code duplicated, block: B:53:0x018e  */
    /* JADX WARN: Code duplicated, block: B:55:0x0191  */
    /* JADX WARN: Code duplicated, block: B:56:0x0193  */
    /* JADX WARN: Code duplicated, block: B:57:0x019b  */
    /* JADX WARN: Code duplicated, block: B:61:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:63:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:64:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:66:0x01df  */
    /* JADX WARN: Code duplicated, block: B:67:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:69:0x0204 A[LOOP:4: B:68:0x0202->B:69:0x0204, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x022a  */
    /* JADX WARN: Code duplicated, block: B:76:0x025a  */
    /* JADX WARN: Code duplicated, block: B:77:0x0261  */
    /* JADX WARN: Code duplicated, block: B:81:0x0284  */
    /* JADX WARN: Code duplicated, block: B:83:0x0290 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x0292  */
    /* JADX WARN: Code duplicated, block: B:89:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:94:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:96:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:97:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:99:0x02ef  */
    /* JADX WARN: Instruction removed from duplicated block: B:108:0x0328, please report this as an issue */
    @Override // defpackage.am0
    public final void k(Canvas canvas, Matrix matrix, int i) {
        int i2;
        xh3 xh3Var;
        xi8 xi8Var;
        xp3 xp3Var;
        Typeface typeface;
        dz3 dz3Var;
        HashMap map;
        Typeface typeface2;
        HashMap map2;
        Typeface typeface3;
        Typeface typefaceCreateFromAsset;
        boolean zContains;
        boolean zContains2;
        int i3;
        xi8 xi8Var2;
        float fFloatValue;
        float fC;
        xi8 xi8Var3;
        float fFloatValue2;
        float fC2;
        List listAsList;
        int size;
        int i4;
        String str;
        float length;
        int iA;
        Canvas canvas2;
        float f;
        int length2;
        int iCodePointAt;
        int iCharCount;
        long j;
        v15 v15Var;
        StringBuilder sb;
        int iCharCount2;
        float f2;
        String str2;
        int iCodePointAt2;
        Canvas canvas3;
        xi8 xi8Var4;
        float f3;
        float fD;
        float fC3;
        List listAsList2;
        int size2;
        int i5;
        String str3;
        int i6;
        float fC4;
        int i7;
        int iA2;
        float f4;
        int i8;
        yp3 yp3Var;
        HashMap map3;
        ArrayList arrayList;
        int size3;
        ArrayList arrayList2;
        int i9;
        List list;
        int i10;
        rn2 rn2Var;
        int i11;
        xi8 xi8Var5;
        float fFloatValue3;
        Path pathA;
        yp3 yp3Var2;
        l18 l18Var = this;
        canvas.save();
        c35 c35Var = l18Var.I;
        if (c35Var.b.g.c <= 0) {
            canvas.concat(matrix);
        }
        rn2 rn2Var2 = (rn2) l18Var.H.f();
        e25 e25Var = l18Var.J;
        HashMap map4 = e25Var.e;
        String str4 = rn2Var2.b;
        int i12 = rn2Var2.e;
        boolean z = rn2Var2.k;
        int i13 = rn2Var2.d;
        float f5 = rn2Var2.f;
        String str5 = rn2Var2.a;
        float fFloatValue4 = rn2Var2.c;
        vp3 vp3Var = (vp3) map4.get(str4);
        if (vp3Var == null) {
            canvas.restore();
            return;
        }
        String str6 = vp3Var.b;
        String str7 = vp3Var.a;
        xi8 xi8Var6 = l18Var.L;
        vp4 vp4Var = l18Var.D;
        if (xi8Var6 != null) {
            vp4Var.setColor(((Integer) xi8Var6.f()).intValue());
        } else {
            tl1 tl1Var = l18Var.K;
            if (tl1Var != null) {
                vp4Var.setColor(((Integer) tl1Var.f()).intValue());
            } else {
                vp4Var.setColor(rn2Var2.h);
            }
        }
        xi8 xi8Var7 = l18Var.N;
        k18 k18Var = l18Var.E;
        if (xi8Var7 != null) {
            k18Var.setColor(((Integer) xi8Var7.f()).intValue());
        } else {
            tl1 tl1Var2 = l18Var.M;
            if (tl1Var2 != null) {
                k18Var.setColor(((Integer) tl1Var2.f()).intValue());
            } else {
                k18Var.setColor(rn2Var2.i);
            }
        }
        yl0 yl0Var = l18Var.u.j;
        int iIntValue = ((yl0Var == null ? 100 : ((Integer) yl0Var.f()).intValue()) * 255) / 100;
        vp4Var.setAlpha(iIntValue);
        k18Var.setAlpha(iIntValue);
        xi8 xi8Var8 = l18Var.P;
        if (xi8Var8 == null) {
            xh3 xh3Var2 = l18Var.O;
            if (xh3Var2 != null) {
                k18Var.setStrokeWidth(((Float) xh3Var2.f()).floatValue());
            } else {
                k18Var.setStrokeWidth(mi8.c() * rn2Var2.j * mi8.d(matrix));
            }
            i2 = c35Var.b.g.c;
            xh3Var = l18Var.Q;
            if (i2 > 0) {
                xi8Var4 = l18Var.S;
                if (xi8Var4 != null) {
                    fFloatValue4 = ((Float) xi8Var4.f()).floatValue();
                }
                f3 = fFloatValue4 / 100.0f;
                fD = mi8.d(matrix);
                fC3 = mi8.c() * f5;
                listAsList2 = Arrays.asList(str5.replaceAll("\r\n", "\r").replaceAll("\n", "\r").split("\r"));
                size2 = listAsList2.size();
                i5 = 0;
                while (i5 < size2) {
                    str3 = (String) listAsList2.get(i5);
                    i6 = i12;
                    List list2 = listAsList2;
                    int i14 = size2;
                    fC4 = 0.0f;
                    i7 = 0;
                    while (i7 < str3.length()) {
                        int i15 = i7;
                        yp3Var2 = (yp3) e25Var.g.a(yp3.a(str3.charAt(i7), str7, str6));
                        if (yp3Var2 == null) {
                            fC4 = (float) ((((double) fD) * ((double) mi8.c()) * ((double) f3) * yp3Var2.c) + ((double) fC4));
                        }
                        i7 = i15 + 1;
                    }
                    canvas.save();
                    iA2 = dj7.A(i13);
                    if (iA2 != 1) {
                        f4 = 0.0f;
                        canvas.translate(-fC4, 0.0f);
                    } else if (iA2 != 2) {
                        f4 = 0.0f;
                    } else {
                        f4 = 0.0f;
                        canvas.translate((-fC4) / 2.0f, 0.0f);
                    }
                    canvas.translate(f4, (i5 * fC3) - (((i14 - 1) * fC3) / 2.0f));
                    i8 = 0;
                    while (i8 < str3.length()) {
                        yp3Var = (yp3) e25Var.g.a(yp3.a(str3.charAt(i8), str7, str6));
                        if (yp3Var == null) {
                            rn2Var = rn2Var2;
                            e25Var = e25Var;
                            i8 = i8;
                            fD = fD;
                            i5 = i5;
                            i11 = i6;
                        } else {
                            map3 = l18Var.F;
                            if (map3.containsKey(yp3Var)) {
                                list = (List) map3.get(yp3Var);
                            } else {
                                arrayList = yp3Var.a;
                                size3 = arrayList.size();
                                arrayList2 = new ArrayList(size3);
                                i9 = 0;
                                while (i9 < size3) {
                                    arrayList2.add(new iu1(c35Var, l18Var, (bc7) arrayList.get(i9)));
                                    i9++;
                                    size3 = size3;
                                    arrayList = arrayList;
                                }
                                map3.put(yp3Var, arrayList2);
                                list = arrayList2;
                            }
                            i10 = 0;
                            while (i10 < list.size()) {
                                pathA = ((iu1) list.get(i10)).a();
                                pathA.computeBounds(l18Var.B, false);
                                Matrix matrix2 = l18Var.C;
                                matrix2.set(matrix);
                                int i16 = i10;
                                rn2 rn2Var3 = rn2Var2;
                                matrix2.preTranslate(0.0f, (-rn2Var2.g) * mi8.c());
                                matrix2.preScale(f3, f3);
                                pathA.transform(matrix2);
                                if (z) {
                                    u(pathA, vp4Var, canvas);
                                    u(pathA, k18Var, canvas);
                                } else {
                                    u(pathA, k18Var, canvas);
                                    u(pathA, vp4Var, canvas);
                                }
                                i10 = i16 + 1;
                                rn2Var2 = rn2Var3;
                            }
                            rn2Var = rn2Var2;
                            float fC5 = mi8.c() * ((float) yp3Var.c) * f3 * fD;
                            i11 = i6;
                            float f6 = i11 / 10.0f;
                            xi8Var5 = l18Var.R;
                            if (xi8Var5 != null) {
                                fFloatValue3 = ((Float) xi8Var5.f()).floatValue();
                            } else {
                                if (xh3Var != null) {
                                    fFloatValue3 = ((Float) xh3Var.f()).floatValue();
                                }
                                canvas.translate((f6 * fD) + fC5, 0.0f);
                            }
                            f6 += fFloatValue3;
                            canvas.translate((f6 * fD) + fC5, 0.0f);
                        }
                        i8++;
                        i6 = i11;
                        e25Var = e25Var;
                        fD = fD;
                        i5 = i5;
                        rn2Var2 = rn2Var;
                    }
                    canvas.restore();
                    i12 = i6;
                    i5++;
                    listAsList2 = list2;
                    size2 = i14;
                    e25Var = e25Var;
                    rn2Var2 = rn2Var2;
                }
                canvas3 = canvas;
            } else {
                xi8Var = l18Var.T;
                if (xi8Var != null || (typeface = (Typeface) xi8Var.f()) == null) {
                    if (c35Var.getCallback() == null) {
                        xp3Var = null;
                    } else {
                        if (c35Var.r == null) {
                            c35Var.r = new xp3(c35Var.getCallback());
                        }
                        xp3Var = c35Var.r;
                    }
                    if (xp3Var != null) {
                        dz3Var = (dz3) xp3Var.b;
                        dz3Var.b = str7;
                        dz3Var.c = str6;
                        map = (HashMap) xp3Var.c;
                        typeface2 = (Typeface) map.get(dz3Var);
                        if (typeface2 != null) {
                            typeface = typeface2;
                            fFloatValue4 = fFloatValue4;
                        } else {
                            map2 = (HashMap) xp3Var.d;
                            typeface3 = (Typeface) map2.get(str7);
                            if (typeface3 != null) {
                                typefaceCreateFromAsset = typeface3;
                            } else {
                                typefaceCreateFromAsset = Typeface.createFromAsset((AssetManager) xp3Var.e, "fonts/" + str7 + ((String) xp3Var.f));
                                map2.put(str7, typefaceCreateFromAsset);
                            }
                            zContains = str6.contains("Italic");
                            zContains2 = str6.contains("Bold");
                            if (!zContains && zContains2) {
                                i3 = 3;
                            } else if (zContains) {
                                i3 = 2;
                            } else if (zContains2) {
                                i3 = 1;
                            } else {
                                i3 = 0;
                            }
                            if (typefaceCreateFromAsset.getStyle() != i3) {
                                typefaceCreateFromAsset = Typeface.create(typefaceCreateFromAsset, i3);
                            }
                            map.put(dz3Var, typefaceCreateFromAsset);
                            typeface = typefaceCreateFromAsset;
                        }
                    } else {
                        fFloatValue4 = fFloatValue4;
                        typeface = null;
                    }
                    if (typeface == null) {
                        typeface = null;
                    }
                } else {
                    fFloatValue4 = fFloatValue4;
                }
                if (typeface != null) {
                    vp4Var.setTypeface(typeface);
                    xi8Var2 = l18Var.S;
                    if (xi8Var2 != null) {
                        fFloatValue = ((Float) xi8Var2.f()).floatValue();
                    } else {
                        fFloatValue = fFloatValue4;
                    }
                    vp4Var.setTextSize(mi8.c() * fFloatValue);
                    k18Var.setTypeface(vp4Var.getTypeface());
                    k18Var.setTextSize(vp4Var.getTextSize());
                    fC = mi8.c() * f5;
                    float f7 = i12 / 10.0f;
                    xi8Var3 = l18Var.R;
                    if (xi8Var3 != null) {
                        fFloatValue2 = ((Float) xi8Var3.f()).floatValue();
                    } else {
                        if (xh3Var != null) {
                            fFloatValue2 = ((Float) xh3Var.f()).floatValue();
                        }
                        fC2 = ((mi8.c() * f7) * fFloatValue) / 100.0f;
                        listAsList = Arrays.asList(str5.replaceAll("\r\n", "\r").replaceAll("\n", "\r").split("\r"));
                        size = listAsList.size();
                        i4 = 0;
                        while (i4 < size) {
                            str = (String) listAsList.get(i4);
                            length = ((str.length() - 1) * fC2) + k18Var.measureText(str);
                            canvas.save();
                            iA = dj7.A(i13);
                            if (iA != 1) {
                                canvas2 = canvas;
                                f = 0.0f;
                                canvas2.translate(-length, 0.0f);
                            } else if (iA != 2) {
                                canvas2 = canvas;
                                f = 0.0f;
                            } else {
                                canvas2 = canvas;
                                f = 0.0f;
                                canvas2.translate((-length) / 2.0f, 0.0f);
                            }
                            canvas2.translate(f, (i4 * fC) - (((size - 1) * fC) / 2.0f));
                            length2 = 0;
                            while (length2 < str.length()) {
                                iCodePointAt = str.codePointAt(length2);
                                iCharCount = Character.charCount(iCodePointAt) + length2;
                                while (iCharCount < str.length()) {
                                    iCodePointAt2 = str.codePointAt(iCharCount);
                                    if (Character.getType(iCodePointAt2) == 16 && Character.getType(iCodePointAt2) != 27 && Character.getType(iCodePointAt2) != 6 && Character.getType(iCodePointAt2) != 28 && Character.getType(iCodePointAt2) != 19) {
                                        break;
                                    }
                                    iCharCount += Character.charCount(iCodePointAt2);
                                    iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
                                }
                                j = iCodePointAt;
                                v15Var = l18Var.G;
                                if (v15Var.c(j) >= 0) {
                                    str2 = (String) v15Var.b(j);
                                    f2 = fC;
                                } else {
                                    sb = l18Var.A;
                                    sb.setLength(0);
                                    iCharCount2 = length2;
                                    while (iCharCount2 < iCharCount) {
                                        float f8 = fC;
                                        int iCodePointAt3 = str.codePointAt(iCharCount2);
                                        sb.appendCodePoint(iCodePointAt3);
                                        iCharCount2 += Character.charCount(iCodePointAt3);
                                        fC = f8;
                                    }
                                    f2 = fC;
                                    String string = sb.toString();
                                    v15Var.e(string, j);
                                    str2 = string;
                                }
                                length2 += str2.length();
                                if (z != 0) {
                                    t(str2, vp4Var, canvas2);
                                    t(str2, k18Var, canvas2);
                                } else {
                                    t(str2, k18Var, canvas2);
                                    t(str2, vp4Var, canvas2);
                                }
                                canvas2.translate(vp4Var.measureText(str2) + fC2, 0.0f);
                                l18Var = this;
                                fC = f2;
                            }
                            canvas2.restore();
                            i4++;
                            l18Var = this;
                        }
                    }
                    f7 += fFloatValue2;
                    fC2 = ((mi8.c() * f7) * fFloatValue) / 100.0f;
                    listAsList = Arrays.asList(str5.replaceAll("\r\n", "\r").replaceAll("\n", "\r").split("\r"));
                    size = listAsList.size();
                    i4 = 0;
                    while (i4 < size) {
                        str = (String) listAsList.get(i4);
                        length = ((str.length() - 1) * fC2) + k18Var.measureText(str);
                        canvas.save();
                        iA = dj7.A(i13);
                        if (iA != 1) {
                            canvas2 = canvas;
                            f = 0.0f;
                            canvas2.translate(-length, 0.0f);
                        } else if (iA != 2) {
                            canvas2 = canvas;
                            f = 0.0f;
                        } else {
                            canvas2 = canvas;
                            f = 0.0f;
                            canvas2.translate((-length) / 2.0f, 0.0f);
                        }
                        canvas2.translate(f, (i4 * fC) - (((size - 1) * fC) / 2.0f));
                        length2 = 0;
                        while (length2 < str.length()) {
                            iCodePointAt = str.codePointAt(length2);
                            iCharCount = Character.charCount(iCodePointAt) + length2;
                            while (iCharCount < str.length()) {
                                iCodePointAt2 = str.codePointAt(iCharCount);
                                if (Character.getType(iCodePointAt2) == 16) {
                                }
                                iCharCount += Character.charCount(iCodePointAt2);
                                iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
                            }
                            j = iCodePointAt;
                            v15Var = l18Var.G;
                            if (v15Var.c(j) >= 0) {
                                str2 = (String) v15Var.b(j);
                                f2 = fC;
                            } else {
                                sb = l18Var.A;
                                sb.setLength(0);
                                iCharCount2 = length2;
                                while (iCharCount2 < iCharCount) {
                                    float f9 = fC;
                                    int iCodePointAt4 = str.codePointAt(iCharCount2);
                                    sb.appendCodePoint(iCodePointAt4);
                                    iCharCount2 += Character.charCount(iCodePointAt4);
                                    fC = f9;
                                }
                                f2 = fC;
                                String string2 = sb.toString();
                                v15Var.e(string2, j);
                                str2 = string2;
                            }
                            length2 += str2.length();
                            if (z != 0) {
                                t(str2, vp4Var, canvas2);
                                t(str2, k18Var, canvas2);
                            } else {
                                t(str2, k18Var, canvas2);
                                t(str2, vp4Var, canvas2);
                            }
                            canvas2.translate(vp4Var.measureText(str2) + fC2, 0.0f);
                            l18Var = this;
                            fC = f2;
                        }
                        canvas2.restore();
                        i4++;
                        l18Var = this;
                    }
                }
                canvas3 = canvas;
            }
            canvas3.restore();
        }
        k18Var.setStrokeWidth(((Float) xi8Var8.f()).floatValue());
        i2 = c35Var.b.g.c;
        xh3Var = l18Var.Q;
        if (i2 > 0) {
            xi8Var4 = l18Var.S;
            if (xi8Var4 != null) {
                fFloatValue4 = ((Float) xi8Var4.f()).floatValue();
            }
            f3 = fFloatValue4 / 100.0f;
            fD = mi8.d(matrix);
            fC3 = mi8.c() * f5;
            listAsList2 = Arrays.asList(str5.replaceAll("\r\n", "\r").replaceAll("\n", "\r").split("\r"));
            size2 = listAsList2.size();
            i5 = 0;
            while (i5 < size2) {
                str3 = (String) listAsList2.get(i5);
                i6 = i12;
                List list3 = listAsList2;
                int i17 = size2;
                fC4 = 0.0f;
                i7 = 0;
                while (i7 < str3.length()) {
                    int i18 = i7;
                    yp3Var2 = (yp3) e25Var.g.a(yp3.a(str3.charAt(i7), str7, str6));
                    if (yp3Var2 == null) {
                        fC4 = (float) ((((double) fD) * ((double) mi8.c()) * ((double) f3) * yp3Var2.c) + ((double) fC4));
                    }
                    i7 = i18 + 1;
                }
                canvas.save();
                iA2 = dj7.A(i13);
                if (iA2 != 1) {
                    f4 = 0.0f;
                    canvas.translate(-fC4, 0.0f);
                } else if (iA2 != 2) {
                    f4 = 0.0f;
                } else {
                    f4 = 0.0f;
                    canvas.translate((-fC4) / 2.0f, 0.0f);
                }
                canvas.translate(f4, (i5 * fC3) - (((i17 - 1) * fC3) / 2.0f));
                i8 = 0;
                while (i8 < str3.length()) {
                    yp3Var = (yp3) e25Var.g.a(yp3.a(str3.charAt(i8), str7, str6));
                    if (yp3Var == null) {
                        rn2Var = rn2Var2;
                        e25Var = e25Var;
                        i8 = i8;
                        fD = fD;
                        i5 = i5;
                        i11 = i6;
                    } else {
                        map3 = l18Var.F;
                        if (map3.containsKey(yp3Var)) {
                            list = (List) map3.get(yp3Var);
                        } else {
                            arrayList = yp3Var.a;
                            size3 = arrayList.size();
                            arrayList2 = new ArrayList(size3);
                            i9 = 0;
                            while (i9 < size3) {
                                arrayList2.add(new iu1(c35Var, l18Var, (bc7) arrayList.get(i9)));
                                i9++;
                                size3 = size3;
                                arrayList = arrayList;
                            }
                            map3.put(yp3Var, arrayList2);
                            list = arrayList2;
                        }
                        i10 = 0;
                        while (i10 < list.size()) {
                            pathA = ((iu1) list.get(i10)).a();
                            pathA.computeBounds(l18Var.B, false);
                            Matrix matrix3 = l18Var.C;
                            matrix3.set(matrix);
                            int i19 = i10;
                            rn2 rn2Var4 = rn2Var2;
                            matrix3.preTranslate(0.0f, (-rn2Var2.g) * mi8.c());
                            matrix3.preScale(f3, f3);
                            pathA.transform(matrix3);
                            if (z) {
                                u(pathA, vp4Var, canvas);
                                u(pathA, k18Var, canvas);
                            } else {
                                u(pathA, k18Var, canvas);
                                u(pathA, vp4Var, canvas);
                            }
                            i10 = i19 + 1;
                            rn2Var2 = rn2Var4;
                        }
                        rn2Var = rn2Var2;
                        float fC6 = mi8.c() * ((float) yp3Var.c) * f3 * fD;
                        i11 = i6;
                        float f10 = i11 / 10.0f;
                        xi8Var5 = l18Var.R;
                        if (xi8Var5 != null) {
                            fFloatValue3 = ((Float) xi8Var5.f()).floatValue();
                        } else {
                            if (xh3Var != null) {
                                fFloatValue3 = ((Float) xh3Var.f()).floatValue();
                            }
                            canvas.translate((f10 * fD) + fC6, 0.0f);
                        }
                        f10 += fFloatValue3;
                        canvas.translate((f10 * fD) + fC6, 0.0f);
                    }
                    i8++;
                    i6 = i11;
                    e25Var = e25Var;
                    fD = fD;
                    i5 = i5;
                    rn2Var2 = rn2Var;
                }
                canvas.restore();
                i12 = i6;
                i5++;
                listAsList2 = list3;
                size2 = i17;
                e25Var = e25Var;
                rn2Var2 = rn2Var2;
            }
            canvas3 = canvas;
        } else {
            xi8Var = l18Var.T;
            if (xi8Var != null) {
                if (c35Var.getCallback() == null) {
                    xp3Var = null;
                } else {
                    if (c35Var.r == null) {
                        c35Var.r = new xp3(c35Var.getCallback());
                    }
                    xp3Var = c35Var.r;
                }
                if (xp3Var != null) {
                    dz3Var = (dz3) xp3Var.b;
                    dz3Var.b = str7;
                    dz3Var.c = str6;
                    map = (HashMap) xp3Var.c;
                    typeface2 = (Typeface) map.get(dz3Var);
                    if (typeface2 != null) {
                        typeface = typeface2;
                        fFloatValue4 = fFloatValue4;
                    } else {
                        map2 = (HashMap) xp3Var.d;
                        typeface3 = (Typeface) map2.get(str7);
                        if (typeface3 != null) {
                            typefaceCreateFromAsset = typeface3;
                        } else {
                            typefaceCreateFromAsset = Typeface.createFromAsset((AssetManager) xp3Var.e, "fonts/" + str7 + ((String) xp3Var.f));
                            map2.put(str7, typefaceCreateFromAsset);
                        }
                        zContains = str6.contains("Italic");
                        zContains2 = str6.contains("Bold");
                        if (!zContains) {
                            if (zContains) {
                                i3 = 2;
                            } else if (zContains2) {
                                i3 = 1;
                            } else {
                                i3 = 0;
                            }
                        } else if (zContains) {
                            i3 = 2;
                        } else if (zContains2) {
                            i3 = 1;
                        } else {
                            i3 = 0;
                        }
                        if (typefaceCreateFromAsset.getStyle() != i3) {
                            typefaceCreateFromAsset = Typeface.create(typefaceCreateFromAsset, i3);
                        }
                        map.put(dz3Var, typefaceCreateFromAsset);
                        typeface = typefaceCreateFromAsset;
                    }
                } else {
                    fFloatValue4 = fFloatValue4;
                    typeface = null;
                }
                if (typeface == null) {
                    typeface = null;
                }
            } else {
                if (c35Var.getCallback() == null) {
                    xp3Var = null;
                } else {
                    if (c35Var.r == null) {
                        c35Var.r = new xp3(c35Var.getCallback());
                    }
                    xp3Var = c35Var.r;
                }
                if (xp3Var != null) {
                    dz3Var = (dz3) xp3Var.b;
                    dz3Var.b = str7;
                    dz3Var.c = str6;
                    map = (HashMap) xp3Var.c;
                    typeface2 = (Typeface) map.get(dz3Var);
                    if (typeface2 != null) {
                        typeface = typeface2;
                        fFloatValue4 = fFloatValue4;
                    } else {
                        map2 = (HashMap) xp3Var.d;
                        typeface3 = (Typeface) map2.get(str7);
                        if (typeface3 != null) {
                            typefaceCreateFromAsset = typeface3;
                        } else {
                            typefaceCreateFromAsset = Typeface.createFromAsset((AssetManager) xp3Var.e, "fonts/" + str7 + ((String) xp3Var.f));
                            map2.put(str7, typefaceCreateFromAsset);
                        }
                        zContains = str6.contains("Italic");
                        zContains2 = str6.contains("Bold");
                        if (!zContains) {
                            if (zContains) {
                                i3 = 2;
                            } else if (zContains2) {
                                i3 = 1;
                            } else {
                                i3 = 0;
                            }
                        } else if (zContains) {
                            i3 = 2;
                        } else if (zContains2) {
                            i3 = 1;
                        } else {
                            i3 = 0;
                        }
                        if (typefaceCreateFromAsset.getStyle() != i3) {
                            typefaceCreateFromAsset = Typeface.create(typefaceCreateFromAsset, i3);
                        }
                        map.put(dz3Var, typefaceCreateFromAsset);
                        typeface = typefaceCreateFromAsset;
                    }
                } else {
                    fFloatValue4 = fFloatValue4;
                    typeface = null;
                }
                if (typeface == null) {
                    typeface = null;
                }
            }
            if (typeface != null) {
                vp4Var.setTypeface(typeface);
                xi8Var2 = l18Var.S;
                if (xi8Var2 != null) {
                    fFloatValue = ((Float) xi8Var2.f()).floatValue();
                } else {
                    fFloatValue = fFloatValue4;
                }
                vp4Var.setTextSize(mi8.c() * fFloatValue);
                k18Var.setTypeface(vp4Var.getTypeface());
                k18Var.setTextSize(vp4Var.getTextSize());
                fC = mi8.c() * f5;
                float f11 = i12 / 10.0f;
                xi8Var3 = l18Var.R;
                if (xi8Var3 != null) {
                    fFloatValue2 = ((Float) xi8Var3.f()).floatValue();
                } else {
                    if (xh3Var != null) {
                        fFloatValue2 = ((Float) xh3Var.f()).floatValue();
                    }
                    fC2 = ((mi8.c() * f11) * fFloatValue) / 100.0f;
                    listAsList = Arrays.asList(str5.replaceAll("\r\n", "\r").replaceAll("\n", "\r").split("\r"));
                    size = listAsList.size();
                    i4 = 0;
                    while (i4 < size) {
                        str = (String) listAsList.get(i4);
                        length = ((str.length() - 1) * fC2) + k18Var.measureText(str);
                        canvas.save();
                        iA = dj7.A(i13);
                        if (iA != 1) {
                            canvas2 = canvas;
                            f = 0.0f;
                            canvas2.translate(-length, 0.0f);
                        } else if (iA != 2) {
                            canvas2 = canvas;
                            f = 0.0f;
                        } else {
                            canvas2 = canvas;
                            f = 0.0f;
                            canvas2.translate((-length) / 2.0f, 0.0f);
                        }
                        canvas2.translate(f, (i4 * fC) - (((size - 1) * fC) / 2.0f));
                        length2 = 0;
                        while (length2 < str.length()) {
                            iCodePointAt = str.codePointAt(length2);
                            iCharCount = Character.charCount(iCodePointAt) + length2;
                            while (iCharCount < str.length()) {
                                iCodePointAt2 = str.codePointAt(iCharCount);
                                if (Character.getType(iCodePointAt2) == 16) {
                                }
                                iCharCount += Character.charCount(iCodePointAt2);
                                iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
                            }
                            j = iCodePointAt;
                            v15Var = l18Var.G;
                            if (v15Var.c(j) >= 0) {
                                str2 = (String) v15Var.b(j);
                                f2 = fC;
                            } else {
                                sb = l18Var.A;
                                sb.setLength(0);
                                iCharCount2 = length2;
                                while (iCharCount2 < iCharCount) {
                                    float f12 = fC;
                                    int iCodePointAt5 = str.codePointAt(iCharCount2);
                                    sb.appendCodePoint(iCodePointAt5);
                                    iCharCount2 += Character.charCount(iCodePointAt5);
                                    fC = f12;
                                }
                                f2 = fC;
                                String string3 = sb.toString();
                                v15Var.e(string3, j);
                                str2 = string3;
                            }
                            length2 += str2.length();
                            if (z != 0) {
                                t(str2, vp4Var, canvas2);
                                t(str2, k18Var, canvas2);
                            } else {
                                t(str2, k18Var, canvas2);
                                t(str2, vp4Var, canvas2);
                            }
                            canvas2.translate(vp4Var.measureText(str2) + fC2, 0.0f);
                            l18Var = this;
                            fC = f2;
                        }
                        canvas2.restore();
                        i4++;
                        l18Var = this;
                    }
                }
                f11 += fFloatValue2;
                fC2 = ((mi8.c() * f11) * fFloatValue) / 100.0f;
                listAsList = Arrays.asList(str5.replaceAll("\r\n", "\r").replaceAll("\n", "\r").split("\r"));
                size = listAsList.size();
                i4 = 0;
                while (i4 < size) {
                    str = (String) listAsList.get(i4);
                    length = ((str.length() - 1) * fC2) + k18Var.measureText(str);
                    canvas.save();
                    iA = dj7.A(i13);
                    if (iA != 1) {
                        canvas2 = canvas;
                        f = 0.0f;
                        canvas2.translate(-length, 0.0f);
                    } else if (iA != 2) {
                        canvas2 = canvas;
                        f = 0.0f;
                    } else {
                        canvas2 = canvas;
                        f = 0.0f;
                        canvas2.translate((-length) / 2.0f, 0.0f);
                    }
                    canvas2.translate(f, (i4 * fC) - (((size - 1) * fC) / 2.0f));
                    length2 = 0;
                    while (length2 < str.length()) {
                        iCodePointAt = str.codePointAt(length2);
                        iCharCount = Character.charCount(iCodePointAt) + length2;
                        while (iCharCount < str.length()) {
                            iCodePointAt2 = str.codePointAt(iCharCount);
                            if (Character.getType(iCodePointAt2) == 16) {
                            }
                            iCharCount += Character.charCount(iCodePointAt2);
                            iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
                        }
                        j = iCodePointAt;
                        v15Var = l18Var.G;
                        if (v15Var.c(j) >= 0) {
                            str2 = (String) v15Var.b(j);
                            f2 = fC;
                        } else {
                            sb = l18Var.A;
                            sb.setLength(0);
                            iCharCount2 = length2;
                            while (iCharCount2 < iCharCount) {
                                float f13 = fC;
                                int iCodePointAt6 = str.codePointAt(iCharCount2);
                                sb.appendCodePoint(iCodePointAt6);
                                iCharCount2 += Character.charCount(iCodePointAt6);
                                fC = f13;
                            }
                            f2 = fC;
                            String string4 = sb.toString();
                            v15Var.e(string4, j);
                            str2 = string4;
                        }
                        length2 += str2.length();
                        if (z != 0) {
                            t(str2, vp4Var, canvas2);
                            t(str2, k18Var, canvas2);
                        } else {
                            t(str2, k18Var, canvas2);
                            t(str2, vp4Var, canvas2);
                        }
                        canvas2.translate(vp4Var.measureText(str2) + fC2, 0.0f);
                        l18Var = this;
                        fC = f2;
                    }
                    canvas2.restore();
                    i4++;
                    l18Var = this;
                }
            }
            canvas3 = canvas;
        }
        canvas3.restore();
    }
}
