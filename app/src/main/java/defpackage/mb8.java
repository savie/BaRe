package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.swiftapps.swiftbackup.database.MDatabase_Impl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mb8 {
    public static final String[] l = {"INSERT", "UPDATE", "DELETE"};
    public final MDatabase_Impl a;
    public final LinkedHashMap b;
    public final LinkedHashMap c;
    public final boolean d;
    public final oh1 e;
    public final String[] g;
    public final ds5 h;
    public final km8 i;
    public final AtomicBoolean j = new AtomicBoolean(false);
    public bt3 k = new pu(16);
    public final LinkedHashMap f = new LinkedHashMap();

    public mb8(MDatabase_Impl mDatabase_Impl, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String[] strArr, boolean z, oh1 oh1Var) {
        String lowerCase;
        this.a = mDatabase_Impl;
        this.b = linkedHashMap;
        this.c = linkedHashMap2;
        this.d = z;
        this.e = oh1Var;
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.ROOT;
            String lowerCase2 = str.toLowerCase(locale);
            lowerCase2.getClass();
            this.f.put(lowerCase2, Integer.valueOf(i));
            String str2 = (String) this.b.get(strArr[i]);
            if (str2 != null) {
                lowerCase = str2.toLowerCase(locale);
                lowerCase.getClass();
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                lowerCase2 = lowerCase;
            }
            strArr2[i] = lowerCase2;
        }
        this.g = strArr2;
        for (Map.Entry entry : this.b.entrySet()) {
            String str3 = (String) entry.getValue();
            Locale locale2 = Locale.ROOT;
            String lowerCase3 = str3.toLowerCase(locale2);
            lowerCase3.getClass();
            if (this.f.containsKey(lowerCase3)) {
                String lowerCase4 = ((String) entry.getKey()).toLowerCase(locale2);
                lowerCase4.getClass();
                LinkedHashMap linkedHashMap3 = this.f;
                linkedHashMap3.put(lowerCase4, x65.p0(linkedHashMap3, lowerCase3));
            }
        }
        this.h = new ds5(this.g.length);
        this.i = new km8(this.g.length);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(mb8 mb8Var, t26 t26Var, kv1 kv1Var) {
        fb8 fb8Var;
        mb8Var.getClass();
        if (kv1Var instanceof fb8) {
            fb8Var = (fb8) kv1Var;
            int i = fb8Var.d;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                fb8Var.d = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                fb8Var = new fb8(mb8Var, kv1Var);
            }
        } else {
            fb8Var = new fb8(mb8Var, kv1Var);
        }
        Object objC = fb8Var.b;
        int i2 = fb8Var.d;
        yx1 yx1Var = yx1.a;
        if (i2 == 0) {
            lg7.H(objC);
            sl slVar = new sl(10);
            fb8Var.a = t26Var;
            fb8Var.d = 1;
            objC = t26Var.c("SELECT * FROM room_table_modification_log WHERE invalidated = 1", slVar, fb8Var);
            if (objC != yx1Var) {
            }
            return yx1Var;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Set set = (Set) fb8Var.a;
            lg7.H(objC);
            return set;
        }
        t26Var = (t26) fb8Var.a;
        lg7.H(objC);
        Set set2 = (Set) objC;
        if (!set2.isEmpty()) {
            fb8Var.a = set2;
            fb8Var.d = 2;
            if (od2.e(t26Var, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1", fb8Var) == yx1Var) {
                return yx1Var;
            }
        }
        return set2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static final Object b(mb8 mb8Var, kv1 kv1Var) throws Throwable {
        gb8 gb8Var;
        h80 h80Var;
        Object objD;
        int[] iArr;
        MDatabase_Impl mDatabase_Impl = mb8Var.a;
        if (kv1Var instanceof gb8) {
            gb8Var = (gb8) kv1Var;
            int i = gb8Var.d;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                gb8Var.d = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                gb8Var = new gb8(mb8Var, kv1Var);
            }
        } else {
            gb8Var = new gb8(mb8Var, kv1Var);
        }
        Object obj = gb8Var.b;
        int i2 = gb8Var.d;
        jv1 jv1Var = null;
        if (i2 == 0) {
            lg7.H(obj);
            h80 h80Var2 = mDatabase_Impl.f;
            boolean zC = h80Var2.c();
            sv2 sv2Var = sv2.a;
            if (!zC) {
                return sv2Var;
            }
            try {
                if (!mb8Var.j.compareAndSet(true, false)) {
                    h80Var2.k();
                    return sv2Var;
                }
                if (!((Boolean) mb8Var.k.invoke()).booleanValue()) {
                    h80Var2.k();
                    return sv2Var;
                }
                s10 s10Var = new s10(mb8Var, jv1Var, 3);
                gb8Var.a = h80Var2;
                gb8Var.d = 1;
                Object objK = mDatabase_Impl.k(false, s10Var, gb8Var);
                yx1 yx1Var = yx1.a;
                if (objK == yx1Var) {
                    return yx1Var;
                }
                h80Var = h80Var2;
                obj = objK;
            } catch (Throwable th) {
                th = th;
                h80Var = h80Var2;
                h80Var.k();
                throw th;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            h80Var = gb8Var.a;
            try {
                lg7.H(obj);
            } catch (Throwable th2) {
                th = th2;
                h80Var.k();
                throw th;
            }
        }
        Set set = (Set) obj;
        if (!set.isEmpty()) {
            km8 km8Var = mb8Var.i;
            km8Var.getClass();
            if (!set.isEmpty()) {
                km7 km7Var = (km7) km8Var.a;
                do {
                    objD = km7Var.d();
                    int[] iArr2 = (int[]) objD;
                    int length = iArr2.length;
                    iArr = new int[length];
                    for (int i3 = 0; i3 < length; i3++) {
                        iArr[i3] = set.contains(Integer.valueOf(i3)) ? iArr2[i3] + 1 : iArr2[i3];
                    }
                    du9 du9Var = ly8.c;
                    if (objD == null) {
                        objD = du9Var;
                    }
                } while (!km7Var.e(objD, iArr));
            }
            mb8Var.e.invoke(set);
        }
        h80Var.k();
        return set;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x008c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0092  */
    /* JADX WARN: Code duplicated, block: B:24:0x0095  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0078, code lost:
    
        if (defpackage.od2.e(r1, r3, r4) == r8) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d8, code lost:
    
        if (defpackage.od2.e(r11, r3, r4) == r8) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00da, code lost:
    
        return r8;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00d8 -> B:28:0x00db). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(defpackage.mb8 r17, defpackage.g98 r18, int r19, defpackage.kv1 r20) {
        /*
            Method dump skipped, instruction units count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mb8.c(mb8, g98, int, kv1):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004f  */
    /* JADX WARN: Code duplicated, block: B:18:0x0083 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0081 -> B:19:0x0084). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object d(defpackage.mb8 r7, defpackage.g98 r8, int r9, defpackage.kv1 r10) {
        /*
            r7.getClass()
            boolean r0 = r10 instanceof defpackage.jb8
            if (r0 == 0) goto L16
            r0 = r10
            jb8 r0 = (defpackage.jb8) r0
            int r1 = r0.n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.n = r1
            goto L1b
        L16:
            jb8 r0 = new jb8
            r0.<init>(r7, r10)
        L1b:
            java.lang.Object r10 = r0.f
            int r1 = r0.n
            r2 = 1
            if (r1 == 0) goto L3b
            if (r1 != r2) goto L34
            int r7 = r0.e
            int r8 = r0.d
            java.lang.String[] r9 = r0.c
            java.lang.String r1 = r0.b
            t26 r3 = r0.a
            defpackage.lg7.H(r10)
            r10 = r9
            r9 = r3
            goto L84
        L34:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r7)
            r7 = 0
            return r7
        L3b:
            defpackage.lg7.H(r10)
            java.lang.String[] r7 = r7.g
            r7 = r7[r9]
            java.lang.String[] r9 = defpackage.mb8.l
            r10 = 0
            r1 = 3
            r6 = r1
            r1 = r7
            r7 = r6
            r6 = r9
            r9 = r8
            r8 = r10
            r10 = r6
        L4d:
            if (r8 >= r7) goto L86
            r3 = r10[r8]
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "room_table_modification_trigger_"
            r4.<init>(r5)
            r4.append(r1)
            r5 = 95
            r4.append(r5)
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            java.lang.String r4 = "DROP TRIGGER IF EXISTS `"
            r5 = 96
            java.lang.String r3 = defpackage.u48.j(r5, r4, r3)
            r0.a = r9
            r0.b = r1
            r0.c = r10
            r0.d = r8
            r0.e = r7
            r0.n = r2
            java.lang.Object r3 = defpackage.od2.e(r9, r3, r0)
            yx1 r4 = defpackage.yx1.a
            if (r3 != r4) goto L84
            return r4
        L84:
            int r8 = r8 + r2
            goto L4d
        L86:
            be8 r7 = defpackage.be8.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mb8.d(mb8, g98, int, kv1):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(kv1 kv1Var) throws Throwable {
        kb8 kb8Var;
        h80 h80Var;
        if (kv1Var instanceof kb8) {
            kb8Var = (kb8) kv1Var;
            int i = kb8Var.d;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                kb8Var.d = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                kb8Var = new kb8(this, kv1Var);
            }
        } else {
            kb8Var = new kb8(this, kv1Var);
        }
        Object obj = kb8Var.b;
        int i2 = kb8Var.d;
        jv1 jv1Var = null;
        if (i2 == 0) {
            lg7.H(obj);
            MDatabase_Impl mDatabase_Impl = this.a;
            h80 h80Var2 = mDatabase_Impl.f;
            if (h80Var2.c()) {
                try {
                    j41 j41Var = new j41(this, jv1Var, 3);
                    kb8Var.a = h80Var2;
                    kb8Var.d = 1;
                    Object objK = mDatabase_Impl.k(false, j41Var, kb8Var);
                    yx1 yx1Var = yx1.a;
                    if (objK == yx1Var) {
                        return yx1Var;
                    }
                    h80Var = h80Var2;
                    h80Var.k();
                } catch (Throwable th) {
                    th = th;
                    h80Var = h80Var2;
                    h80Var.k();
                    throw th;
                }
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            h80Var = kb8Var.a;
            try {
                lg7.H(obj);
                h80Var.k();
            } catch (Throwable th2) {
                th = th2;
                h80Var.k();
                throw th;
            }
        }
        return be8.a;
    }

    public final pw5 f(String[] strArr) {
        w97 w97Var = new w97();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Set set = (Set) this.c.get(lowerCase);
            if (set != null) {
                w97Var.addAll(set);
            } else {
                w97Var.add(str);
            }
        }
        String[] strArr2 = (String[]) sz8.e(w97Var).toArray(new String[0]);
        int length = strArr2.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            String str2 = strArr2[i];
            String lowerCase2 = str2.toLowerCase(Locale.ROOT);
            lowerCase2.getClass();
            Integer num = (Integer) this.f.get(lowerCase2);
            if (num == null) {
                c6.f("There is no table with name ".concat(str2));
                return null;
            }
            iArr[i] = num.intValue();
        }
        return new pw5(strArr2, iArr);
    }
}
