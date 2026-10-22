package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Size;
import android.util.SizeF;
import android.util.TypedValue;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.firebase.auth.FirebaseAuth;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class jd4 {
    public static Context a;
    public static Boolean b;
    public static final float[][] c = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};
    public static final float[][] d = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};
    public static final float[] e = {95.047f, 100.0f, 108.883f};
    public static final float[][] f = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};
    public static final int[] g = {R.attr.colorPrimary};
    public static final int[] h = {R.attr.colorPrimaryVariant};

    public static final Long A(fl4 fl4Var, String str) {
        Object bn6Var;
        fl4Var.getClass();
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX == null || (qj4VarX instanceof el4)) {
            return null;
        }
        try {
            bn6Var = Long.valueOf(qj4VarX.l());
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        return (Long) (bn6Var instanceof bn6 ? null : bn6Var);
    }

    public static TypedArray B(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        d(context, attributeSet, i, i2);
        e(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    public static u94 C(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        d(context, attributeSet, i, i2);
        e(context, attributeSet, iArr, i, i2, iArr2);
        return new u94(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public static OutputStream D(jr7 jr7Var) {
        return E(jr7Var);
    }

    public static OutputStream E(File file) throws FileNotFoundException {
        if (file instanceof kr7) {
            return wx3.i((kr7) file);
        }
        try {
            return new FileOutputStream(file, false);
        } catch (FileNotFoundException e2) {
            if (k55.j().isRoot()) {
                return wx3.i(new kr7(file));
            }
            throw e2;
        }
    }

    public static boolean F(Object obj, Set set, Set set2) {
        if (set == null && set2 == null) {
            return false;
        }
        if (set2 == null) {
            return set.contains(obj);
        }
        if (set == null) {
            return !set2.contains(obj);
        }
        return !set2.contains(obj) || set.contains(obj);
    }

    public static void G(sa1 sa1Var, q63 q63Var) {
        q63Var.getClass();
        g00 g00Var = g00.a;
        if (g00.r().hasSystemFeature("android.hardware.telephony")) {
            Intent intentPutExtra = new Intent(sa1Var, (Class<?>) MessagesBackupRestoreActivity.class).putExtra("EXTRA_BACKUP_FILE_PATH", q63Var.v());
            intentPutExtra.getClass();
            sa1Var.startActivity(intentPutExtra);
        } else {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            zn4 zn4Var = zn4.a;
            dj7.y(contextC, "Feature not supported on this device");
        }
    }

    public static final String H(fl4 fl4Var, String str) {
        Object bn6Var;
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX == null || (qj4VarX instanceof el4)) {
            return null;
        }
        try {
            bn6Var = qj4VarX.o();
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        return (String) (bn6Var instanceof bn6 ? null : bn6Var);
    }

    public static r17 I(s17 s17Var) {
        f27 f27Var;
        s17Var.getClass();
        String str = s17Var.a;
        if (nq7.j0(str)) {
            c6.f("SBA root tar extract tarPath is blank");
            return null;
        }
        File file = new File(str);
        if (!file.isAbsolute()) {
            f6.g("SBA root tar extract tarPath must be absolute: ".concat(str));
            return null;
        }
        if (!file.isFile()) {
            f6.g("SBA root tar extract tarPath is not a file: ".concat(str));
            return null;
        }
        String str2 = s17Var.b;
        if (nq7.j0(str2)) {
            c6.f("SBA root tar extract targetDir is blank");
            return null;
        }
        File file2 = new File(str2);
        if (!file2.isAbsolute()) {
            f6.g("SBA root tar extract targetDir must be absolute: ".concat(str2));
            return null;
        }
        int i = s17Var.c;
        if (i == 0) {
            f27Var = f27.Basic;
        } else if (i == 1) {
            f27Var = f27.Fidelity;
        } else {
            if (i != 2) {
                c6.f(fz5.j(i, "Unknown SBA tar restore profile: "));
                return null;
            }
            f27Var = f27.RootFidelity;
        }
        ArrayList arrayList = s17Var.d;
        M("SBA root tar extract includePaths", arrayList);
        return new r17(file, file2, f27Var, arrayList);
    }

    public static byte[] J(int i, long j) {
        byte[] bArr = new byte[i];
        for (int i2 = i - 1; i2 >= 0; i2--) {
            bArr[i2] = (byte) j;
            j >>>= 8;
        }
        return bArr;
    }

    public static final long K(String str) {
        Object bn6Var;
        if (str == null || nq7.j0(str)) {
            return 0L;
        }
        try {
            bn6Var = Long.valueOf(Instant.parse(str).toEpochMilli());
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (bn6Var instanceof bn6) {
            bn6Var = 0L;
        }
        return ((Number) bn6Var).longValue();
    }

    public static final String L(int i, long j) {
        if (j >= 0) {
            ly8.j(i);
            String string = Long.toString(j, i);
            string.getClass();
            return string;
        }
        long j2 = i;
        long j3 = ((j >>> 1) / j2) << 1;
        long j4 = j - (j3 * j2);
        if (j4 >= j2) {
            j4 -= j2;
            j3++;
        }
        ly8.j(i);
        String string2 = Long.toString(j3, i);
        string2.getClass();
        ly8.j(i);
        String string3 = Long.toString(j4, i);
        string3.getClass();
        return string2.concat(string3);
    }

    public static void M(String str, List list) {
        Collection collectionP1;
        if (list != null) {
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    fl1.F0();
                    throw null;
                }
                String str2 = (String) obj;
                if (nq7.j0(str2)) {
                    throw new IllegalArgumentException((str + "[" + i + "] is blank").toString());
                }
                if (uq7.V(str2, "/", false)) {
                    a6.c(i, str, "] must be relative: ", str2);
                    return;
                }
                List listW0 = nq7.w0(str2, new char[]{'/'}, 6);
                if (!listW0.isEmpty()) {
                    Iterator it = listW0.iterator();
                    while (it.hasNext()) {
                        if (pe4.d((String) it.next(), "..")) {
                            a6.c(i, str, "] must not contain '..': ", str2);
                            return;
                        }
                    }
                }
                if (!listW0.isEmpty()) {
                    Iterator it2 = listW0.iterator();
                    while (it2.hasNext()) {
                        if (pe4.d((String) it2.next(), ".")) {
                            a6.c(i, str, "] must not contain '.': ", str2);
                            return;
                        }
                    }
                }
                if (listW0.isEmpty()) {
                    collectionP1 = ov2.a;
                    break;
                }
                ListIterator listIterator = listW0.listIterator(listW0.size());
                while (true) {
                    if (listIterator.hasPrevious()) {
                        if (((String) listIterator.previous()).length() != 0) {
                            collectionP1 = el1.p1(listW0, listIterator.nextIndex() + 1);
                            break;
                        }
                    } else {
                        collectionP1 = ov2.a;
                        break;
                    }
                }
                if (!collectionP1.isEmpty()) {
                    Iterator it3 = collectionP1.iterator();
                    while (it3.hasNext()) {
                        if (((String) it3.next()).length() == 0) {
                            a6.c(i, str, "] contains an empty path component: ", str2);
                            return;
                        }
                    }
                }
                i = i2;
            }
        }
    }

    public static float N() {
        return ((float) Math.pow(0.5689655172413793d, 3.0d)) * 100.0f;
    }

    public static byte[] Q(byte[] bArr) {
        if (bArr.length != 16) {
            c6.f("value must be a block.");
            return null;
        }
        byte[] bArr2 = new byte[16];
        for (int i = 0; i < 16; i++) {
            byte b2 = (byte) ((bArr[i] << 1) & 254);
            bArr2[i] = b2;
            if (i < 15) {
                bArr2[i] = (byte) (((byte) ((bArr[i + 1] >> 7) & 1)) | b2);
            }
        }
        bArr2[15] = (byte) (((byte) ((bArr[0] >> 7) & 135)) ^ bArr2[15]);
        return bArr2;
    }

    public static final int a(char c2) {
        if ('0' <= c2 && c2 < ':') {
            return c2 - '0';
        }
        if ('a' <= c2 && c2 < 'g') {
            return c2 - 'W';
        }
        if ('A' <= c2 && c2 < 'G') {
            return c2 - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c2);
    }

    public static final Bundle b(pw5... pw5VarArr) {
        Bundle bundle = new Bundle(pw5VarArr.length);
        for (pw5 pw5Var : pw5VarArr) {
            String str = (String) pw5Var.a;
            Object obj = pw5Var.b;
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Boolean) {
                bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Byte) {
                bundle.putByte(str, ((Number) obj).byteValue());
            } else if (obj instanceof Character) {
                bundle.putChar(str, ((Character) obj).charValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Number) obj).doubleValue());
            } else if (obj instanceof Float) {
                bundle.putFloat(str, ((Number) obj).floatValue());
            } else if (obj instanceof Integer) {
                bundle.putInt(str, ((Number) obj).intValue());
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Number) obj).longValue());
            } else if (obj instanceof Short) {
                bundle.putShort(str, ((Number) obj).shortValue());
            } else if (obj instanceof Bundle) {
                bundle.putBundle(str, (Bundle) obj);
            } else if (obj instanceof CharSequence) {
                bundle.putCharSequence(str, (CharSequence) obj);
            } else if (obj instanceof Parcelable) {
                bundle.putParcelable(str, (Parcelable) obj);
            } else if (obj instanceof boolean[]) {
                bundle.putBooleanArray(str, (boolean[]) obj);
            } else if (obj instanceof byte[]) {
                bundle.putByteArray(str, (byte[]) obj);
            } else if (obj instanceof char[]) {
                bundle.putCharArray(str, (char[]) obj);
            } else if (obj instanceof double[]) {
                bundle.putDoubleArray(str, (double[]) obj);
            } else if (obj instanceof float[]) {
                bundle.putFloatArray(str, (float[]) obj);
            } else if (obj instanceof int[]) {
                bundle.putIntArray(str, (int[]) obj);
            } else if (obj instanceof long[]) {
                bundle.putLongArray(str, (long[]) obj);
            } else if (obj instanceof short[]) {
                bundle.putShortArray(str, (short[]) obj);
            } else if (obj instanceof Object[]) {
                Class<?> componentType = obj.getClass().getComponentType();
                componentType.getClass();
                if (Parcelable.class.isAssignableFrom(componentType)) {
                    bundle.putParcelableArray(str, (Parcelable[]) obj);
                } else if (String.class.isAssignableFrom(componentType)) {
                    bundle.putStringArray(str, (String[]) obj);
                } else if (CharSequence.class.isAssignableFrom(componentType)) {
                    bundle.putCharSequenceArray(str, (CharSequence[]) obj);
                } else {
                    if (!Serializable.class.isAssignableFrom(componentType)) {
                        d6.j("Illegal value array type ", componentType.getCanonicalName(), " for key \"", str, 34);
                        return null;
                    }
                    bundle.putSerializable(str, (Serializable) obj);
                }
            } else if (obj instanceof Serializable) {
                bundle.putSerializable(str, (Serializable) obj);
            } else if (obj instanceof IBinder) {
                bundle.putBinder(str, (IBinder) obj);
            } else if (obj instanceof Size) {
                bundle.putSize(str, (Size) obj);
            } else {
                if (!(obj instanceof SizeF)) {
                    d6.j("Illegal value type ", obj.getClass().getCanonicalName(), " for key \"", str, 34);
                    return null;
                }
                bundle.putSizeF(str, (SizeF) obj);
            }
        }
        return bundle;
    }

    public static long c(byte[] bArr, int i) {
        long j = 0;
        if (bArr == null) {
            f6.n("in == null");
            return 0L;
        }
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | ((long) (bArr[i2] & 255));
        }
        return j;
    }

    public static void d(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, td6.Y, i, i2);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(1, false);
        typedArrayObtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R.attr.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                f(context, h, "Theme.MaterialComponents");
            }
        }
        f(context, g, "Theme.AppCompat");
    }

    public static void e(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, td6.Y, i, i2);
        boolean z = false;
        if (!typedArrayObtainStyledAttributes.getBoolean(2, false)) {
            typedArrayObtainStyledAttributes.recycle();
            return;
        }
        if (iArr2.length != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
            int length = iArr2.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    typedArrayObtainStyledAttributes2.recycle();
                    z = true;
                    break;
                } else {
                    if (typedArrayObtainStyledAttributes2.getResourceId(iArr2[i3], -1) == -1) {
                        typedArrayObtainStyledAttributes2.recycle();
                        break;
                    }
                    i3++;
                }
            }
        } else if (typedArrayObtainStyledAttributes.getResourceId(0, -1) != -1) {
            z = true;
            break;
        }
        typedArrayObtainStyledAttributes.recycle();
        if (z) {
            return;
        }
        c6.f("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
    }

    public static void f(Context context, int[] iArr, String str) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i = 0; i < iArr.length; i++) {
            if (!typedArrayObtainStyledAttributes.hasValue(i)) {
                typedArrayObtainStyledAttributes.recycle();
                c6.f(eq3.k("The style on this component requires your app theme to be ", str, " (or a descendant)."));
                return;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static byte[] g(byte[] bArr) {
        if (bArr == null) {
            f6.n("in == null");
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static byte[][] h(byte[][] bArr) {
        if (bArr != null) {
            for (byte[] bArr2 : bArr) {
                if (bArr2 != null) {
                }
            }
            byte[][] bArr3 = new byte[bArr.length][];
            for (int i = 0; i < bArr.length; i++) {
                byte[] bArr4 = new byte[bArr[i].length];
                bArr3[i] = bArr4;
                byte[] bArr5 = bArr[i];
                System.arraycopy(bArr5, 0, bArr4, 0, bArr5.length);
            }
            return bArr3;
        }
        f6.n("in has null pointers");
        return null;
    }

    public static void i(int i, byte[] bArr, byte[] bArr2) {
        if (bArr2 == null) {
            f6.n("src == null");
            return;
        }
        if (i < 0) {
            c6.f("offset hast to be >= 0");
            return;
        }
        if (bArr2.length + i > bArr.length) {
            c6.f("src length + offset must not be greater than size of destination");
            return;
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            bArr[i + i2] = bArr2[i2];
        }
    }

    public static h17 j(i17 i17Var) {
        f27 f27Var;
        cy0 py6Var;
        zv1 uy6Var;
        File file;
        i17Var.getClass();
        ArrayList arrayList = i17Var.b;
        String str = i17Var.a;
        if (nq7.j0(str)) {
            c6.f("SBA root create outputPath is blank");
            return null;
        }
        File file2 = new File(str);
        if (!file2.isAbsolute()) {
            f6.g("SBA root create outputPath must be absolute: ".concat(str));
            return null;
        }
        File parentFile = file2.getAbsoluteFile().getParentFile();
        if (parentFile == null) {
            c6.f("SBA root create outputPath has no parent: ".concat(str));
            return null;
        }
        if (!parentFile.exists()) {
            f6.g(xs1.j("SBA root create output parent does not exist: ", parentFile.getPath()));
            return null;
        }
        if (!parentFile.isDirectory()) {
            f6.g(xs1.j("SBA root create output parent is not a directory: ", parentFile.getPath()));
            return null;
        }
        if (arrayList.isEmpty()) {
            c6.f("SBA root create requires at least one entry");
            return null;
        }
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        int i = 0;
        for (Object obj : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            j17 j17Var = (j17) obj;
            String str2 = j17Var.a;
            String str3 = j17Var.b;
            if (nq7.j0(str2)) {
                f6.g(xs1.h(i, "SBA root create entry[", "] name is blank"));
                return null;
            }
            if (nq7.j0(str3)) {
                f6.g(xs1.h(i, "SBA root create entry[", "] sourcePath is blank"));
                return null;
            }
            File file3 = new File(str3);
            if (!file3.isAbsolute()) {
                f6.g(u48.k(i, "SBA root create entry[", "] sourcePath must be absolute: ", str3));
                return null;
            }
            String str4 = j17Var.f;
            if (str4 == null) {
                file = null;
            } else {
                if (nq7.j0(str4)) {
                    f6.g(xs1.h(i, "SBA root create entry[", "] fallbackSourcePath is blank"));
                    return null;
                }
                file = new File(str4);
                if (!file.isAbsolute()) {
                    f6.g(u48.k(i, "SBA root create entry[", "] fallbackSourcePath must be absolute: ", str4));
                    return null;
                }
            }
            File file4 = (file3.exists() || file == null || !file.exists()) ? file3 : file;
            String str5 = j17Var.a;
            boolean z = j17Var.c;
            ArrayList arrayList3 = j17Var.d;
            M("SBA root create entry[" + i + "] includePaths", arrayList3);
            ArrayList arrayList4 = j17Var.e;
            M("SBA root create entry[" + i + "] excludePaths", arrayList4);
            arrayList2.add(new ey6(str5, file4, z, arrayList3, arrayList4));
            i = i2;
        }
        int i3 = i17Var.c;
        if (i3 == 0) {
            f27Var = f27.Basic;
        } else {
            if (i3 != 1) {
                c6.f(fz5.j(i3, "Unknown SBA tar profile: "));
                return null;
            }
            f27Var = f27.Fidelity;
        }
        int i4 = i17Var.d;
        int i5 = i17Var.e;
        if (i4 != 0) {
            if (i4 != 1) {
                c6.f(fz5.j(i4, "Unknown SBA compression method: "));
                return null;
            }
            py6Var = new py6(i5);
        } else {
            if (i5 != 0) {
                f6.g(fz5.j(i5, "Root createSba compressionLevel must be 0 when compression is disabled: "));
                return null;
            }
            py6Var = oy6.j;
        }
        cy0 cy0Var = py6Var;
        int i6 = i17Var.f;
        char[] cArr = i17Var.k;
        if (i6 != 0) {
            if (i6 != 1) {
                c6.f(fz5.j(i6, "Unknown SBA encryption method: "));
                return null;
            }
            if (cArr == null) {
                c6.f("Root createSba AEGIS-256 requires a password");
                return null;
            }
            uy6Var = new uy6(cArr);
        } else {
            if (cArr != null) {
                c6.f("Root createSba password must be null when encryption is disabled");
                return null;
            }
            uy6Var = vy6.m;
        }
        return new h17(file2, arrayList2, f27Var, cy0Var, uy6Var, i17Var.n, i17Var.q);
    }

    public static c12 k(String str, String str2) {
        Exception excA;
        try {
            d22 d22Var = new d22(new cg4(2), null);
            if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_ABORT_ERROR")) {
                excA = od2.a(new t2(0), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_CONSTRAINT_ERROR")) {
                excA = od2.a(new at1(), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_DATA_CLONE_ERROR")) {
                excA = od2.a(new ja2(0), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_DATA_ERROR")) {
                excA = od2.a(new t2(1), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_ENCODING_ERROR")) {
                excA = od2.a(new ew2(0), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_HIERARCHY_REQUEST_ERROR")) {
                excA = od2.a(new r44(0), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_IN_USE_ATTRIBUTE_ERROR")) {
                excA = od2.a(new db4(0), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_CHARACTER_ERROR")) {
                excA = od2.a(new xf4(0), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_MODIFICATION_ERROR")) {
                excA = od2.a(new ew2(1), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_NODE_TYPE_ERROR")) {
                excA = od2.a(new cg4(0), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_STATE_ERROR")) {
                excA = od2.a(new ig4(0), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NAMESPACE_ERROR")) {
                excA = od2.a(new cg4(1), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NETWORK_ERROR")) {
                excA = od2.a(new r44(1), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NO_MODIFICATION_ALLOWED_ERROR")) {
                excA = od2.a(new t2(2), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_ALLOWED_ERROR")) {
                excA = od2.a(new ig4(1), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_FOUND_ERROR")) {
                excA = od2.a(new db4(1), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_READABLE_ERROR")) {
                excA = od2.a(new jo5(0), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_SUPPORTED_ERROR")) {
                excA = od2.a(new ja2(1), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_OPERATION_ERROR")) {
                excA = od2.a(new jo5(1), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_OPT_OUT_ERROR")) {
                excA = od2.a(new ja2(2), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_QUOTA_EXCEEDED_ERROR")) {
                excA = od2.a(new jo5(2), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_READ_ONLY_ERROR")) {
                excA = od2.a(new ig4(2), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_SECURITY_ERROR")) {
                excA = od2.a(new xf4(1), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_SYNTAX_ERROR")) {
                excA = od2.a(new hv7(0), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_TIMEOUT_ERROR")) {
                excA = od2.a(new ew2(2), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_TRANSACTION_INACTIVE_ERROR")) {
                excA = od2.a(new db4(2), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_UNKNOWN_ERROR")) {
                excA = od2.a(new cg4(2), str2, d22Var);
            } else if (str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_VERSION_ERROR")) {
                excA = od2.a(new db4(3), str2, d22Var);
            } else {
                if (!str.equals("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_WRONG_DOCUMENT_ERROR")) {
                    throw new fs3();
                }
                excA = od2.a(new hv7(1), str2, d22Var);
            }
            return (c12) excA;
        } catch (fs3 unused) {
            return new b12(str2, str);
        }
    }

    public static Object l(byte[] bArr, Class cls) throws ClassNotFoundException, IOException {
        String str;
        wx8 wx8Var = new wx8(cls, new ByteArrayInputStream(bArr));
        Object object = wx8Var.readObject();
        if (wx8Var.available() != 0) {
            str = "unexpected data found at end of ObjectInputStream";
        } else {
            if (cls.isInstance(object)) {
                return object;
            }
            str = "unexpected class found in ObjectInputStream";
        }
        y5.m(str);
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006c  */
    /* JADX WARN: Code duplicated, block: B:28:0x006d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0078 A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:13:0x002f, B:25:0x005c, B:29:0x0070, B:31:0x0078, B:33:0x007e, B:35:0x0084, B:38:0x0095, B:39:0x009d, B:40:0x009e, B:41:0x00a5, B:20:0x0047, B:24:0x0052), top: B:58:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x007e A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:13:0x002f, B:25:0x005c, B:29:0x0070, B:31:0x0078, B:33:0x007e, B:35:0x0084, B:38:0x0095, B:39:0x009d, B:40:0x009e, B:41:0x00a5, B:20:0x0047, B:24:0x0052), top: B:58:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0084 A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:13:0x002f, B:25:0x005c, B:29:0x0070, B:31:0x0078, B:33:0x007e, B:35:0x0084, B:38:0x0095, B:39:0x009d, B:40:0x009e, B:41:0x00a5, B:20:0x0047, B:24:0x0052), top: B:58:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x0095 A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:13:0x002f, B:25:0x005c, B:29:0x0070, B:31:0x0078, B:33:0x007e, B:35:0x0084, B:38:0x0095, B:39:0x009d, B:40:0x009e, B:41:0x00a5, B:20:0x0047, B:24:0x0052), top: B:58:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x009e A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:13:0x002f, B:25:0x005c, B:29:0x0070, B:31:0x0078, B:33:0x007e, B:35:0x0084, B:38:0x0095, B:39:0x009d, B:40:0x009e, B:41:0x00a5, B:20:0x0047, B:24:0x0052), top: B:58:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00a6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0092, code lost:
    
        if (r1.c(r11, r0) == r5) goto L37;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x0092 -> B:14:0x0032). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m(defpackage.li3 r8, defpackage.r76 r9, boolean r10, defpackage.kv1 r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jd4.m(li3, r76, boolean, kv1):java.lang.Object");
    }

    public static l17 n(m17 m17Var) {
        f27 f27Var;
        m17Var.getClass();
        String str = m17Var.c;
        String str2 = m17Var.a;
        if (nq7.j0(str2)) {
            c6.f("SBA root extract archivePath is blank");
            return null;
        }
        File file = new File(str2);
        if (!file.isAbsolute()) {
            f6.g("SBA root extract archivePath must be absolute: ".concat(str2));
            return null;
        }
        String str3 = m17Var.b;
        if (nq7.j0(str3)) {
            c6.f("SBA root extract targetDir is blank");
            return null;
        }
        File file2 = new File(str3);
        if (!file2.isAbsolute()) {
            f6.g("SBA root extract targetDir must be absolute: ".concat(str3));
            return null;
        }
        if (str == null) {
            str = null;
        } else if (nq7.j0(str)) {
            c6.f("SBA root extract entryName is blank");
            return null;
        }
        int i = m17Var.d;
        if (i == 0) {
            f27Var = f27.Basic;
        } else if (i == 1) {
            f27Var = f27.Fidelity;
        } else {
            if (i != 2) {
                c6.f(fz5.j(i, "Unknown SBA restore profile: "));
                return null;
            }
            f27Var = f27.RootFidelity;
        }
        f27 f27Var2 = f27Var;
        char[] cArr = m17Var.e;
        ArrayList arrayList = m17Var.f;
        M("SBA root extract includePaths", arrayList);
        return new l17(file, file2, str, f27Var2, cArr, arrayList, m17Var.n);
    }

    public static byte[] o(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            f6.n("src == null");
            return null;
        }
        if (i < 0) {
            c6.f("offset hast to be >= 0");
            return null;
        }
        if (i2 < 0) {
            c6.f("length hast to be >= 0");
            return null;
        }
        if (i + i2 > bArr.length) {
            c6.f("offset + length must not be greater then size of source array");
            return null;
        }
        byte[] bArr2 = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr2[i3] = bArr[i + i3];
        }
        return bArr2;
    }

    public static oa4 p(HashMap map) {
        int size = map.size();
        xg xgVar = q61.d;
        if (size >= 25) {
            return x91.b(new ArrayList(map.keySet()), map, xgVar);
        }
        ArrayList arrayList = new ArrayList(map.keySet());
        Collections.sort(arrayList, xgVar);
        int size2 = arrayList.size();
        Object[] objArr = new Object[size2];
        Object[] objArr2 = new Object[size2];
        int i = 0;
        for (Object obj : arrayList) {
            objArr[i] = obj;
            objArr2[i] = map.get(obj);
            i++;
        }
        return new r50(xgVar, objArr, objArr2);
    }

    public static void q(List list) {
        Iterator it = list.iterator();
        if (it.hasNext()) {
            throw eq3.h(it);
        }
    }

    public static long r(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? cf.d(packageInfo) : packageInfo.versionCode;
    }

    public static int s(float f2) {
        if (f2 < 1.0f) {
            return -16777216;
        }
        if (f2 > 99.0f) {
            return -1;
        }
        float f3 = (f2 + 16.0f) / 116.0f;
        float f4 = f2 > 8.0f ? f3 * f3 * f3 : f2 / 903.2963f;
        float f5 = f3 * f3 * f3;
        boolean z = f5 > 0.008856452f;
        float f6 = z ? f5 : ((f3 * 116.0f) - 16.0f) / 903.2963f;
        if (!z) {
            f5 = ((f3 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = e;
        return xl1.a(f6 * fArr[0], f4 * fArr[1], f5 * fArr[2]);
    }

    public static boolean t(List list) {
        if (list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (nq7.Z((String) it.next(), "INSTALL_FAILED_VERSION_DOWNGRADE", true)) {
                return true;
            }
        }
        return false;
    }

    public static boolean u(int i, long j) {
        if (j >= 0) {
            return j < (1 << i);
        }
        l0.e("index must not be negative");
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0053  */
    /* JADX WARN: Code duplicated, block: B:27:0x005d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0074  */
    /* JADX WARN: Code duplicated, block: B:38:0x0085  */
    /* JADX WARN: Code duplicated, block: B:43:0x007b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x000f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:? A[LOOP:3: B:36:0x007f->B:58:?, LOOP_END, SYNTHETIC] */
    public static boolean v(List list) {
        Iterator it;
        Iterator it2;
        String str;
        list.getClass();
        if (list.isEmpty()) {
            return false;
        }
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            String str2 = (String) it3.next();
            if (!nq7.Z(str2, "Failure", true) && !nq7.Z(str2, "Segmentation fault", true)) {
                if (!list.isEmpty()) {
                    Iterator it4 = list.iterator();
                    while (it4.hasNext()) {
                        if (nq7.Z((String) it4.next(), "Failed to parse APK file", true)) {
                        }
                    }
                    if (list.isEmpty()) {
                        it2 = list.iterator();
                        while (it2.hasNext()) {
                            str = (String) it2.next();
                            if (!nq7.Z(str, "Unable to open file", true)) {
                            }
                        }
                        if (list.isEmpty()) {
                            it = list.iterator();
                            while (it.hasNext()) {
                                if (uq7.V((String) it.next(), "Failed to create install session", true)) {
                                }
                            }
                        }
                    } else if (list.isEmpty()) {
                        it = list.iterator();
                        while (it.hasNext()) {
                            if (uq7.V((String) it.next(), "Failed to create install session", true)) {
                            }
                        }
                    }
                } else if (list.isEmpty()) {
                    it2 = list.iterator();
                    while (it2.hasNext()) {
                        str = (String) it2.next();
                        if (!nq7.Z(str, "Unable to open file", true) || nq7.Z(str, "data/local", true)) {
                        }
                    }
                    if (list.isEmpty()) {
                        it = list.iterator();
                        while (it.hasNext()) {
                            if (uq7.V((String) it.next(), "Failed to create install session", true)) {
                            }
                        }
                    }
                } else if (list.isEmpty()) {
                    it = list.iterator();
                    while (it.hasNext()) {
                        if (uq7.V((String) it.next(), "Failed to create install session", true)) {
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static boolean w(List list) {
        if (list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (nq7.Z((String) it.next(), "Install verification failed", true)) {
                return true;
            }
        }
        return false;
    }

    public static os4 x(ys4 ys4Var, bt3 bt3Var) {
        sl4 sl4Var = sl4.e;
        int iOrdinal = ys4Var.ordinal();
        if (iOrdinal == 0) {
            return new gv7(bt3Var);
        }
        if (iOrdinal == 1) {
            hx6 hx6Var = new hx6();
            hx6Var.a = bt3Var;
            hx6Var.b = sl4Var;
            return hx6Var;
        }
        if (iOrdinal != 2) {
            q.j();
            return null;
        }
        ye8 ye8Var = new ye8();
        ye8Var.a = bt3Var;
        ye8Var.b = sl4Var;
        return ye8Var;
    }

    public static gv7 y(bt3 bt3Var) {
        bt3Var.getClass();
        return new gv7(bt3Var);
    }

    public static float z(int i) {
        float f2 = i / 255.0f;
        return (f2 <= 0.04045f ? f2 / 12.92f : (float) Math.pow((f2 + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    public Task O(FirebaseAuth firebaseAuth, String str, RecaptchaAction recaptchaAction) {
        yo1 yo1Var;
        boolean z = false;
        zq8 zq8Var = new zq8(19, z);
        zq8Var.b = this;
        synchronized (firebaseAuth) {
            yo1Var = firebaseAuth.j;
        }
        if (yo1Var != null) {
            synchronized (yo1Var.a) {
                try {
                    c69 c69Var = (c69) yo1Var.c;
                    if (c69Var != null && c69Var.a()) {
                        z = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                Task taskQ = yo1Var.q(str, Boolean.FALSE, recaptchaAction);
                return taskQ.continueWithTask(zq8Var).continueWithTask(new bs2(str, yo1Var, recaptchaAction, zq8Var, 4));
            }
        }
        Task taskP = P(null);
        x91 x91Var = new x91();
        x91Var.a = recaptchaAction;
        x91Var.b = firebaseAuth;
        x91Var.d = str;
        x91Var.c = zq8Var;
        return taskP.continueWithTask(x91Var);
    }

    public abstract Task P(String str);
}
