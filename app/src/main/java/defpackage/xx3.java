package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcelable;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class xx3 {
    public static final double[][] a = {new double[]{0.401288d, 0.650173d, -0.051461d}, new double[]{-0.250268d, 1.204414d, 0.045854d}, new double[]{-0.002079d, 0.048952d, 0.953127d}};
    public static final q86 b = new q86("image-destination");
    public static final q86 c = new q86("image-replacement-text-is-link");
    public static final q86 d = new q86("image-size");
    public static final nx0 e = new nx0(1);
    public static final int[] f = {0, 3, 6, 9, 12, 16, 19, 22, 25, 28};
    public static final int[] g = {0, 2, 3, 5, 6, 0, 1, 3, 4, 6};
    public static final int[] h = {67108863, 33554431};
    public static final int[] i = {26, 25};

    public static final Object A(w57 w57Var, boolean z, w57 w57Var2, qt3 qt3Var) throws Throwable {
        Object ln1Var;
        Object objH;
        try {
            nc8.g(2, qt3Var);
            ln1Var = qt3Var.invoke(w57Var2, w57Var);
        } catch (xm2 e2) {
            Throwable th = e2.a;
            w57Var.G(new ln1(th, false));
            throw th;
        } catch (Throwable th2) {
            ln1Var = new ln1(th2, false);
        }
        yx1 yx1Var = yx1.a;
        if (ln1Var == yx1Var || (objH = w57Var.H(ln1Var)) == pe4.c) {
            return yx1Var;
        }
        w57Var.b0();
        if (!(objH instanceof ln1)) {
            return pe4.I(objH);
        }
        if (!z) {
            Throwable th3 = ((ln1) objH).a;
            if ((th3 instanceof g48) && ((g48) th3).a == w57Var) {
                if (ln1Var instanceof ln1) {
                    throw ((ln1) ln1Var).a;
                }
                return ln1Var;
            }
        }
        throw ((ln1) objH).a;
    }

    /* JADX WARN: Code duplicated, block: B:110:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:124:0x0316  */
    /* JADX WARN: Code duplicated, block: B:136:0x036c  */
    /* JADX WARN: Code duplicated, block: B:145:0x039e A[LOOP:6: B:143:0x0398->B:145:0x039e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:170:0x041f A[Catch: all -> 0x03ed, eb5 -> 0x03f0, TryCatch #4 {all -> 0x03ed, blocks: (B:194:0x04a9, B:195:0x04ac, B:205:0x04ce, B:208:0x0500, B:168:0x0419, B:170:0x041f, B:171:0x0420, B:172:0x0427, B:155:0x03e6, B:156:0x03ec, B:180:0x0451, B:181:0x0458), top: B:227:0x04ce }] */
    /* JADX WARN: Code duplicated, block: B:171:0x0420 A[Catch: all -> 0x03ed, eb5 -> 0x03f0, TryCatch #4 {all -> 0x03ed, blocks: (B:194:0x04a9, B:195:0x04ac, B:205:0x04ce, B:208:0x0500, B:168:0x0419, B:170:0x041f, B:171:0x0420, B:172:0x0427, B:155:0x03e6, B:156:0x03ec, B:180:0x0451, B:181:0x0458), top: B:227:0x04ce }] */
    /* JADX WARN: Code duplicated, block: B:204:0x04cc  */
    /* JADX WARN: Code duplicated, block: B:207:0x04d6 A[LOOP:0: B:9:0x0057->B:207:0x04d6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:230:0x02f1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:252:0x02f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:275:0x044c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:276:0x0428 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:0x03d5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:280:0x0500 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:281:0x0500 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x0282 A[Catch: all -> 0x024f, TryCatch #25 {all -> 0x024f, blocks: (B:75:0x023b, B:89:0x0282, B:90:0x0286, B:91:0x0289), top: B:258:0x023b }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [int] */
    /* JADX WARN: Type inference failed for: r0v65, types: [vq] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v19, types: [long] */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26, types: [pa5] */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v30 */
    /* JADX WARN: Type inference failed for: r10v31 */
    /* JADX WARN: Type inference failed for: r10v32 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.util.concurrent.ExecutorCompletionService] */
    /* JADX WARN: Type inference failed for: r11v21, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v2, types: [int[]] */
    /* JADX WARN: Type inference failed for: r13v23, types: [int[]] */
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r13v3, types: [int[]] */
    /* JADX WARN: Type inference failed for: r13v31 */
    /* JADX WARN: Type inference failed for: r13v32 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v2, types: [jb5] */
    /* JADX WARN: Type inference failed for: r14v20, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v26 */
    /* JADX WARN: Type inference failed for: r14v27 */
    /* JADX WARN: Type inference failed for: r14v28 */
    /* JADX WARN: Type inference failed for: r14v29 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v30 */
    /* JADX WARN: Type inference failed for: r14v31, types: [jb5] */
    /* JADX WARN: Type inference failed for: r14v32 */
    /* JADX WARN: Type inference failed for: r14v33 */
    /* JADX WARN: Type inference failed for: r14v34 */
    /* JADX WARN: Type inference failed for: r14v35 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r14v6, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v19, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r15v26, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r15v28 */
    /* JADX WARN: Type inference failed for: r15v29 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v13 */
    /* JADX WARN: Type inference failed for: r16v14 */
    /* JADX WARN: Type inference failed for: r16v16 */
    /* JADX WARN: Type inference failed for: r16v18 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v21, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r16v22 */
    /* JADX WARN: Type inference failed for: r16v23 */
    /* JADX WARN: Type inference failed for: r16v25 */
    /* JADX WARN: Type inference failed for: r16v26 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20, types: [int] */
    /* JADX WARN: Type inference failed for: r1v22, types: [q63] */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v43 */
    /* JADX WARN: Type inference failed for: r1v44 */
    /* JADX WARN: Type inference failed for: r1v45 */
    /* JADX WARN: Type inference failed for: r1v46 */
    /* JADX WARN: Type inference failed for: r1v47 */
    /* JADX WARN: Type inference failed for: r1v48 */
    /* JADX WARN: Type inference failed for: r1v49 */
    /* JADX WARN: Type inference failed for: r1v5, types: [q63] */
    /* JADX WARN: Type inference failed for: r1v50 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r24v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r28v0 */
    /* JADX WARN: Type inference failed for: r28v1 */
    /* JADX WARN: Type inference failed for: r33v0, types: [int[]] */
    /* JADX WARN: Type inference failed for: r35v1 */
    /* JADX WARN: Type inference failed for: r35v11 */
    /* JADX WARN: Type inference failed for: r35v15 */
    /* JADX WARN: Type inference failed for: r35v18 */
    /* JADX WARN: Type inference failed for: r35v19 */
    /* JADX WARN: Type inference failed for: r35v2 */
    /* JADX WARN: Type inference failed for: r35v20 */
    /* JADX WARN: Type inference failed for: r35v23 */
    /* JADX WARN: Type inference failed for: r35v24 */
    /* JADX WARN: Type inference failed for: r35v25 */
    /* JADX WARN: Type inference failed for: r35v26 */
    /* JADX WARN: Type inference failed for: r35v27 */
    /* JADX WARN: Type inference failed for: r35v28 */
    /* JADX WARN: Type inference failed for: r35v29 */
    /* JADX WARN: Type inference failed for: r35v3 */
    /* JADX WARN: Type inference failed for: r35v30 */
    /* JADX WARN: Type inference failed for: r35v4 */
    /* JADX WARN: Type inference failed for: r35v5 */
    /* JADX WARN: Type inference failed for: r35v6 */
    /* JADX WARN: Type inference failed for: r35v7 */
    /* JADX WARN: Type inference failed for: r35v8 */
    /* JADX WARN: Type inference failed for: r36v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r36v1 */
    /* JADX WARN: Type inference failed for: r36v10 */
    /* JADX WARN: Type inference failed for: r36v11 */
    /* JADX WARN: Type inference failed for: r36v12 */
    /* JADX WARN: Type inference failed for: r36v13 */
    /* JADX WARN: Type inference failed for: r36v14 */
    /* JADX WARN: Type inference failed for: r36v15 */
    /* JADX WARN: Type inference failed for: r36v16 */
    /* JADX WARN: Type inference failed for: r36v17 */
    /* JADX WARN: Type inference failed for: r36v18 */
    /* JADX WARN: Type inference failed for: r36v19 */
    /* JADX WARN: Type inference failed for: r36v2 */
    /* JADX WARN: Type inference failed for: r36v20 */
    /* JADX WARN: Type inference failed for: r36v3 */
    /* JADX WARN: Type inference failed for: r36v4 */
    /* JADX WARN: Type inference failed for: r36v5 */
    /* JADX WARN: Type inference failed for: r36v6 */
    /* JADX WARN: Type inference failed for: r36v7 */
    /* JADX WARN: Type inference failed for: r36v8 */
    /* JADX WARN: Type inference failed for: r36v9 */
    /* JADX WARN: Type inference failed for: r38v1, types: [q63] */
    /* JADX WARN: Type inference failed for: r3v16, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v15, types: [int] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v16, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /* JADX WARN: Type inference failed for: r6v40 */
    /* JADX WARN: Type inference failed for: r6v41 */
    /* JADX WARN: Type inference failed for: r6v42 */
    /* JADX WARN: Type inference failed for: r6v43 */
    /* JADX WARN: Type inference failed for: r6v44 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12, types: [int[]] */
    /* JADX WARN: Type inference failed for: r8v13, types: [int[]] */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v31, types: [jb5] */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v36 */
    /* JADX WARN: Type inference failed for: r8v37 */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.lang.Object, kh6] */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void B(q63 q63Var, final z95 z95Var, final ft7 ft7Var, String str) throws Throwable {
        final ?? r14;
        ?? HasNext;
        long j;
        ?? r8;
        ?? r16;
        ?? r6;
        ?? r35;
        ?? r1;
        Throwable th;
        ?? r7;
        ?? r2;
        String str2;
        ?? r9;
        pa5 pa5VarM;
        List list;
        ArrayList arrayList;
        Iterator it;
        pa5 pa5Var;
        List list2;
        ?? r36;
        ?? r10;
        ?? r37;
        ?? r38;
        ?? r11;
        ?? r39;
        final byte[] bArr;
        ?? r310;
        byte[] bArr2;
        q63 q63Var2 = q63Var;
        q63Var2.getClass();
        ft7Var.getClass();
        gt7 gt7Var = nb5.b;
        gt7Var.getClass();
        String strI0 = nq7.I0(str, '/');
        if (nq7.j0(strI0)) {
            c6.f("MEGA upload path is blank");
            return;
        }
        String strE0 = nq7.E0('/', strI0, "");
        String strB0 = nq7.B0(strI0, '/');
        gt7Var.b(strE0);
        pa5 pa5VarM2 = gt7Var.d().m(strE0);
        if (pa5VarM2 == null) {
            throw new IllegalStateException("MEGA upload parent does not exist: ".concat(strE0).toString());
        }
        jb5 jb5Var = (jb5) gt7.g.getValue();
        gh ghVarF = gt7Var.f();
        jb5Var.getClass();
        if (pa5VarM2.f == 0) {
            f6.g("MEGA upload parent is not a folder: ".concat(pa5VarM2.c));
            return;
        }
        long jA = q63Var2.A();
        String strK = jb5.k(q63Var2, jA);
        int i2 = 0;
        q63 q63Var3 = q63Var2;
        gt7 gt7Var2 = gt7Var;
        ?? r12 = strK;
        ?? r13 = strE0;
        ?? A = pa5VarM2;
        ?? r15 = strB0;
        ?? r17 = jb5Var;
        while (true) {
            final ConcurrentHashMap.KeySetView keySetViewNewKeySet = ConcurrentHashMap.newKeySet();
            fl4 fl4Var = new fl4();
            fl4Var.u("a", "u");
            fl4Var.t("s", Long.valueOf(jA));
            fl4Var.t("v", 3);
            char c2 = 2;
            fl4Var.t("ssl", 2);
            List listA = jb5.a(r17.a.b(fl4Var, (String) ghVarF.a, da5.READ_SAFE).i(), JWKParameterNames.RSA_FIRST_PRIME_FACTOR);
            if (listA.size() != 1) {
                g84.f(xs1.h(listA.size(), "MEGA transfer response for 'p' returned ", " URLs"));
                return;
            }
            String str3 = (String) el1.k1(listA);
            int[] iArr = new int[6];
            int i3 = 0;
            for (int i4 = 6; i3 < i4; i4 = 6) {
                iArr[i3] = r17.d.nextInt();
                i3++;
            }
            ly8.n(4, 6);
            gt7 gt7Var3 = gt7Var2;
            int[] iArrCopyOfRange = Arrays.copyOfRange(iArr, 0, 4);
            iArrCopyOfRange.getClass();
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iArrCopyOfRange.length * 4);
            byteBufferAllocate.getClass();
            ?? r21 = iArr;
            int i5 = 0;
            for (int length = iArrCopyOfRange.length; i5 < length; length = length) {
                byteBufferAllocate.putInt(iArrCopyOfRange[i5]);
                i5++;
            }
            byte[] bArrArray = byteBufferAllocate.array();
            bArrArray.getClass();
            int i6 = r21[4];
            int i7 = 5;
            int i8 = r21[5];
            ?? arrayList2 = r13;
            int i9 = i2;
            int[] iArr2 = {i6, i8, 0, 0};
            int[] iArr3 = {i6, i8, i6, i8};
            ArrayList arrayListD = jb5.d(jA);
            gh ghVar = ghVarF;
            List listI = arrayListD.isEmpty() ? nc8.I(new db5(0, 0L)) : arrayListD;
            int i10 = (jA > 0L ? 1 : (jA == 0L ? 0 : -1));
            if (i10 == 0) {
                arrayList2 = new ArrayList();
            } else {
                int size = listI.size();
                ArrayList arrayList3 = new ArrayList(size);
                int i11 = 0;
                while (i11 < size) {
                    arrayList3.add(new byte[0]);
                    i11++;
                    i10 = i10;
                }
                arrayList2 = arrayList3;
            }
            int i12 = i10;
            final lh6 lh6Var = new lh6();
            final ?? kh6Var = new kh6();
            ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(4);
            ?? executorCompletionService = r15;
            executorCompletionService = new ExecutorCompletionService(executorServiceNewFixedThreadPool);
            long j2 = jA;
            final Semaphore semaphore = new Semaphore(4);
            try {
                InputStream inputStreamW = q63Var3.w(true);
                try {
                    Iterator it2 = listI.iterator();
                    kh6Var = iArrCopyOfRange;
                    int i13 = 0;
                    int iJ = 0;
                    int i14 = 0;
                    ?? r3 = q63Var3;
                    ?? r18 = r12;
                    r21 = inputStreamW;
                    r14 = r17;
                    ?? r19 = str3;
                    r14 = r14;
                    while (true) {
                        try {
                            HasNext = it2.hasNext();
                            if (HasNext == 0) {
                                break;
                            }
                            int i15 = i14 + 1;
                            try {
                                r14 = r14;
                                try {
                                    final db5 db5Var = (db5) it2.next();
                                    HasNext = r19;
                                    if (lh6Var.a != null) {
                                        r14 = r14;
                                        break;
                                    }
                                    jb5.t(ft7Var);
                                    semaphore.acquire();
                                    try {
                                        int i16 = db5Var.b;
                                        if (i16 == 0) {
                                            r310 = r18;
                                            try {
                                                bArr2 = new byte[0];
                                                r36 = r310;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                r39 = r310;
                                                r10 = r21;
                                                j = j2;
                                                r14 = r14;
                                                bArr = null;
                                                r36 = r39;
                                                if (bArr != null) {
                                                    Arrays.fill(bArr, (byte) 0);
                                                }
                                                semaphore.release();
                                                throw th;
                                            }
                                        } else {
                                            r310 = r18;
                                            byte[] bArr3 = new byte[i16];
                                            int i17 = 0;
                                            while (i17 < i16) {
                                                int i18 = i13;
                                                int i19 = r21.read(bArr3, i17, i16 - i17);
                                                if (i19 < 0) {
                                                    throw new EOFException("MEGA upload source ended early: expected=" + i16 + " actual=" + i17);
                                                }
                                                i17 += i19;
                                                i13 = i18;
                                            }
                                            bArr2 = bArr3;
                                            r36 = r310;
                                        }
                                        int i20 = i13;
                                        lh6 lh6Var2 = lh6Var;
                                        try {
                                            byte[] bArrF = jb5.f(bArrArray, iArr2, db5Var.a, bArr2);
                                            if (i12 > 0) {
                                                try {
                                                    arrayList2.set(i14, jb5.c(bArrArray, iArr3, bArr2, 0, bArr2.length));
                                                } catch (Throwable th3) {
                                                    Arrays.fill(bArr2, (byte) 0);
                                                    throw th3;
                                                }
                                            }
                                            try {
                                                Arrays.fill(bArr2, (byte) 0);
                                                byte[] bArr4 = bArrArray;
                                                r10 = r21;
                                                final ?? r110 = HasNext;
                                                bArr = bArrF;
                                                j = j2;
                                                r14 = r14;
                                                try {
                                                    executorCompletionService.submit(new Callable() { // from class: wa5
                                                        @Override // java.util.concurrent.Callable
                                                        public final Object call() {
                                                            byte[] bArr5 = bArr;
                                                            jb5 jb5Var2 = r14;
                                                            String str4 = r110;
                                                            db5 db5Var2 = db5Var;
                                                            ft7 ft7Var2 = ft7Var;
                                                            ConcurrentHashMap.KeySetView keySetView = keySetViewNewKeySet;
                                                            Semaphore semaphore2 = semaphore;
                                                            try {
                                                                int length2 = bArr5.length;
                                                                long j3 = db5Var2.a;
                                                                keySetView.getClass();
                                                                return new ib5(length2, jb5Var2.v(str4, j3, bArr5, ft7Var2, keySetView));
                                                            } finally {
                                                                Arrays.fill(bArr5, (byte) 0);
                                                                semaphore2.release();
                                                            }
                                                        }
                                                    });
                                                    int i21 = i20 + 1;
                                                    try {
                                                        lh6Var = lh6Var2;
                                                        bArrArray = bArr4;
                                                        try {
                                                            iJ = jb5.j(executorCompletionService, iJ, i21, false, new mt3() { // from class: xa5
                                                                @Override // defpackage.mt3
                                                                public final Object invoke(Object obj) {
                                                                    ib5 ib5Var = (ib5) obj;
                                                                    ib5Var.getClass();
                                                                    kh6 kh6Var2 = kh6Var;
                                                                    long j3 = kh6Var2.a + ((long) ib5Var.a);
                                                                    kh6Var2.a = j3;
                                                                    z95Var.a(j3);
                                                                    String str4 = ib5Var.b;
                                                                    boolean zJ0 = nq7.j0(str4);
                                                                    lh6 lh6Var3 = lh6Var;
                                                                    if (!zJ0) {
                                                                        lh6Var3.a = str4;
                                                                    }
                                                                    return Boolean.valueOf(lh6Var3.a != null);
                                                                }
                                                            });
                                                            r3 = q63Var;
                                                            j2 = j;
                                                            r21 = r10;
                                                            i13 = i21;
                                                            i14 = i15;
                                                            r18 = r36;
                                                            bArrArray = bArrArray;
                                                            c2 = 2;
                                                            r14 = r14;
                                                            r19 = r110;
                                                            r14 = r14;
                                                        } catch (Throwable th4) {
                                                            th = th4;
                                                            th = th;
                                                            r38 = r14;
                                                            r11 = r10;
                                                            r37 = r36;
                                                            r21 = r21;
                                                            i9 = i9;
                                                            arrayList2 = arrayList2;
                                                            A = A;
                                                            executorCompletionService = executorCompletionService;
                                                            kh6Var = kh6Var;
                                                            HasNext = r37;
                                                            r14 = bArrArray;
                                                            q63Var3 = q63Var;
                                                            r7 = r11;
                                                            r14 = r38;
                                                            try {
                                                                throw th;
                                                            } catch (Throwable th5) {
                                                                try {
                                                                    rs9.c(r7, th);
                                                                    throw th5;
                                                                } catch (eb5 e2) {
                                                                    e = e2;
                                                                }
                                                            }
                                                        }
                                                    } catch (Throwable th6) {
                                                        th = th6;
                                                        bArrArray = bArr4;
                                                        th = th;
                                                        r38 = r14;
                                                        r11 = r10;
                                                        r37 = r36;
                                                        r21 = r21;
                                                        i9 = i9;
                                                        arrayList2 = arrayList2;
                                                        A = A;
                                                        executorCompletionService = executorCompletionService;
                                                        kh6Var = kh6Var;
                                                        HasNext = r37;
                                                        r14 = bArrArray;
                                                        q63Var3 = q63Var;
                                                        r7 = r11;
                                                        r14 = r38;
                                                        throw th;
                                                    }
                                                } catch (Throwable th7) {
                                                    th = th7;
                                                    bArrArray = bArr4;
                                                    r10 = r10;
                                                    r14 = r14;
                                                    r36 = r36;
                                                    if (bArr != null) {
                                                        Arrays.fill(bArr, (byte) 0);
                                                    }
                                                    semaphore.release();
                                                    throw th;
                                                }
                                            } catch (Throwable th8) {
                                                th = th8;
                                                bArrArray = bArrArray;
                                                r10 = r21;
                                                bArr = bArrF;
                                                j = j2;
                                                r14 = r14;
                                                r36 = r36;
                                                if (bArr != null) {
                                                    Arrays.fill(bArr, (byte) 0);
                                                }
                                                semaphore.release();
                                                throw th;
                                            }
                                        } catch (Throwable th9) {
                                            th = th9;
                                            r39 = r36;
                                            r10 = r21;
                                            j = j2;
                                            r14 = r14;
                                            bArr = null;
                                            r36 = r39;
                                            if (bArr != null) {
                                                Arrays.fill(bArr, (byte) 0);
                                            }
                                            semaphore.release();
                                            throw th;
                                        }
                                    } catch (Throwable th10) {
                                        th = th10;
                                        r39 = r18;
                                    }
                                } catch (Throwable th11) {
                                    bArrArray = bArrArray;
                                    r37 = r18;
                                    r11 = r21;
                                    j = j2;
                                    th = th11;
                                    r38 = r14;
                                    r21 = r21;
                                    i9 = i9;
                                    arrayList2 = arrayList2;
                                    A = A;
                                    executorCompletionService = executorCompletionService;
                                    kh6Var = kh6Var;
                                    HasNext = r37;
                                    r14 = bArrArray;
                                    q63Var3 = q63Var;
                                    r7 = r11;
                                    r14 = r38;
                                    throw th;
                                }
                            } catch (Throwable th12) {
                                th = th12;
                                bArrArray = bArrArray;
                                r36 = r18;
                                r10 = r21;
                                j = j2;
                            }
                            if (i9 < 16) {
                                try {
                                    if (!ft7Var.a.get()) {
                                        keySetViewNewKeySet.getClass();
                                        jb5.b(keySetViewNewKeySet);
                                        executorServiceNewFixedThreadPool.shutdownNow();
                                        Arrays.fill((int[]) r21, 0);
                                        Arrays.fill((int[]) kh6Var, 0);
                                        Arrays.fill((byte[]) r14, (byte) 0);
                                        Arrays.fill(iArr2, 0);
                                        Arrays.fill(iArr3, 0);
                                        i2 = i9 + 1;
                                        r13 = arrayList2;
                                        r12 = HasNext;
                                        ghVarF = ghVar;
                                        r17 = r14;
                                        jA = j;
                                        gt7Var2 = gt7Var3;
                                        q63Var3 = q63Var3;
                                        A = A;
                                        r15 = executorCompletionService;
                                    }
                                } catch (Throwable th13) {
                                    th = th13;
                                }
                            }
                            throw e;
                        } catch (Throwable th14) {
                            th = th14;
                            r16 = r18;
                            r6 = r21;
                            r35 = r14;
                            r8 = kh6Var;
                            r1 = r3;
                            r14 = bArrArray;
                            j = j2;
                            th = th;
                            q63Var3 = r1;
                            r7 = r6;
                            kh6Var = r8;
                            arrayList2 = arrayList2;
                            A = A;
                            executorCompletionService = executorCompletionService;
                            r21 = r21;
                            HasNext = r16;
                            r14 = r35;
                            throw th;
                        }
                    }
                    int i22 = i13;
                    byte[] bArr5 = bArrArray;
                    ?? r311 = r18;
                    j = j2;
                    try {
                        try {
                            r21.close();
                            if (lh6Var.a != null) {
                                keySetViewNewKeySet.getClass();
                                jb5.b(keySetViewNewKeySet);
                                A = q63Var.A();
                                q63Var3 = (A > j ? 1 : (A == j ? 0 : -1));
                                if (q63Var3 == 0) {
                                    q63Var3 = q63Var;
                                    if (jb5.k(q63Var3, A).equals(r311)) {
                                        if (kh6Var.a < j) {
                                            kh6Var.a = j;
                                            z95Var.a(j);
                                        }
                                        str2 = (String) lh6Var.a;
                                        if (str2 == null) {
                                            throw new ca5(-1);
                                        }
                                        HasNext = r311;
                                        r9 = r14;
                                        r21 = r21;
                                        A = A;
                                        executorCompletionService = executorCompletionService;
                                        r14 = bArr5;
                                        r9.e(ghVar, A, executorCompletionService, str2, r21, r14, arrayList2, HasNext);
                                        executorServiceNewFixedThreadPool.shutdownNow();
                                        Arrays.fill((int[]) r21, 0);
                                        Arrays.fill((int[]) kh6Var, 0);
                                        Arrays.fill((byte[]) r14, (byte) 0);
                                        Arrays.fill(iArr2, 0);
                                        Arrays.fill(iArr3, 0);
                                        gt7.i = null;
                                        ?? D = gt7Var3.d();
                                        pa5VarM = D.m(arrayList2);
                                        list = ov2.a;
                                        if (pa5VarM != null) {
                                            list = list2;
                                        }
                                        arrayList = new ArrayList();
                                        for (Object obj : list) {
                                            pa5Var = (pa5) obj;
                                            if (pa5Var.f == 0) {
                                                arrayList.add(obj);
                                            }
                                        }
                                        it = el1.N0(1, el1.n1(arrayList, new jc1(i7))).iterator();
                                        while (it.hasNext()) {
                                            ((sa5) gt7.e.getValue()).b(gt7.a.f(), (pa5) it.next());
                                            gt7.i = null;
                                        }
                                        return;
                                        if (e.a != -9) {
                                            throw new eb5("MEGA upload completion storage unavailable (API_ENOENT)");
                                        }
                                        throw e;
                                    }
                                }
                                throw new IOException("MEGA upload source changed during upload");
                            }
                            try {
                                jb5.j(executorCompletionService, iJ, i22, true, new dz(2, kh6Var, z95Var, lh6Var));
                                keySetViewNewKeySet.getClass();
                                jb5.b(keySetViewNewKeySet);
                                try {
                                    A = q63Var.A();
                                    q63Var3 = (A > j ? 1 : (A == j ? 0 : -1));
                                    try {
                                        if (q63Var3 == 0) {
                                            q63Var3 = q63Var;
                                            try {
                                                try {
                                                    if (jb5.k(q63Var3, A).equals(r311)) {
                                                        try {
                                                            if (kh6Var.a < j) {
                                                                try {
                                                                    kh6Var.a = j;
                                                                    z95Var.a(j);
                                                                } catch (eb5 e3) {
                                                                    e = e3;
                                                                    HasNext = r311;
                                                                    q63Var3 = q63Var3;
                                                                    r14 = bArr5;
                                                                    if (i9 < 16) {
                                                                        if (!ft7Var.a.get()) {
                                                                            keySetViewNewKeySet.getClass();
                                                                            jb5.b(keySetViewNewKeySet);
                                                                            executorServiceNewFixedThreadPool.shutdownNow();
                                                                            Arrays.fill((int[]) r21, 0);
                                                                            Arrays.fill((int[]) kh6Var, 0);
                                                                            Arrays.fill((byte[]) r14, (byte) 0);
                                                                            Arrays.fill(iArr2, 0);
                                                                            Arrays.fill(iArr3, 0);
                                                                            i2 = i9 + 1;
                                                                            r13 = arrayList2;
                                                                            r12 = HasNext;
                                                                            ghVarF = ghVar;
                                                                            r17 = r14;
                                                                            jA = j;
                                                                            gt7Var2 = gt7Var3;
                                                                            q63Var3 = q63Var3;
                                                                            A = A;
                                                                            r15 = executorCompletionService;
                                                                        }
                                                                    }
                                                                    throw e;
                                                                }
                                                            }
                                                            try {
                                                                str2 = (String) lh6Var.a;
                                                                if (str2 == null) {
                                                                    HasNext = r311;
                                                                    r9 = r14;
                                                                    r21 = r21;
                                                                    A = A;
                                                                    executorCompletionService = executorCompletionService;
                                                                    r14 = bArr5;
                                                                    try {
                                                                        r9.e(ghVar, A, executorCompletionService, str2, r21, r14, arrayList2, HasNext);
                                                                        executorServiceNewFixedThreadPool.shutdownNow();
                                                                        Arrays.fill((int[]) r21, 0);
                                                                        Arrays.fill((int[]) kh6Var, 0);
                                                                        Arrays.fill((byte[]) r14, (byte) 0);
                                                                        Arrays.fill(iArr2, 0);
                                                                        Arrays.fill(iArr3, 0);
                                                                        gt7.i = null;
                                                                        ?? D2 = gt7Var3.d();
                                                                        pa5VarM = D2.m(arrayList2);
                                                                        list = ov2.a;
                                                                        if (pa5VarM != null && (list2 = (List) ((LinkedHashMap) D2.c).get(pa5VarM.a)) != null) {
                                                                            list = list2;
                                                                        }
                                                                        arrayList = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            pa5Var = (pa5) obj;
                                                                            if (pa5Var.f == 0 && pa5Var.c.equals(executorCompletionService)) {
                                                                                arrayList.add(obj);
                                                                            }
                                                                        }
                                                                        it = el1.N0(1, el1.n1(arrayList, new jc1(i7))).iterator();
                                                                        while (it.hasNext()) {
                                                                            ((sa5) gt7.e.getValue()).b(gt7.a.f(), (pa5) it.next());
                                                                            gt7.i = null;
                                                                        }
                                                                        return;
                                                                    } catch (ca5 e4) {
                                                                        e = e4;
                                                                    } catch (eb5 e5) {
                                                                        e = e5;
                                                                        r14 = r9;
                                                                        ghVar = ghVar;
                                                                        arrayList2 = arrayList2;
                                                                        kh6Var = kh6Var;
                                                                        i9 = i9;
                                                                        if (i9 < 16) {
                                                                            if (!ft7Var.a.get()) {
                                                                                keySetViewNewKeySet.getClass();
                                                                                jb5.b(keySetViewNewKeySet);
                                                                                executorServiceNewFixedThreadPool.shutdownNow();
                                                                                Arrays.fill((int[]) r21, 0);
                                                                                Arrays.fill((int[]) kh6Var, 0);
                                                                                Arrays.fill((byte[]) r14, (byte) 0);
                                                                                Arrays.fill(iArr2, 0);
                                                                                Arrays.fill(iArr3, 0);
                                                                                i2 = i9 + 1;
                                                                                r13 = arrayList2;
                                                                                r12 = HasNext;
                                                                                ghVarF = ghVar;
                                                                                r17 = r14;
                                                                                jA = j;
                                                                                gt7Var2 = gt7Var3;
                                                                                q63Var3 = q63Var3;
                                                                                A = A;
                                                                                r15 = executorCompletionService;
                                                                            }
                                                                        }
                                                                        throw e;
                                                                    } catch (Throwable th15) {
                                                                        th = th15;
                                                                        kh6Var = kh6Var;
                                                                        keySetViewNewKeySet.getClass();
                                                                        jb5.b(keySetViewNewKeySet);
                                                                        executorServiceNewFixedThreadPool.shutdownNow();
                                                                        Arrays.fill((int[]) r21, 0);
                                                                        Arrays.fill((int[]) kh6Var, 0);
                                                                        Arrays.fill((byte[]) r14, (byte) 0);
                                                                        Arrays.fill(iArr2, 0);
                                                                        Arrays.fill(iArr3, 0);
                                                                        throw th;
                                                                    }
                                                                } else {
                                                                    try {
                                                                        throw new ca5(-1);
                                                                    } catch (ca5 e6) {
                                                                        e = e6;
                                                                    }
                                                                }
                                                            } catch (ca5 e7) {
                                                                e = e7;
                                                            }
                                                            if (e.a != -9) {
                                                                throw new eb5("MEGA upload completion storage unavailable (API_ENOENT)");
                                                            }
                                                            throw e;
                                                        } catch (eb5 e8) {
                                                            e = e8;
                                                            HasNext = r311;
                                                            q63Var3 = q63Var3;
                                                            r14 = bArr5;
                                                            i9 = i9;
                                                            if (i9 < 16) {
                                                                if (!ft7Var.a.get()) {
                                                                    keySetViewNewKeySet.getClass();
                                                                    jb5.b(keySetViewNewKeySet);
                                                                    executorServiceNewFixedThreadPool.shutdownNow();
                                                                    Arrays.fill((int[]) r21, 0);
                                                                    Arrays.fill((int[]) kh6Var, 0);
                                                                    Arrays.fill((byte[]) r14, (byte) 0);
                                                                    Arrays.fill(iArr2, 0);
                                                                    Arrays.fill(iArr3, 0);
                                                                    i2 = i9 + 1;
                                                                    r13 = arrayList2;
                                                                    r12 = HasNext;
                                                                    ghVarF = ghVar;
                                                                    r17 = r14;
                                                                    jA = j;
                                                                    gt7Var2 = gt7Var3;
                                                                    q63Var3 = q63Var3;
                                                                    A = A;
                                                                    r15 = executorCompletionService;
                                                                }
                                                            }
                                                            throw e;
                                                        }
                                                    }
                                                } catch (eb5 e9) {
                                                    e = e9;
                                                    HasNext = r311;
                                                    q63Var3 = q63Var3;
                                                }
                                            } catch (eb5 e10) {
                                                e = e10;
                                                r2 = q63Var3;
                                                HasNext = r311;
                                                q63Var3 = r2;
                                                r14 = bArr5;
                                                i9 = i9;
                                                if (i9 < 16) {
                                                    if (!ft7Var.a.get()) {
                                                        keySetViewNewKeySet.getClass();
                                                        jb5.b(keySetViewNewKeySet);
                                                        executorServiceNewFixedThreadPool.shutdownNow();
                                                        Arrays.fill((int[]) r21, 0);
                                                        Arrays.fill((int[]) kh6Var, 0);
                                                        Arrays.fill((byte[]) r14, (byte) 0);
                                                        Arrays.fill(iArr2, 0);
                                                        Arrays.fill(iArr3, 0);
                                                        i2 = i9 + 1;
                                                        r13 = arrayList2;
                                                        r12 = HasNext;
                                                        ghVarF = ghVar;
                                                        r17 = r14;
                                                        jA = j;
                                                        gt7Var2 = gt7Var3;
                                                        q63Var3 = q63Var3;
                                                        A = A;
                                                        r15 = executorCompletionService;
                                                    }
                                                }
                                                throw e;
                                            }
                                        }
                                        throw new IOException("MEGA upload source changed during upload");
                                    } catch (eb5 e11) {
                                        e = e11;
                                    }
                                } catch (eb5 e12) {
                                    e = e12;
                                    r2 = q63Var;
                                }
                            } catch (eb5 e13) {
                                e = e13;
                                q63Var3 = q63Var;
                                HasNext = r311;
                                r14 = bArr5;
                                if (i9 < 16) {
                                    if (!ft7Var.a.get()) {
                                        keySetViewNewKeySet.getClass();
                                        jb5.b(keySetViewNewKeySet);
                                        executorServiceNewFixedThreadPool.shutdownNow();
                                        Arrays.fill((int[]) r21, 0);
                                        Arrays.fill((int[]) kh6Var, 0);
                                        Arrays.fill((byte[]) r14, (byte) 0);
                                        Arrays.fill(iArr2, 0);
                                        Arrays.fill(iArr3, 0);
                                        i2 = i9 + 1;
                                        r13 = arrayList2;
                                        r12 = HasNext;
                                        ghVarF = ghVar;
                                        r17 = r14;
                                        jA = j;
                                        gt7Var2 = gt7Var3;
                                        q63Var3 = q63Var3;
                                        A = A;
                                        r15 = executorCompletionService;
                                    }
                                }
                                throw e;
                            }
                        } catch (Throwable th16) {
                            th = th16;
                            r14 = bArr5;
                            r21 = r21;
                        }
                    } catch (eb5 e14) {
                        e = e14;
                        q63Var3 = q63Var;
                        HasNext = r311;
                    }
                } catch (Throwable th17) {
                    th = th17;
                    r8 = iArrCopyOfRange;
                    r16 = r12;
                    r6 = inputStreamW;
                    r35 = r17;
                    r1 = q63Var3;
                }
            } catch (eb5 e15) {
                e = e15;
                kh6Var = iArrCopyOfRange;
                HasNext = r12;
                r14 = r17;
                r21 = r21;
                i9 = i9;
                arrayList2 = arrayList2;
                A = A;
                executorCompletionService = executorCompletionService;
                r14 = bArrArray;
                j = j2;
            } catch (Throwable th18) {
                th = th18;
                kh6Var = iArrCopyOfRange;
                r14 = bArrArray;
                r21 = r21;
            }
            keySetViewNewKeySet.getClass();
            jb5.b(keySetViewNewKeySet);
            executorServiceNewFixedThreadPool.shutdownNow();
            Arrays.fill((int[]) r21, 0);
            Arrays.fill((int[]) kh6Var, 0);
            Arrays.fill((byte[]) r14, (byte) 0);
            Arrays.fill(iArr2, 0);
            Arrays.fill(iArr3, 0);
            throw th;
        }
    }

    public static String C(String str, Object... objArr) {
        int length;
        int length2;
        int iIndexOf;
        String strL;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            length = objArr.length;
            if (i3 >= length) {
                break;
            }
            Object obj = objArr[i3];
            if (obj == null) {
                strL = "null";
            } else {
                try {
                    strL = obj.toString();
                } catch (Exception e2) {
                    String strK = dj7.k(obj.getClass().getName(), "@", Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(strK), (Throwable) e2);
                    strL = eq3.l("<", strK, " threw ", e2.getClass().getName(), ">");
                }
            }
            objArr[i3] = strL;
            i3++;
        }
        StringBuilder sb = new StringBuilder(str.length() + (length * 16));
        int i4 = 0;
        while (true) {
            length2 = objArr.length;
            if (i2 >= length2 || (iIndexOf = str.indexOf("%s", i4)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i4, iIndexOf);
            sb.append(objArr[i2]);
            i2++;
            i4 = iIndexOf + 2;
        }
        sb.append((CharSequence) str, i4, str.length());
        if (i2 < length2) {
            sb.append(" [");
            sb.append(objArr[i2]);
            for (int i5 = i2 + 1; i5 < objArr.length; i5++) {
                sb.append(", ");
                sb.append(objArr[i5]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static void D(long[] jArr) {
        jArr[10] = 0;
        int i2 = 0;
        while (i2 < 10) {
            long j = jArr[i2];
            long j2 = j / 67108864;
            jArr[i2] = j - (j2 << 26);
            int i3 = i2 + 1;
            long j3 = jArr[i3] + j2;
            jArr[i3] = j3;
            long j4 = j3 / 33554432;
            jArr[i3] = j3 - (j4 << 25);
            i2 += 2;
            jArr[i2] = jArr[i2] + j4;
        }
        long j5 = jArr[0];
        long j6 = jArr[10];
        long j7 = j5 + (j6 << 4);
        jArr[0] = j7;
        long j8 = j7 + (j6 << 1);
        jArr[0] = j8;
        long j9 = j8 + j6;
        jArr[0] = j9;
        jArr[10] = 0;
        long j10 = j9 / 67108864;
        jArr[0] = j9 - (j10 << 26);
        jArr[1] = jArr[1] + j10;
    }

    public static void E(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[19];
        I(jArr4, jArr2, jArr3);
        G(jArr4);
        D(jArr4);
        System.arraycopy(jArr4, 0, jArr, 0, 10);
    }

    public static void F(int i2, int i3) {
        String strF;
        if (i2 < 0 || i2 >= i3) {
            if (i2 < 0) {
                strF = vm4.F("%s (%s) must not be negative", "index", Integer.valueOf(i2));
            } else {
                if (i3 < 0) {
                    StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 15);
                    sb.append("negative size: ");
                    sb.append(i3);
                    throw new IllegalArgumentException(sb.toString());
                }
                strF = vm4.F("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i2), Integer.valueOf(i3));
            }
            throw new IndexOutOfBoundsException(strF);
        }
    }

    public static void G(long[] jArr) {
        long j = jArr[8];
        long j2 = jArr[18];
        long j3 = j + (j2 << 4);
        jArr[8] = j3;
        long j4 = j3 + (j2 << 1);
        jArr[8] = j4;
        jArr[8] = j4 + j2;
        long j5 = jArr[7];
        long j6 = jArr[17];
        long j7 = j5 + (j6 << 4);
        jArr[7] = j7;
        long j8 = j7 + (j6 << 1);
        jArr[7] = j8;
        jArr[7] = j8 + j6;
        long j9 = jArr[6];
        long j10 = jArr[16];
        long j11 = j9 + (j10 << 4);
        jArr[6] = j11;
        long j12 = j11 + (j10 << 1);
        jArr[6] = j12;
        jArr[6] = j12 + j10;
        long j13 = jArr[5];
        long j14 = jArr[15];
        long j15 = j13 + (j14 << 4);
        jArr[5] = j15;
        long j16 = j15 + (j14 << 1);
        jArr[5] = j16;
        jArr[5] = j16 + j14;
        long j17 = jArr[4];
        long j18 = jArr[14];
        long j19 = j17 + (j18 << 4);
        jArr[4] = j19;
        long j20 = j19 + (j18 << 1);
        jArr[4] = j20;
        jArr[4] = j20 + j18;
        long j21 = jArr[3];
        long j22 = jArr[13];
        long j23 = j21 + (j22 << 4);
        jArr[3] = j23;
        long j24 = j23 + (j22 << 1);
        jArr[3] = j24;
        jArr[3] = j24 + j22;
        long j25 = jArr[2];
        long j26 = jArr[12];
        long j27 = j25 + (j26 << 4);
        jArr[2] = j27;
        long j28 = j27 + (j26 << 1);
        jArr[2] = j28;
        jArr[2] = j28 + j26;
        long j29 = jArr[1];
        long j30 = jArr[11];
        long j31 = j29 + (j30 << 4);
        jArr[1] = j31;
        long j32 = j31 + (j30 << 1);
        jArr[1] = j32;
        jArr[1] = j32 + j30;
        long j33 = jArr[0];
        long j34 = jArr[10];
        long j35 = j33 + (j34 << 4);
        jArr[0] = j35;
        long j36 = j35 + (j34 << 1);
        jArr[0] = j36;
        jArr[0] = j36 + j34;
    }

    public static void H(long[] jArr, long[] jArr2) {
        long j = jArr2[0];
        long j2 = j * 2;
        long j3 = jArr2[1];
        long j4 = jArr2[2];
        long j5 = jArr2[3];
        long j6 = jArr2[4];
        long j7 = jArr2[5];
        long j8 = jArr2[6];
        long j9 = jArr2[7];
        long j10 = jArr2[8];
        long j11 = jArr2[9];
        long[] jArr3 = {j * j, j2 * j3, ((j * j4) + (j3 * j3)) * 2, ((j * j5) + (j3 * j4)) * 2, (j2 * j6) + (j3 * 4 * j5) + (j4 * j4), ((j * j7) + (j3 * j6) + (j4 * j5)) * 2, ((j3 * 2 * j7) + (j * j8) + (j4 * j6) + (j5 * j5)) * 2, ((j * j9) + (j3 * j8) + (j4 * j7) + (j5 * j6)) * 2, (((((j5 * j7) + (j3 * j9)) * 2) + (j * j10) + (j4 * j8)) * 2) + (j6 * j6), ((j * j11) + (j3 * j10) + (j4 * j9) + (j5 * j8) + (j6 * j7)) * 2, ((((j3 * j11) + (j5 * j9)) * 2) + (j4 * j10) + (j6 * j8) + (j7 * j7)) * 2, ((j4 * j11) + (j5 * j10) + (j6 * j9) + (j7 * j8)) * 2, (((((j5 * j11) + (j7 * j9)) * 2) + (j6 * j10)) * 2) + (j8 * j8), ((j6 * j11) + (j7 * j10) + (j8 * j9)) * 2, ((j7 * 2 * j11) + (j8 * j10) + (j9 * j9)) * 2, ((j8 * j11) + (j9 * j10)) * 2, (j9 * 4 * j11) + (j10 * j10), j10 * 2 * j11, 2 * j11 * j11};
        G(jArr3);
        D(jArr3);
        System.arraycopy(jArr3, 0, jArr, 0, 10);
    }

    public static void I(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr[0] = jArr2[0] * jArr3[0];
        long j = jArr2[0];
        long j2 = jArr3[1] * j;
        long j3 = jArr2[1];
        long j4 = jArr3[0];
        jArr[1] = (j3 * j4) + j2;
        long j5 = jArr2[1];
        long j6 = jArr3[1];
        jArr[2] = (jArr2[2] * j4) + (jArr3[2] * j) + (j5 * 2 * j6);
        long j7 = jArr3[2];
        long j8 = jArr2[2];
        jArr[3] = (jArr2[3] * j4) + (jArr3[3] * j) + (j8 * j6) + (j5 * j7);
        long j9 = jArr3[3];
        long j10 = jArr2[3];
        jArr[4] = (jArr2[4] * j4) + (jArr3[4] * j) + (((j10 * j6) + (j5 * j9)) * 2) + (j8 * j7);
        long j11 = jArr3[4];
        long j12 = (j5 * j11) + (j10 * j7) + (j8 * j9);
        long j13 = jArr2[4];
        jArr[5] = (jArr2[5] * j4) + (jArr3[5] * j) + (j13 * j6) + j12;
        long j14 = jArr3[5];
        long j15 = jArr2[5];
        jArr[6] = (jArr2[6] * j4) + (jArr3[6] * j) + (j13 * j7) + (j8 * j11) + (((j15 * j6) + (j5 * j14) + (j10 * j9)) * 2);
        long j16 = (j15 * j7) + (j8 * j14) + (j13 * j9) + (j10 * j11);
        long j17 = jArr3[6];
        long j18 = (j5 * j17) + j16;
        long j19 = jArr2[6];
        jArr[7] = (jArr2[7] * j4) + (jArr3[7] * j) + (j19 * j6) + j18;
        long j20 = jArr3[7];
        long j21 = (j5 * j20) + (j15 * j9) + (j10 * j14);
        long j22 = jArr2[7];
        long j23 = (((j22 * j6) + j21) * 2) + (j13 * j11);
        jArr[8] = (jArr2[8] * j4) + (jArr3[8] * j) + (j19 * j7) + (j8 * j17) + j23;
        long j24 = (j22 * j7) + (j8 * j20) + (j19 * j9) + (j10 * j17) + (j15 * j11) + (j13 * j14);
        long j25 = jArr3[8];
        long j26 = (j5 * j25) + j24;
        long j27 = jArr2[8];
        jArr[9] = (jArr2[9] * j4) + (j * jArr3[9]) + (j27 * j6) + j26;
        long j28 = (j22 * j9) + (j10 * j20) + (j15 * j14);
        long j29 = jArr3[9];
        long j30 = jArr2[9];
        long j31 = j13 * j17;
        jArr[10] = (j27 * j7) + (j8 * j25) + (j19 * j11) + j31 + (((j6 * j30) + (j5 * j29) + j28) * 2);
        long j32 = j8 * j29;
        long j33 = j7 * j30;
        jArr[11] = j33 + j32 + (j27 * j9) + (j10 * j25) + (j22 * j11) + (j13 * j20) + (j19 * j14) + (j15 * j17);
        long j34 = j10 * j29;
        long j35 = j9 * j30;
        long j36 = j27 * j11;
        jArr[12] = j36 + (j13 * j25) + ((j35 + j34 + (j22 * j14) + (j15 * j20)) * 2) + (j19 * j17);
        long j37 = j13 * j29;
        long j38 = j11 * j30;
        jArr[13] = j38 + j37 + (j27 * j14) + (j15 * j25) + (j22 * j17) + (j19 * j20);
        long j39 = j14 * j30;
        long j40 = j27 * j17;
        jArr[14] = j40 + (j19 * j25) + ((j39 + (j15 * j29) + (j22 * j20)) * 2);
        long j41 = j19 * j29;
        long j42 = j17 * j30;
        jArr[15] = j42 + j41 + (j27 * j20) + (j22 * j25);
        jArr[16] = (((j20 * j30) + (j22 * j29)) * 2) + (j27 * j25);
        jArr[17] = (j25 * j30) + (j27 * j29);
        jArr[18] = j30 * 2 * j29;
    }

    public static void J(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i2 = 0; i2 < 10; i2++) {
            jArr[i2] = jArr2[i2] - jArr3[i2];
        }
    }

    public static byte[] K(long[] jArr) {
        long j;
        int[] iArr;
        int i2;
        int[] iArr2;
        long[] jArrCopyOf = Arrays.copyOf(jArr, 10);
        int i3 = 0;
        int i4 = 0;
        while (true) {
            j = 19;
            iArr = i;
            if (i4 >= 2) {
                break;
            }
            int i5 = 0;
            while (i5 < 9) {
                long j2 = jArrCopyOf[i5];
                int i6 = iArr[i5 & 1];
                int i7 = -((int) (((j2 >> 31) & j2) >> i6));
                jArrCopyOf[i5] = j2 + ((long) (i7 << i6));
                i5++;
                jArrCopyOf[i5] = jArrCopyOf[i5] - ((long) i7);
            }
            long j3 = jArrCopyOf[9];
            int i8 = -((int) (((j3 >> 31) & j3) >> 25));
            jArrCopyOf[9] = j3 + ((long) (i8 << 25));
            jArrCopyOf[0] = jArrCopyOf[0] - (((long) i8) * 19);
            i4++;
        }
        long j4 = jArrCopyOf[0];
        int i9 = -((int) (((j4 >> 31) & j4) >> 26));
        jArrCopyOf[0] = j4 + ((long) (i9 << 26));
        jArrCopyOf[1] = jArrCopyOf[1] - ((long) i9);
        int i10 = 0;
        while (true) {
            iArr2 = h;
            if (i10 >= 2) {
                break;
            }
            int i11 = i3;
            while (i11 < 9) {
                long j5 = jArrCopyOf[i11];
                int i12 = i11 & 1;
                int i13 = i3;
                int i14 = i10;
                int i15 = (int) (j5 >> iArr[i12]);
                jArrCopyOf[i11] = j5 & ((long) iArr2[i12]);
                i11++;
                jArrCopyOf[i11] = jArrCopyOf[i11] + ((long) i15);
                i3 = i13;
                j = j;
                i10 = i14;
            }
            i10++;
        }
        int i16 = i3;
        long j6 = jArrCopyOf[9];
        jArrCopyOf[9] = j6 & 33554431;
        long j7 = (((long) ((int) (j6 >> 25))) * j) + jArrCopyOf[i16];
        jArrCopyOf[i16] = j7;
        int i17 = ~((((int) j7) - 67108845) >> 31);
        for (int i18 = 1; i18 < 10; i18++) {
            int i19 = ~(((int) jArrCopyOf[i18]) ^ iArr2[i18 & 1]);
            int i20 = i19 & (i19 << 16);
            int i21 = i20 & (i20 << 8);
            int i22 = i21 & (i21 << 4);
            int i23 = i22 & (i22 << 2);
            i17 &= (i23 & (i23 << 1)) >> 31;
        }
        jArrCopyOf[i16] = jArrCopyOf[i16] - ((long) (67108845 & i17));
        long j8 = 33554431 & i17;
        jArrCopyOf[1] = jArrCopyOf[1] - j8;
        for (i2 = 2; i2 < 10; i2 += 2) {
            jArrCopyOf[i2] = jArrCopyOf[i2] - ((long) (67108863 & i17));
            int i24 = i2 + 1;
            jArrCopyOf[i24] = jArrCopyOf[i24] - j8;
        }
        for (int i25 = i16; i25 < 10; i25++) {
            jArrCopyOf[i25] = jArrCopyOf[i25] << g[i25];
        }
        byte[] bArr = new byte[32];
        for (int i26 = i16; i26 < 10; i26++) {
            int i27 = f[i26];
            long j9 = bArr[i27];
            long j10 = jArrCopyOf[i26];
            bArr[i27] = (byte) (j9 | (j10 & 255));
            int i28 = i27 + 1;
            bArr[i28] = (byte) (((long) bArr[i28]) | ((j10 >> 8) & 255));
            int i29 = i27 + 2;
            bArr[i29] = (byte) (((long) bArr[i29]) | ((j10 >> 16) & 255));
            int i30 = i27 + 3;
            bArr[i30] = (byte) (((long) bArr[i30]) | ((j10 >> 24) & 255));
        }
        return bArr;
    }

    public static void L(int i2, int i3, int i4) {
        String strN;
        if (i2 < 0 || i3 < i2 || i3 > i4) {
            if (i2 < 0 || i2 > i4) {
                strN = N(i2, i4, "start index");
            } else {
                strN = (i3 < 0 || i3 > i4) ? N(i3, i4, "end index") : vm4.F("end index (%s) must not be less than start index (%s)", Integer.valueOf(i3), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(strN);
        }
    }

    public static void M(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i2 = 0; i2 < 10; i2++) {
            jArr[i2] = jArr2[i2] + jArr3[i2];
        }
    }

    public static String N(int i2, int i3, String str) {
        if (i2 < 0) {
            return vm4.F("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i3 >= 0) {
            return vm4.F("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 15);
        sb.append("negative size: ");
        sb.append(i3);
        throw new IllegalArgumentException(sb.toString());
    }

    public static int a(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 255) | (bArr[i2] << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Serializable b(ji3 ji3Var, li3 li3Var, kv1 kv1Var) throws Throwable {
        ri3 ri3Var;
        lh6 lh6Var;
        oh4 oh4Var;
        CancellationException cancellationException;
        if (kv1Var instanceof ri3) {
            ri3Var = (ri3) kv1Var;
            int i2 = ri3Var.c;
            if ((i2 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                ri3Var.c = i2 - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                ri3Var = new ri3(kv1Var);
            }
        } else {
            ri3Var = new ri3(kv1Var);
        }
        Object obj = ri3Var.b;
        int i3 = ri3Var.c;
        if (i3 == 0) {
            lg7.H(obj);
            lh6 lh6Var2 = new lh6();
            try {
                li3 ti3Var = new ti3(li3Var, lh6Var2);
                ri3Var.a = lh6Var2;
                ri3Var.c = 1;
                Object objT = ji3Var.t(ti3Var, ri3Var);
                yx1 yx1Var = yx1.a;
                if (objT == yx1Var) {
                    return yx1Var;
                }
                return null;
            } catch (Throwable th) {
                th = th;
                lh6Var = lh6Var2;
            }
        } else {
            if (i3 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lh6Var = ri3Var.a;
            try {
                lg7.H(obj);
                return null;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        Throwable th3 = (Throwable) lh6Var.a;
        if ((th3 != null && th3.equals(th)) || ((oh4Var = (oh4) ri3Var.getContext().get(nh4.b)) != null && oh4Var.isCancelled() && (cancellationException = oh4Var.getCancellationException()) != null && cancellationException.equals(th))) {
            throw th;
        }
        if (th3 == null) {
            return th;
        }
        if (th instanceof CancellationException) {
            yc9.a(th3, th);
            throw th3;
        }
        yc9.a(th, th3);
        throw th;
    }

    public static k12 c(Bundle bundle, String str) {
        str.getClass();
        bundle.getClass();
        try {
            int iHashCode = str.hashCode();
            if (iHashCode != -1678407252) {
                if (iHashCode != -543568185) {
                    if (iHashCode == -95037569 && str.equals("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL")) {
                        try {
                            String string = bundle.getString("androidx.credentials.BUNDLE_KEY_REGISTRATION_RESPONSE_JSON");
                            string.getClass();
                            return new f22(bundle, string);
                        } catch (Exception unused) {
                            throw new fs3();
                        }
                    }
                } else if (str.equals("android.credentials.TYPE_PASSWORD_CREDENTIAL")) {
                    return new r12(bundle);
                }
            } else if (str.equals("androidx.credentials.TYPE_DIGITAL_CREDENTIAL")) {
                try {
                    String string2 = bundle.getString("androidx.credentials.BUNDLE_KEY_RESPONSE_JSON");
                    string2.getClass();
                    new Bundle().putString("androidx.credentials.BUNDLE_KEY_RESPONSE_JSON", string2);
                    r12 r12Var = new r12();
                    if (string2.length() != 0) {
                        try {
                            new JSONObject(string2);
                            return r12Var;
                        } catch (Exception unused2) {
                        }
                    }
                    throw new IllegalArgumentException("responseJson must not be empty, and must be a valid JSON");
                } catch (Exception unused3) {
                    throw new fs3();
                }
            }
            throw new fs3();
        } catch (fs3 unused4) {
            n12 n12Var = new n12();
            if (str.length() > 0) {
                return n12Var;
            }
            c6.f("type should not be empty");
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005a  */
    /* JADX WARN: Code duplicated, block: B:33:0x006e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static final Object d(ji3 ji3Var, kv1 kv1Var) {
        aj3 aj3Var;
        lh6 lh6Var;
        u2 e2;
        zi3 zi3Var;
        du9 du9Var = ly8.c;
        if (kv1Var instanceof aj3) {
            aj3Var = (aj3) kv1Var;
            int i2 = aj3Var.d;
            if ((i2 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                aj3Var.d = i2 - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                aj3Var = new aj3(kv1Var);
            }
        } else {
            aj3Var = new aj3(kv1Var);
        }
        Object obj = aj3Var.c;
        int i3 = aj3Var.d;
        if (i3 == 0) {
            lg7.H(obj);
            lh6Var = new lh6();
            lh6Var.a = du9Var;
            zi3 zi3Var2 = new zi3(lh6Var);
            try {
                aj3Var.a = lh6Var;
                aj3Var.b = zi3Var2;
                aj3Var.d = 1;
                Object objT = ji3Var.t(zi3Var2, aj3Var);
                Object obj2 = yx1.a;
                if (objT == obj2) {
                    return obj2;
                }
            } catch (u2 e3) {
                e2 = e3;
                zi3Var = zi3Var2;
                if (e2.a == zi3Var) {
                    throw e2;
                }
                sz8.p(aj3Var.getContext());
            }
        } else {
            if (i3 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            zi3Var = aj3Var.b;
            lh6Var = aj3Var.a;
            try {
                lg7.H(obj);
            } catch (u2 e4) {
                e2 = e4;
                if (e2.a == zi3Var) {
                    throw e2;
                }
                sz8.p(aj3Var.getContext());
            }
        }
        Object obj3 = lh6Var.a;
        if (obj3 != du9Var) {
            return obj3;
        }
        throw new NoSuchElementException("Expected at least one element");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0056  */
    /* JADX WARN: Code duplicated, block: B:30:0x0060  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object e(ji3 ji3Var, kv1 kv1Var) {
        cj3 cj3Var;
        lh6 lh6Var;
        u2 e2;
        bj3 bj3Var;
        if (kv1Var instanceof cj3) {
            cj3Var = (cj3) kv1Var;
            int i2 = cj3Var.d;
            if ((i2 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                cj3Var.d = i2 - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                cj3Var = new cj3(kv1Var);
            }
        } else {
            cj3Var = new cj3(kv1Var);
        }
        Object obj = cj3Var.c;
        int i3 = cj3Var.d;
        if (i3 == 0) {
            lg7.H(obj);
            lh6Var = new lh6();
            bj3 bj3Var2 = new bj3(lh6Var);
            try {
                cj3Var.a = lh6Var;
                cj3Var.b = bj3Var2;
                cj3Var.d = 1;
                Object objT = ji3Var.t(bj3Var2, cj3Var);
                Object obj2 = yx1.a;
                if (objT == obj2) {
                    return obj2;
                }
            } catch (u2 e3) {
                e2 = e3;
                bj3Var = bj3Var2;
                if (e2.a == bj3Var) {
                    throw e2;
                }
                sz8.p(cj3Var.getContext());
            }
        } else {
            if (i3 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            bj3Var = cj3Var.b;
            lh6Var = cj3Var.a;
            try {
                lg7.H(obj);
            } catch (u2 e4) {
                e2 = e4;
                if (e2.a == bj3Var) {
                    throw e2;
                }
                sz8.p(cj3Var.getContext());
            }
        }
        return lh6Var.a;
    }

    public static k17 f(xy6 xy6Var) {
        g17 g17Var;
        xy6Var.getClass();
        String str = xy6Var.a;
        int i2 = xy6Var.b;
        long j = xy6Var.c;
        long j2 = xy6Var.d;
        long j3 = xy6Var.e;
        long j4 = xy6Var.f;
        long j5 = xy6Var.g;
        cy0 cy0Var = xy6Var.h;
        if (cy0Var.equals(oy6.j)) {
            g17Var = new g17("None", 0);
        } else {
            if (!(cy0Var instanceof py6)) {
                q.j();
                return null;
            }
            g17Var = new g17("Zstd", ((py6) cy0Var).j);
        }
        return new k17(str, i2, j, j2, j3, j4, j5, g17Var, xy6Var.i.name(), xy6Var.j, xy6Var.k, xy6Var.l, xy6Var.m);
    }

    public static is4 g(String str) {
        return (str == null || str.length() == 0 || !nq7.Z(str, "_", false)) ? h() : i(ai8.g(str, "_"), ai8.d(str, "_"));
    }

    public static is4 h() {
        h05 h05Var = h05.b;
        h05 h05VarC = h05.c(LocaleList.getDefault());
        int size = h05VarC.a.a.size();
        int i2 = 0;
        while (true) {
            int i3 = 28;
            String str = "en";
            if (i2 >= size) {
                return new is4(str, "US", i3);
            }
            Locale localeB = h05VarC.b(i2);
            if (localeB != null && pe4.d(localeB.getLanguage(), "en")) {
                String language = localeB.getLanguage();
                language.getClass();
                String country = localeB.getCountry();
                country.getClass();
                return new is4(language, country, i3);
            }
            i2++;
        }
    }

    public static is4 i(String str, String str2) {
        Object next;
        str.getClass();
        List listL = l();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listL) {
            if (pe4.d(((is4) obj).a, str)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!pe4.d(((is4) next).b, str2));
        is4 is4Var = (is4) next;
        if (is4Var == null) {
            is4Var = (is4) el1.U0(arrayList);
        }
        return is4Var == null ? h() : is4Var;
    }

    public static Object j(Bundle bundle, String str, Class cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return i6.e(bundle, str, cls);
        }
        Parcelable parcelable = bundle.getParcelable(str);
        if (cls.isInstance(parcelable)) {
            return parcelable;
        }
        return null;
    }

    public static u29 k(Context context) {
        ly8.h(context);
        return new u29(context, new o39());
    }

    public static List l() {
        boolean z = false;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("show_wip_languages", false);
            List listM = m();
            if (z) {
                return el1.n1(listM, new nx(6));
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : listM) {
                if (((is4) obj).e == xi6.Production) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        } catch (ClassCastException unused) {
        }
    }

    public static List m() {
        String str = "zh";
        int i2 = 24;
        int i3 = 28;
        return fl1.A0(h(), new is4(str, "CN", i2), new is4(str, "TW", i2), new is4("fr", "FR", i3), new is4("de", "DE", i3), new is4("in", "ID", i3), new is4("it", "IT", i3), new is4("ja", "JP", i3), new is4("pl", "PL", i3), new is4("pt", "BR", i2), new is4("ru", "RU", i3), new is4("es", "ES", i3), new is4("tr", "TR", i3), new is4("uk", "UA", i3), new is4("vi", "VN", i3));
    }

    public static void n(byte[] bArr, int i2, int i3) {
        bArr[i3] = (byte) (i2 >>> 24);
        bArr[i3 + 1] = (byte) (i2 >>> 16);
        bArr[i3 + 2] = (byte) (i2 >>> 8);
        bArr[i3 + 3] = (byte) i2;
    }

    public static void o(byte[] bArr, int i2, int i3) {
        bArr[i3] = (byte) i2;
        bArr[i3 + 1] = (byte) (i2 >>> 8);
        bArr[i3 + 2] = (byte) (i2 >>> 16);
        bArr[i3 + 3] = (byte) (i2 >>> 24);
    }

    public static void p(byte[] bArr, int[] iArr) {
        int i2 = 0;
        for (int i3 : iArr) {
            o(bArr, i3, i2);
            i2 += 4;
        }
    }

    public static qx8 q(y8 y8Var, ty3 ty3Var, yp4 yp4Var) {
        int i2;
        long j;
        double d2;
        int i3;
        int i4;
        int i5;
        int iCeil = ((un8) y8Var.a).c;
        byte[][] bArrH = jd4.h((byte[][]) ty3Var.a);
        qx8[] qx8VarArr = new qx8[bArrH.length];
        for (int i6 = 0; i6 < bArrH.length; i6++) {
            qx8VarArr[i6] = new qx8(bArrH[i6], 0);
        }
        xp4 xp4Var = new xp4();
        xp4Var.c = yp4Var.a;
        xp4Var.b = yp4Var.b;
        xp4Var.e = yp4Var.e;
        xp4Var.f = 0;
        xp4Var.g = yp4Var.g;
        xp4Var.d = yp4Var.d;
        yp4 yp4Var2 = new yp4(xp4Var);
        while (iCeil > 1) {
            int i7 = 0;
            while (true) {
                i2 = yp4Var2.d;
                j = yp4Var2.b;
                d2 = iCeil / 2;
                int iFloor = (int) Math.floor(d2);
                i3 = yp4Var2.f;
                i4 = yp4Var2.e;
                i5 = yp4Var2.a;
                if (i7 >= iFloor) {
                    break;
                }
                xp4 xp4Var2 = new xp4();
                xp4Var2.c = i5;
                xp4Var2.b = j;
                xp4Var2.e = i4;
                xp4Var2.f = i3;
                xp4Var2.g = i7;
                xp4Var2.d = i2;
                yp4 yp4Var3 = new yp4(xp4Var2);
                int i8 = i7 * 2;
                qx8VarArr[i7] = y(y8Var, qx8VarArr[i8], qx8VarArr[i8 + 1], yp4Var3);
                i7++;
                yp4Var2 = yp4Var3;
            }
            if (iCeil % 2 == 1) {
                qx8VarArr[(int) Math.floor(d2)] = qx8VarArr[iCeil - 1];
            }
            iCeil = (int) Math.ceil(((double) iCeil) / 2.0d);
            xp4 xp4Var3 = new xp4();
            xp4Var3.c = i5;
            xp4Var3.b = j;
            xp4Var3.e = i4;
            xp4Var3.f = i3 + 1;
            xp4Var3.g = yp4Var2.g;
            xp4Var3.d = i2;
            yp4Var2 = new yp4(xp4Var3);
        }
        return qx8VarArr[0];
    }

    public static int r(byte[] bArr, int i2) {
        return (bArr[i2 + 3] << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public static void s(byte[] bArr, int i2, int[] iArr, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            iArr[i3 + i5] = r(bArr, i2);
            i2 += 4;
        }
    }

    public static long t(byte[] bArr, int i2) {
        return ((((long) r(bArr, i2 + 4)) & 4294967295L) << 32) | (((long) r(bArr, i2)) & 4294967295L);
    }

    public static void u(int i2, long j, byte[] bArr) {
        n(bArr, (int) (j >>> 32), i2);
        n(bArr, (int) (j & 4294967295L), i2 + 4);
    }

    public static void v(int i2, long j, byte[] bArr) {
        o(bArr, (int) (4294967295L & j), i2);
        o(bArr, (int) (j >>> 32), i2 + 4);
    }

    public static int w(long j) {
        return (int) ((j - (((long) ((int) (58728449 * j))) * 8380417)) >>> 32);
    }

    public static InputStream x(File file) throws FileNotFoundException {
        if (file instanceof kr7) {
            return wx3.h((kr7) file);
        }
        try {
            return new FileInputStream(file);
        } catch (FileNotFoundException e2) {
            if (k55.j().isRoot()) {
                return wx3.h(new kr7(file));
            }
            throw e2;
        }
    }

    public static qx8 y(y8 y8Var, qx8 qx8Var, qx8 qx8Var2, gx8 gx8Var) {
        gx8 a34Var = gx8Var;
        if (qx8Var == null) {
            f6.n("left == null");
            return null;
        }
        int i2 = qx8Var.a;
        if (qx8Var2 == null) {
            f6.n("right == null");
            return null;
        }
        if (i2 != qx8Var2.a) {
            l0.e("height of both nodes must be equal");
            return null;
        }
        byte[] bArr = (byte[]) y8Var.d;
        va vaVar = (va) y8Var.b;
        byte[] bArrK = ms8.k(bArr);
        if (a34Var instanceof yp4) {
            yp4 yp4Var = (yp4) a34Var;
            xp4 xp4Var = new xp4();
            xp4Var.c = yp4Var.a;
            xp4Var.b = yp4Var.b;
            xp4Var.e = yp4Var.e;
            xp4Var.f = yp4Var.f;
            xp4Var.g = yp4Var.g;
            xp4Var.d = 0;
            a34Var = new yp4(xp4Var);
        } else if (a34Var instanceof a34) {
            a34 a34Var2 = (a34) a34Var;
            z24 z24Var = new z24();
            z24Var.c = a34Var2.a;
            z24Var.b = a34Var2.b;
            z24Var.e = a34Var2.e;
            z24Var.f = a34Var2.f;
            z24Var.d = 0;
            a34Var = new a34(z24Var);
        }
        byte[] bArrA = vaVar.a(bArrK, a34Var.a());
        if (a34Var instanceof yp4) {
            yp4 yp4Var2 = (yp4) a34Var;
            xp4 xp4Var2 = new xp4();
            xp4Var2.c = yp4Var2.a;
            xp4Var2.b = yp4Var2.b;
            xp4Var2.e = yp4Var2.e;
            xp4Var2.f = yp4Var2.f;
            xp4Var2.g = yp4Var2.g;
            xp4Var2.d = 1;
            a34Var = new yp4(xp4Var2);
        } else if (a34Var instanceof a34) {
            a34 a34Var3 = (a34) a34Var;
            z24 z24Var2 = new z24();
            z24Var2.c = a34Var3.a;
            z24Var2.b = a34Var3.b;
            z24Var2.e = a34Var3.e;
            z24Var2.f = a34Var3.f;
            z24Var2.d = 1;
            a34Var = new a34(z24Var2);
        }
        byte[] bArrA2 = vaVar.a(bArrK, a34Var.a());
        if (a34Var instanceof yp4) {
            yp4 yp4Var3 = (yp4) a34Var;
            xp4 xp4Var3 = new xp4();
            xp4Var3.c = yp4Var3.a;
            xp4Var3.b = yp4Var3.b;
            xp4Var3.e = yp4Var3.e;
            xp4Var3.f = yp4Var3.f;
            xp4Var3.g = yp4Var3.g;
            xp4Var3.d = 2;
            a34Var = new yp4(xp4Var3);
        } else if (a34Var instanceof a34) {
            a34 a34Var4 = (a34) a34Var;
            z24 z24Var3 = new z24();
            z24Var3.c = a34Var4.a;
            z24Var3.b = a34Var4.b;
            z24Var3.e = a34Var4.e;
            z24Var3.f = a34Var4.f;
            z24Var3.d = 2;
            a34Var = new a34(z24Var3);
        }
        byte[] bArrA3 = vaVar.a(bArrK, a34Var.a());
        int i3 = ((un8) y8Var.a).a;
        int i4 = i3 * 2;
        byte[] bArr2 = new byte[i4];
        for (int i5 = 0; i5 < i3; i5++) {
            bArr2[i5] = (byte) (jd4.g(qx8Var.b)[i5] ^ bArrA2[i5]);
        }
        for (int i6 = 0; i6 < i3; i6++) {
            bArr2[i6 + i3] = (byte) (jd4.g(qx8Var2.b)[i6] ^ bArrA3[i6]);
        }
        int length = bArrA.length;
        int i7 = vaVar.a;
        if (length != i7) {
            c6.f("wrong key length");
            return null;
        }
        if (i4 == i7 * 2) {
            return new qx8(vaVar.b(1, bArrA, bArr2), i2);
        }
        c6.f("wrong in length");
        return null;
    }

    public static void z(sa1 sa1Var, String str, Set set, final boolean z, mt3 mt3Var) {
        int i2;
        sa1Var.getClass();
        List entries = iu.getEntries();
        int iQ0 = x65.q0(hl1.G0(entries, 10));
        if (iQ0 < 16) {
            iQ0 = 16;
        }
        final LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
        Iterator it = ((z3) entries).iterator();
        while (true) {
            w3 w3Var = (w3) it;
            i2 = 0;
            if (!w3Var.hasNext()) {
                break;
            }
            iu iuVar = (iu) w3Var.next();
            String string = iuVar.toString();
            String displayString$default = iu.toDisplayString$default(iuVar, false, 1, null);
            sk0 backupReq = iuVar.getBackupReq();
            linkedHashMap.put(string, displayString$default + (!backupReq.isPossible() ? eq3.k(" (", sk0.conditionMsg$default(backupReq, null, 1, null), ")") : ""));
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (set.contains(entry.getKey())) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        final LinkedHashMap linkedHashMap3 = new LinkedHashMap(linkedHashMap2);
        s35 s35Var = new s35(sa1Var, R.style.M3AlertDialogTheme, new hv1(sa1Var, R.style.M3AlertDialogTheme), null);
        ((ra) s35Var.b).d = str;
        CharSequence[] charSequenceArr = (CharSequence[]) linkedHashMap.values().toArray(new String[0]);
        Set setKeySet = linkedHashMap.keySet();
        ArrayList arrayList = new ArrayList(hl1.G0(setKeySet, 10));
        Iterator it2 = setKeySet.iterator();
        while (it2.hasNext()) {
            arrayList.add(Boolean.valueOf(set.contains((String) it2.next())));
        }
        s35Var.o(charSequenceArr, el1.r1(arrayList), new DialogInterface.OnMultiChoiceClickListener() { // from class: ku
            @Override // android.content.DialogInterface.OnMultiChoiceClickListener
            public final void onClick(DialogInterface dialogInterface, int i3, boolean z2) {
                dialogInterface.getClass();
                LinkedHashMap linkedHashMap4 = linkedHashMap;
                String str2 = (String) el1.v1(linkedHashMap4.keySet()).get(i3);
                String str3 = (String) linkedHashMap4.get(str2);
                LinkedHashMap linkedHashMap5 = linkedHashMap3;
                if (!z2) {
                } else if (str3 != null) {
                }
                if (z) {
                    ((wa) dialogInterface).f(-1).setEnabled(!linkedHashMap5.isEmpty());
                }
            }
        });
        s35Var.s(R.string.ok, new lu(i2, linkedHashMap3, mt3Var));
        s35Var.q(R.string.cancel, null);
        wa waVarC = s35Var.c();
        waVarC.k.f.setOnHierarchyChangeListener(new mu(linkedHashMap));
        waVarC.show();
    }
}
