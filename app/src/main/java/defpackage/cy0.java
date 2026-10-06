package defpackage;

import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.topjohnwu.superuser.Shell;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.swiftapps.filesystem.File$FileType;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class cy0 implements hw5 {
    public static final xd a = new xd();
    public static rt3 b = new n63(0);
    public static final q34 c = new q34(11);
    public static final ma2 d = new ma2(16);
    public static final lv1 e = new lv1(19);
    public static final y53 f;
    public static final y53 g;
    public static final y53 h;
    public static final y53[] i;

    static {
        y53 y53Var = new y53("GET_CREDENTIAL", 1L);
        f = y53Var;
        y53 y53Var2 = new y53("CREDENTIAL_REGISTRY", 1L);
        y53 y53Var3 = new y53("CLEAR_REGISTRY", 2L);
        y53 y53Var4 = new y53("CLEAR_CREATION_OPTIONS", 1L);
        y53 y53Var5 = new y53("CLEAR_CREDENTIAL_STATE", 1L);
        g = y53Var5;
        y53 y53Var6 = new y53("CREATE_CREDENTIAL", 3L);
        h = y53Var6;
        i = new y53[]{y53Var, y53Var2, y53Var3, y53Var4, y53Var5, y53Var6, new y53("REGISTER_CREATION_OPTIONS", 1L), new y53("REGISTER_EXPORT", 1L), new y53("IMPORT_CREDENTIALS", 1L), new y53("SIGNAL_CREDENTIAL_STATE", 1L), new y53("CLEAR_EXPORT", 1L), new y53("IMPORT_CREDENTIALS_FOR_DEVICE_SETUP", 3L), new y53("EXPORT_CREDENTIALS_TO_DEVICE_SETUP", 3L), new y53("GET_CREDENTIAL_TRANSFER_CAPABILITIES", 3L)};
    }

    public static List A(q63 q63Var, String str, o93 o93Var, boolean z) {
        String[] list;
        List listC0 = null;
        if ((q63Var.n() instanceof File$FileType.JavaFile) && o93Var == o93.NORMAL && (list = q63Var.n().getFile().list()) != null) {
            q98 q98Var = new q98(new me3(list.length == 0 ? rv2.a : new w50(list), false, new sh(5)), new cz(q63Var, 8));
            listC0 = z ? h77.C0(h77.B0(q98Var, 1)) : h77.C0(q98Var);
        }
        if (listC0 != null) {
            return listC0;
        }
        String strC = jr7.c(str);
        String str2 = z ? " -print -quit" : " -print";
        StringBuilder sbP = u48.p("find ", strC, " ! -path ", strC, " ! -name '.fuse*'");
        sbP.append(str2);
        ub ubVarZ = iz1.z(sbP.toString(), o93Var);
        if (!ubVarZ.a()) {
            ArrayList arrayListZ = z(new jr7(str));
            ArrayList arrayList = new ArrayList(hl1.G0(arrayListZ, 10));
            Iterator it = arrayListZ.iterator();
            while (it.hasNext()) {
                arrayList.add(((jr7) it.next()).getPath());
            }
            return arrayList;
        }
        List list2 = (List) ubVarZ.b;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list2) {
            if (!nq7.j0((String) obj)) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public static void B(String str) {
        Log.i("DirectoryCleaner", str);
    }

    public static double[] C(double[] dArr, double[][] dArr2) {
        double d2 = dArr[0];
        double[] dArr3 = dArr2[0];
        double d3 = dArr3[0] * d2;
        double d4 = dArr[1];
        double d5 = (dArr3[1] * d4) + d3;
        double d6 = dArr[2];
        double d7 = (dArr3[2] * d6) + d5;
        double[] dArr4 = dArr2[1];
        double d8 = (dArr4[2] * d6) + (dArr4[1] * d4) + (dArr4[0] * d2);
        double[] dArr5 = dArr2[2];
        return new double[]{d7, d8, (d6 * dArr5[2]) + (d4 * dArr5[1]) + (d2 * dArr5[0])};
    }

    public static String D(String str) {
        str.getClass();
        String strReplace = str.replace('/', '\\');
        strReplace.getClass();
        return nq7.I0(uq7.T(strReplace, ":\\\\", "\\"), '\\');
    }

    public static final byte[] E(InputStream inputStream) throws IOException {
        inputStream.getClass();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(8192, inputStream.available()));
        j(inputStream, byteArrayOutputStream, 8192);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArray.getClass();
        return byteArray;
    }

    public static final dd1 F(dd1 dd1Var, String str) {
        Object next;
        Iterator<E> it = dd1.getEntries().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!pe4.d(((dd1) next).getConstant(), str));
        dd1 dd1Var2 = (dd1) next;
        if (dd1Var == null || dd1Var2 == null || dd1Var == dd1Var2) {
            return dd1Var == null ? dd1Var2 : dd1Var;
        }
        return null;
    }

    public static int G(int i2) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i2) * (-862048943)), 15)) * 461845907);
    }

    public static int H(Object obj) {
        return G(obj == null ? 0 : obj.hashCode());
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final c12 I(CharSequence charSequence, String str) {
        switch (str.hashCode()) {
            case -2055374133:
                if (str.equals("android.credentials.CreateCredentialException.TYPE_USER_CANCELED")) {
                    return new a12(charSequence);
                }
                break;
            case -1166690414:
                if (str.equals("androidx.credentials.TYPE_CREATE_CREDENTIAL_UNSUPPORTED_EXCEPTION")) {
                    return new m12(charSequence);
                }
                break;
            case -580283253:
                if (str.equals("androidx.credentials.TYPE_CREATE_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION")) {
                    return new g12(charSequence);
                }
                break;
            case 1316905704:
                if (str.equals("android.credentials.CreateCredentialException.TYPE_UNKNOWN")) {
                    return new l12(charSequence);
                }
                break;
            case 2092588512:
                if (str.equals("android.credentials.CreateCredentialException.TYPE_INTERRUPTED")) {
                    return new e12(charSequence);
                }
                break;
            case 2131915191:
                if (str.equals("android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS")) {
                    return new f12(charSequence);
                }
                break;
        }
        if (!uq7.V(str, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
            return new b12(charSequence, str);
        }
        int i2 = d22.c;
        String string = charSequence != null ? charSequence.toString() : null;
        try {
            if (!nq7.Z(str, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                throw new fs3();
            }
            int i3 = d22.c;
            return jd4.k(str, string);
        } catch (fs3 unused) {
            return new b12(string, str);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final wv3 J(CharSequence charSequence, String str) {
        switch (str.hashCode()) {
            case -781118336:
                if (str.equals("android.credentials.GetCredentialException.TYPE_UNKNOWN")) {
                    return new cw3(charSequence);
                }
                break;
            case -408155724:
                if (str.equals("androidx.credentials.TYPE_GET_CREDENTIAL_UNSUPPORTED_EXCEPTION")) {
                    return new dw3(charSequence);
                }
                break;
            case -45448328:
                if (str.equals("android.credentials.GetCredentialException.TYPE_INTERRUPTED")) {
                    return new xv3(charSequence);
                }
                break;
            case 580557411:
                if (str.equals("android.credentials.GetCredentialException.TYPE_USER_CANCELED")) {
                    return new sv3(charSequence);
                }
                break;
            case 627896683:
                if (str.equals("android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL")) {
                    return new an5(charSequence);
                }
                break;
            case 1594095913:
                if (str.equals("androidx.credentials.TYPE_GET_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION")) {
                    return new yv3(charSequence);
                }
                break;
        }
        if (!uq7.V(str, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
            return new vv3(charSequence, str);
        }
        int i2 = vw3.b;
        String string = charSequence != null ? charSequence.toString() : null;
        try {
            if (!uq7.V(str, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                throw new fs3();
            }
            int i3 = vw3.b;
            return jb9.o(str, string);
        } catch (fs3 unused) {
            return new vv3(string, str);
        }
    }

    public static byte[] K(byte[] bArr, int i2) throws vk0 {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, 0, bArr.length);
        q48 q48VarC = q48.c(byteBufferWrap);
        int i3 = q48VarC.a;
        if (byteBufferWrap.hasRemaining()) {
            c6.f("Extra data remaining");
            return null;
        }
        if (i3 == i2) {
            return q48VarC.b();
        }
        throw new vk0(String.format("Expected tag: %02x, got %02x", Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    public static String L(dh9 dh9Var) {
        StringBuilder sb = new StringBuilder(dh9Var.f());
        for (int i2 = 0; i2 < dh9Var.f(); i2++) {
            byte bC = dh9Var.c(i2);
            if (bC == 34) {
                sb.append("\\\"");
            } else if (bC == 39) {
                sb.append("\\'");
            } else if (bC != 92) {
                switch (bC) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case XmlPullParser.COMMENT /* 9 */:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case ModuleDescriptor.MODULE_VERSION /* 11 */:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bC < 32 || bC > 126) {
                            sb.append('\\');
                            sb.append((char) (((bC >>> 6) & 3) + 48));
                            sb.append((char) (((bC >>> 3) & 7) + 48));
                            sb.append((char) ((bC & 7) + 48));
                        } else {
                            sb.append((char) bC);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static boolean M(byte b2) {
        return b2 > -65;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0125  */
    /* JADX WARN: Code duplicated, block: B:48:0x0139  */
    /* JADX WARN: Code duplicated, block: B:49:0x013c  */
    public static void e(q63 q63Var) {
        ArrayList<jr7> arrayListZ;
        o93 o93Var;
        int i2;
        String str;
        ArrayList arrayList = new ArrayList();
        Iterator it = h77.x0(new i77(new dm2(q63Var, null))).iterator();
        while (true) {
            v3 v3Var = (v3) it;
            if (!v3Var.hasNext()) {
                boolean z = q63.d;
                b.a("DirectoryCleaner", xs1.i(q63Var, "Failed cleaning directory at "), null);
                int i3 = Shell.UNKNOWN;
                int i4 = 0;
                if (k55.j().isRoot()) {
                    jr7 jr7Var = new jr7(q63Var.v());
                    if (!jr7Var.b("[ -d @@ ]")) {
                        f6.h(jr7Var, "'", "listRecursive: Not a directory '");
                        return;
                    }
                    if (k55.j().isRoot()) {
                        o93Var = o93.ROOT;
                    } else {
                        gv7 gv7Var = qe7.a;
                        if (le7.f() && qe7.b()) {
                            o93Var = o93.SHIZUKU;
                        } else {
                            arrayListZ = z(jr7Var);
                        }
                        i2 = 0;
                        for (jr7 jr7Var2 : arrayListZ) {
                            i2++;
                            boolean z2 = q63.d;
                            String path = jr7Var2.getPath();
                            if (jr7Var2.b("[ -d @@ ]")) {
                                str = "/";
                            } else {
                                str = "";
                            }
                            b.a("DirectoryCleaner", "Remnant #" + i2 + ": " + path + str, null);
                        }
                    }
                    String path2 = jr7Var.getPath();
                    path2.getClass();
                    String strC = jr7.c(path2);
                    ub ubVarZ = iz1.z(eq3.l("find ", strC, " ! -path ", strC, " -print"), o93Var);
                    if (ubVarZ.a()) {
                        List list = (List) ubVarZ.b;
                        ArrayList arrayList2 = new ArrayList();
                        for (Object obj : list) {
                            if (!nq7.j0((String) obj)) {
                                arrayList2.add(obj);
                            }
                        }
                        ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList2, 10));
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            arrayList3.add(new jr7((String) it2.next()));
                        }
                        ArrayList arrayList4 = new ArrayList();
                        for (Object obj2 : arrayList3) {
                            String name = ((jr7) obj2).getName();
                            name.getClass();
                            if (!uq7.V(name, ".fuse", false)) {
                                arrayList4.add(obj2);
                            }
                        }
                        arrayListZ = arrayList4;
                    } else {
                        arrayListZ = z(jr7Var);
                    }
                    i2 = 0;
                    while (r4.hasNext()) {
                        i2++;
                        boolean z3 = q63.d;
                        String path3 = jr7Var2.getPath();
                        if (jr7Var2.b("[ -d @@ ]")) {
                            str = "/";
                        } else {
                            str = "";
                        }
                        b.a("DirectoryCleaner", "Remnant #" + i2 + ": " + path3 + str, null);
                    }
                }
                int i5 = 0;
                for (Object obj3 : arrayList) {
                    int i6 = i5 + 1;
                    if (i5 < 0) {
                        fl1.F0();
                        throw null;
                    }
                    boolean z4 = q63.d;
                    b.a("DirectoryCleaner", fz5.j(i5, "Error#"), (Exception) obj3);
                    i5 = i6;
                }
                ArrayList arrayList5 = new ArrayList(hl1.G0(arrayList, 10));
                for (Object obj4 : arrayList) {
                    int i7 = i4 + 1;
                    if (i4 < 0) {
                        fl1.F0();
                        throw null;
                    }
                    Exception exc = (Exception) obj4;
                    String simpleName = exc.getClass().getSimpleName();
                    String message = exc.getMessage();
                    if (message != null && message.length() != 0) {
                        simpleName = dj7.k(simpleName, ": ", message);
                    }
                    arrayList5.add("Error#" + i4 + ": " + simpleName);
                    i4 = i7;
                }
                throw new RuntimeException("Failed cleaning directory at " + q63Var + ". ERRORS: " + el1.Y0(arrayList5, null, null, null, null, 63));
            }
            try {
                h(q63Var, (o93) v3Var.next());
                return;
            } catch (Exception e2) {
                arrayList.add(e2);
            }
        }
    }

    public static void f(q63 q63Var) {
        e(q63Var);
    }

    public static void g(String str) {
        str.getClass();
        e(new q63(str, 2));
    }

    public static void h(q63 q63Var, o93 o93Var) {
        String strR;
        boolean z = q63.d;
        B("cleanDirWithShell: " + q63Var);
        if (!q63Var.j()) {
            B("Directory doesn't exist at ".concat(q63Var.v()));
            return;
        }
        int i2 = cm2.a[o93Var.ordinal()];
        if (i2 == 1) {
            strR = zv1.r(q63Var.v());
        } else {
            if (i2 != 2 && i2 != 3) {
                q.j();
                return;
            }
            strR = q63Var.v();
            if (uq7.V(strR, "/storage/emulated/", false) && !uq7.V(strR, "/storage/emulated/0/", false)) {
                strR = new File(uq7.T(strR, "/storage/emulated/", "/data/media/")).getPath();
                strR.getClass();
            }
        }
        ub ubVarI = i(strR, o93Var);
        if (A(q63Var, strR, o93Var, true).isEmpty()) {
            return;
        }
        List listA = A(q63Var, strR, o93Var, false);
        B(listA.size() + " remnants: " + el1.Y0(listA, null, null, null, null, 63));
        jr7 jr7Var = new jr7(strR);
        ArrayList arrayList = new ArrayList(hl1.G0(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(new jr7((String) it.next()));
        }
        ArrayList<jr7> arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((jr7) obj).b("[ -f @@ ]")) {
                arrayList2.add(obj);
            }
        }
        for (jr7 jr7Var2 : arrayList2) {
            boolean z2 = q63.d;
            B("Deleting remnant file '" + jr7Var2 + "'");
            if (!jr7Var2.b("rm -rf @@")) {
                f6.h(jr7Var2, "'", "Unable to delete remnant file '");
                return;
            }
        }
        ArrayList arrayList3 = new ArrayList(hl1.G0(listA, 10));
        Iterator it2 = listA.iterator();
        while (it2.hasNext()) {
            arrayList3.add(new jr7((String) it2.next()));
        }
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : arrayList3) {
            if (((jr7) obj2).b("[ -d @@ ]")) {
                arrayList4.add(obj2);
            }
        }
        for (jr7 jr7Var3 : el1.n1(arrayList4, new xg(5))) {
            boolean z3 = q63.d;
            B("Deleting remnant dir '" + jr7Var3 + "'");
            if (!jr7Var3.b("rm -rf @@")) {
                f6.h(jr7Var3, "'", "Unable to delete remnant dir '");
                return;
            }
        }
        ub ubVarI2 = i(strR, o93Var);
        String path = jr7Var.getPath();
        path.getClass();
        if (A(q63Var, path, o93Var, true).isEmpty()) {
            return;
        }
        String path2 = jr7Var.getPath();
        path2.getClass();
        List listA2 = A(q63Var, path2, o93Var, false);
        String strY0 = el1.Y0((List) ubVarI.b, null, null, null, null, 63);
        String strY1 = el1.Y0((List) ubVarI2.b, null, null, null, null, 63);
        String strY2 = el1.Y0(listA2, null, null, null, null, 63);
        StringBuilder sb = new StringBuilder("Failed cleaning dir '");
        sb.append(jr7Var);
        sb.append("'. First output: ");
        sb.append(strY0);
        sb.append(". Last output: ");
        g84.h(eq3.n(sb, strY1, ". Remnants: ", strY2));
    }

    public static final ub i(String str, o93 o93Var) {
        String strC = jr7.c(str);
        StringBuilder sbP = u48.p("rm -rf ", strC, "/.[!.]* ", strC, "/..?* ");
        sbP.append(strC);
        sbP.append("/*");
        return iz1.z(sbP.toString(), o93Var);
    }

    public static final long j(InputStream inputStream, OutputStream outputStream, int i2) throws IOException {
        inputStream.getClass();
        outputStream.getClass();
        byte[] bArr = new byte[i2];
        int i3 = inputStream.read(bArr);
        long j = 0;
        while (i3 >= 0) {
            outputStream.write(bArr, 0, i3);
            j += (long) i3;
            i3 = inputStream.read(bArr);
        }
        return j;
    }

    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:43)
        */
    public static org.bouncycastle.asn1.pkcs.PrivateKeyInfo l(
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r46v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */
    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        */

    public static final mx6 m(ej5 ej5Var) {
        LinkedHashMap linkedHashMap = ej5Var.a;
        wx6 wx6Var = (wx6) linkedHashMap.get(c);
        Bundle bundle = null;
        if (wx6Var == null) {
            c6.f("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
            return null;
        }
        zl8 zl8Var = (zl8) linkedHashMap.get(d);
        if (zl8Var == null) {
            c6.f("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
            return null;
        }
        Bundle bundle2 = (Bundle) linkedHashMap.get(e);
        String str = (String) linkedHashMap.get(g67.f);
        if (str == null) {
            c6.f("CreationExtras must have a value by `VIEW_MODEL_KEY`");
            return null;
        }
        ux6 ux6VarE = wx6Var.getSavedStateRegistry().e();
        rx6 rx6Var = ux6VarE instanceof rx6 ? (rx6) ux6VarE : null;
        if (rx6Var == null) {
            l0.e("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
            return null;
        }
        LinkedHashMap linkedHashMap2 = w(zl8Var).b;
        mx6 mx6Var = (mx6) linkedHashMap2.get(str);
        if (mx6Var != null) {
            return mx6Var;
        }
        rx6Var.b();
        Bundle bundle3 = rx6Var.c;
        if (bundle3 != null && bundle3.containsKey(str)) {
            Bundle bundle4 = bundle3.getBundle(str);
            if (bundle4 == null) {
                bundle4 = jd4.b((pw5[]) Arrays.copyOf(new pw5[0], 0));
            }
            bundle3.remove(str);
            if (bundle3.isEmpty()) {
                rx6Var.c = null;
            }
            bundle = bundle4;
        }
        mx6 mx6VarK = jm1.k(bundle, bundle2);
        linkedHashMap2.put(str, mx6VarK);
        return mx6VarK;
    }

    public static ArrayList n(byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        ArrayList arrayList = new ArrayList();
        while (byteBufferWrap.hasRemaining()) {
            arrayList.add(q48.c(byteBufferWrap));
        }
        return arrayList;
    }

    public static LinkedHashMap o(byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (byteBufferWrap.hasRemaining()) {
            q48 q48VarC = q48.c(byteBufferWrap);
            linkedHashMap.put(Integer.valueOf(q48VarC.a), q48VarC.b());
        }
        return linkedHashMap;
    }

    public static byte[] p(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 11);
    }

    public static final void q(wx6 wx6Var) {
        st4 st4Var = wx6Var.getLifecycle().d;
        if (st4Var != st4.b && st4Var != st4.c) {
            c6.f("Failed requirement.");
        } else if (wx6Var.getSavedStateRegistry().e() == null) {
            rx6 rx6Var = new rx6(wx6Var.getSavedStateRegistry(), (zl8) wx6Var);
            wx6Var.getSavedStateRegistry().h("androidx.lifecycle.internal.SavedStateHandlesProvider", rx6Var);
            wx6Var.getLifecycle().a(new nx6(rx6Var));
        }
    }

    public static byte[] r(List list) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            byte[] bArrA = ((q48) it.next()).a();
            byteArrayOutputStream.write(bArrA, 0, bArrA.length);
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] s(LinkedHashMap linkedHashMap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            byte[] bArrA = new q48((byte[]) entry.getValue(), ((Integer) entry.getKey()).intValue()).a();
            byteArrayOutputStream.write(bArrA, 0, bArrA.length);
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static String t(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 11);
    }

    public static t82 u(byte[] bArr, byte[] bArr2) {
        c0 c0Var = new c0(2);
        c0Var.a(new p82(bArr));
        c0Var.a(new p82(bArr2));
        t82 t82Var = new t82(c0Var);
        t82Var.c = -1;
        return t82Var;
    }

    public static byte[] v(n60 n60Var) {
        if (n60Var.a) {
            c6.f("private key found");
            return null;
        }
        try {
            return pe4.i(n60Var).i();
        } catch (Exception unused) {
            return null;
        }
    }

    public static final sx6 w(zl8 zl8Var) {
        qx6 qx6Var = new qx6();
        n22 defaultViewModelCreationExtras = zl8Var instanceof w24 ? ((w24) zl8Var).getDefaultViewModelCreationExtras() : m22.b;
        defaultViewModelCreationExtras.getClass();
        yl8 viewModelStore = zl8Var.getViewModelStore();
        viewModelStore.getClass();
        return (sx6) new lj3(viewModelStore, qx6Var, defaultViewModelCreationExtras).b(ph6.a(sx6.class), "androidx.lifecycle.internal.SavedStateHandlesVM");
    }

    public static boolean x(String str) {
        ve veVar = jr8.a;
        Set<bf> setUnmodifiableSet = Collections.unmodifiableSet(bf.c);
        HashSet<bf> hashSet = new HashSet();
        for (bf bfVar : setUnmodifiableSet) {
            if (bfVar.a.equals(str)) {
                hashSet.add(bfVar);
            }
        }
        if (hashSet.isEmpty()) {
            g84.h("Unknown feature ".concat(str));
            return false;
        }
        for (bf bfVar2 : hashSet) {
            if (bfVar2.a() || bfVar2.b()) {
                return true;
            }
        }
        return false;
    }

    public static ArrayList z(jr7 jr7Var) {
        if (!jr7Var.b("[ -d @@ ]")) {
            f6.h(jr7Var, "'", "listRecursive: Not a directory '");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        jr7[] jr7VarArrF = jr7Var.listFiles();
        if (jr7VarArrF != null) {
            for (jr7 jr7Var2 : jr7VarArrF) {
                jr7Var2.getClass();
                arrayList.add(jr7Var2);
                if (jr7Var2.b("[ -d @@ ]")) {
                    arrayList.addAll(z(jr7Var2));
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            String name = ((jr7) obj).getName();
            name.getClass();
            if (!uq7.V(name, ".fuse", false)) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public abstract cy0 b(Annotation annotation);

    public abstract s79 c();

    public abstract ee d();

    public abstract boolean y(Annotation annotation);
}
