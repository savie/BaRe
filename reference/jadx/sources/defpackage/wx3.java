package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.system.Os;
import android.view.View;
import android.widget.ImageView;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.google.firebase.FirebaseApp;
import com.topjohnwu.superuser.Shell;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import okhttp3.ResponseBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class wx3 {
    public static final du9 c;
    public static final du9 d;
    public static kd7 f;
    public static final byte[] a = new byte[0];
    public static final byte[] b = new byte[1];
    public static final byte[][] e = {new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new byte[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new byte[]{-32, -21, 122, 124, 59, 65, -72, -82, 22, 86, -29, -6, -15, -97, -60, 106, -38, 9, -115, -21, -100, 50, -79, -3, -122, 98, 5, 22, 95, 73, -72, 0}, new byte[]{95, -100, -107, -68, -93, 80, -116, 36, -79, -48, -79, 85, -100, -125, -17, 91, 4, 68, 92, -60, 88, 28, -114, -122, -40, 34, 78, -35, -48, -97, 17, 87}, new byte[]{-20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 127}, new byte[]{-19, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 127}, new byte[]{-18, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 127}};

    static {
        int i = 2;
        c = new du9("NONE", i);
        d = new du9("PENDING", i);
    }

    public static final ow8 B(ni4 ni4Var, p77 p77Var) {
        p77Var.getClass();
        zh8 zh8VarE = p77Var.e();
        if (zh8VarE instanceof k26) {
            return ow8.POLY_OBJ;
        }
        if (pe4.d(zh8VarE, er7.g)) {
            return ow8.LIST;
        }
        if (!pe4.d(zh8VarE, fr7.g)) {
            return ow8.OBJ;
        }
        p77 p77VarD = d(p77Var.i(0), ni4Var.b);
        zh8 zh8VarE2 = p77VarD.e();
        if ((zh8VarE2 instanceof y56) || pe4.d(zh8VarE2, t77.g)) {
            return ow8.MAP;
        }
        ni4Var.a.getClass();
        throw bb9.c(p77VarD);
    }

    public static void C(long j, byte[] bArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            bArr[i + i3] = (byte) (255 & j);
            j >>= 8;
        }
    }

    public static final wy6 D(Integer num, String str) {
        wy6 wy6Var;
        wy6 wy6Var2;
        wy6 wy6Var3;
        wy6[] wy6VarArrValues = wy6.values();
        int length = wy6VarArrValues.length;
        int i = 0;
        while (true) {
            wy6Var = null;
            if (i >= length) {
                wy6Var2 = null;
                break;
            }
            wy6Var2 = wy6VarArrValues[i];
            if (pe4.d(wy6Var2.name(), str)) {
                break;
            }
            i++;
        }
        if (wy6Var2 != null) {
            return wy6Var2;
        }
        if (num != null) {
            int iIntValue = num.intValue();
            if (iIntValue == 0) {
                wy6Var3 = wy6.None;
            } else if (iIntValue != 4) {
                wy6Var3 = iIntValue != 5 ? wy6.None : wy6.Aegis128X2;
            } else {
                wy6Var3 = wy6.Aegis256;
            }
            wy6Var = wy6Var3;
        }
        return wy6Var == null ? wy6.None : wy6Var;
    }

    public static void E(CheckableImageButton checkableImageButton, CharSequence charSequence) {
        if (!checkableImageButton.isFocusable()) {
            charSequence = null;
        }
        checkableImageButton.setTooltipText(charSequence);
    }

    public static BigInteger G(byte[] bArr) {
        return new BigInteger(1, bArr);
    }

    public static void H(long[] jArr, long[] jArr2, int i) {
        int i2 = -i;
        for (int i3 = 0; i3 < 10; i3++) {
            int i4 = (int) jArr[i3];
            int i5 = (((int) jArr2[i3]) ^ i4) & i2;
            jArr[i3] = i4 ^ i5;
            jArr2[i3] = ((int) jArr2[i3]) ^ i5;
        }
    }

    public static byte[] I(int i, BigInteger bigInteger) throws GeneralSecurityException {
        if (bigInteger.signum() == -1) {
            c6.f("integer must be nonnegative");
            return null;
        }
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == i) {
            return byteArray;
        }
        int i2 = i + 1;
        if (byteArray.length > i2) {
            m0.h("integer too large");
            return null;
        }
        if (byteArray.length != i2) {
            byte[] bArr = new byte[i];
            System.arraycopy(byteArray, 0, bArr, i - byteArray.length, byteArray.length);
            return bArr;
        }
        if (byteArray[0] == 0) {
            return Arrays.copyOfRange(byteArray, 1, byteArray.length);
        }
        m0.h("integer too large");
        return null;
    }

    public static byte[] J(BigInteger bigInteger) {
        if (bigInteger.signum() != -1) {
            return bigInteger.toByteArray();
        }
        c6.f("n must not be negative");
        return null;
    }

    public static void a(StringBuilder sb, Object obj, mt3 mt3Var) {
        if (mt3Var != null) {
            sb.append((CharSequence) mt3Var.invoke(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            sb.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            sb.append(((Character) obj).charValue());
        } else {
            sb.append((CharSequence) obj.toString());
        }
    }

    public static void b(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = drawable.mutate();
            if (colorStateList == null || !colorStateList.isStateful()) {
                drawable.setTintList(colorStateList);
            } else {
                int[] drawableState = textInputLayout.getDrawableState();
                int[] drawableState2 = checkableImageButton.getDrawableState();
                int length = drawableState.length;
                int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
                System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
                drawable.setTintList(ColorStateList.valueOf(colorStateList.getColorForState(iArrCopyOf, colorStateList.getDefaultColor())));
            }
            if (mode != null) {
                drawable.setTintMode(mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public static void c(long j, nw0 nw0Var, int i, ArrayList arrayList, int i2, int i3, ArrayList arrayList2) {
        int i4;
        int i5;
        ArrayList arrayList3;
        long j2;
        int i6;
        int i7 = i;
        ArrayList arrayList4 = arrayList;
        ArrayList arrayList5 = arrayList2;
        if (i2 >= i3) {
            c6.f("Failed requirement.");
            return;
        }
        for (int i8 = i2; i8 < i3; i8++) {
            if (((hy0) arrayList4.get(i8)).d() < i7) {
                c6.f("Failed requirement.");
                return;
            }
        }
        hy0 hy0Var = (hy0) arrayList.get(i2);
        hy0 hy0Var2 = (hy0) arrayList4.get(i3 - 1);
        if (i7 == hy0Var.d()) {
            int iIntValue = ((Number) arrayList5.get(i2)).intValue();
            int i9 = i2 + 1;
            hy0 hy0Var3 = (hy0) arrayList4.get(i9);
            i4 = i9;
            i5 = iIntValue;
            hy0Var = hy0Var3;
        } else {
            i4 = i2;
            i5 = -1;
        }
        if (hy0Var.i(i7) == hy0Var2.i(i7)) {
            int iMin = Math.min(hy0Var.d(), hy0Var2.d());
            int i10 = 0;
            for (int i11 = i7; i11 < iMin && hy0Var.i(i11) == hy0Var2.i(i11); i11++) {
                i10++;
            }
            long j3 = (nw0Var.b / 4) + j + 2 + ((long) i10) + 1;
            nw0Var.U(-i10);
            nw0Var.U(i5);
            int i12 = i7 + i10;
            while (i7 < i12) {
                nw0Var.U(hy0Var.i(i7) & 255);
                i7++;
            }
            if (i4 + 1 == i3) {
                if (i12 == ((hy0) arrayList4.get(i4)).d()) {
                    nw0Var.U(((Number) arrayList5.get(i4)).intValue());
                    return;
                } else {
                    l0.e("Check failed.");
                    return;
                }
            }
            nw0 nw0Var2 = new nw0();
            nw0Var.U(((int) ((nw0Var2.b / 4) + j3)) * (-1));
            c(j3, nw0Var2, i12, arrayList4, i4, i3, arrayList5);
            nw0Var.B(nw0Var2);
            return;
        }
        int i13 = 1;
        for (int i14 = i4 + 1; i14 < i3; i14++) {
            if (((hy0) arrayList4.get(i14 - 1)).i(i7) != ((hy0) arrayList4.get(i14)).i(i7)) {
                i13++;
            }
        }
        long j4 = (nw0Var.b / 4) + j + 2 + ((long) (i13 * 2));
        nw0Var.U(i13);
        nw0Var.U(i5);
        for (int i15 = i4; i15 < i3; i15++) {
            int i16 = ((hy0) arrayList4.get(i15)).i(i7);
            if (i15 == i4 || i16 != ((hy0) arrayList4.get(i15 - 1)).i(i7)) {
                nw0Var.U(i16 & 255);
            }
        }
        nw0 nw0Var3 = new nw0();
        int i17 = i4;
        while (i17 < i3) {
            byte bI = ((hy0) arrayList4.get(i17)).i(i7);
            int i18 = i17 + 1;
            int i19 = i18;
            while (true) {
                if (i19 >= i3) {
                    i19 = i3;
                    break;
                } else if (bI != ((hy0) arrayList4.get(i19)).i(i7)) {
                    break;
                } else {
                    i19++;
                }
            }
            if (i18 == i19 && i7 + 1 == ((hy0) arrayList4.get(i17)).d()) {
                nw0Var.U(((Number) arrayList5.get(i17)).intValue());
                arrayList3 = arrayList5;
                j2 = j4;
                i6 = i19;
            } else {
                nw0Var.U(((int) ((nw0Var3.b / 4) + j4)) * (-1));
                arrayList3 = arrayList5;
                j2 = j4;
                i6 = i19;
                c(j2, nw0Var3, i7 + 1, arrayList, i17, i6, arrayList3);
                arrayList4 = arrayList;
            }
            j4 = j2;
            i17 = i6;
            arrayList5 = arrayList3;
        }
        nw0Var.B(nw0Var3);
    }

    public static final p77 d(p77 p77Var, ma2 ma2Var) {
        p77Var.getClass();
        ma2Var.getClass();
        if (!pe4.d(p77Var.e(), s77.g)) {
            return p77Var.isInline() ? d(p77Var.i(0), ma2Var) : p77Var;
        }
        xh8.n(p77Var);
        return p77Var;
    }

    public static Type e(Type type) {
        if (!Collection.class.isAssignableFrom(Collection.class)) {
            c6.b();
            return null;
        }
        Type typeG = yh8.g(type, Collection.class, yh8.c(type, Collection.class, Collection.class), new LinkedHashSet());
        if (typeG instanceof WildcardType) {
            typeG = ((WildcardType) typeG).getUpperBounds()[0];
        }
        return typeG instanceof ParameterizedType ? ((ParameterizedType) typeG).getActualTypeArguments()[0] : Object.class;
    }

    public static ImageView.ScaleType f(int i) {
        if (i == 0) {
            return ImageView.ScaleType.FIT_XY;
        }
        if (i == 1) {
            return ImageView.ScaleType.FIT_START;
        }
        if (i == 2) {
            return ImageView.ScaleType.FIT_CENTER;
        }
        if (i == 3) {
            return ImageView.ScaleType.FIT_END;
        }
        if (i != 5) {
            return i != 6 ? ImageView.ScaleType.CENTER : ImageView.ScaleType.CENTER_INSIDE;
        }
        return ImageView.ScaleType.CENTER_CROP;
    }

    public static boolean g(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type2 instanceof GenericArrayType ? g(((Class) type).getComponentType(), ((GenericArrayType) type2).getGenericComponentType()) : type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            return g(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType instanceof vh8 ? ((vh8) parameterizedType).c : parameterizedType.getActualTypeArguments(), parameterizedType2 instanceof vh8 ? ((vh8) parameterizedType2).c : parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof Class) {
                return g(((Class) type2).getComponentType(), ((GenericArrayType) type).getGenericComponentType());
            }
            if (type2 instanceof GenericArrayType) {
                return g(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    public static InputStream h(kr7 kr7Var) throws Throwable {
        byte[] bArr = ce7.a;
        if (kr7Var.b("[ -d @@ ]") || !kr7Var.b("[ -r @@ ]")) {
            throw new FileNotFoundException("No such file or directory: " + kr7Var.getPath());
        }
        File file = null;
        try {
            try {
                final File fileCreateTempFile = File.createTempFile("libsu-fifo-", null);
                fileCreateTempFile.delete();
                Os.mkfifo(fileCreateTempFile.getPath(), 420);
                try {
                    int i = Shell.UNKNOWN;
                    k55.j().execTask(new lq0(kr7Var, fileCreateTempFile));
                    InputStream inputStream = (InputStream) Shell.EXECUTOR.submit(new Callable() { // from class: be7
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return new FileInputStream(fileCreateTempFile);
                        }
                    }).get(250L, TimeUnit.MILLISECONDS);
                    fileCreateTempFile.delete();
                    return inputStream;
                } catch (Exception e2) {
                    e = e2;
                    if (e instanceof FileNotFoundException) {
                        throw ((FileNotFoundException) e);
                    }
                    Throwable cause = e.getCause();
                    if (cause instanceof FileNotFoundException) {
                        throw ((FileNotFoundException) cause);
                    }
                    throw ((FileNotFoundException) new FileNotFoundException("Cannot open fifo").initCause(e));
                } catch (Throwable th) {
                    th = th;
                    file = fileCreateTempFile;
                    if (file != null) {
                        file.delete();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public static OutputStream i(kr7 kr7Var) throws Throwable {
        byte[] bArr = ce7.a;
        if (kr7Var.b("[ -d @@ ]")) {
            throw new FileNotFoundException(kr7Var.getPath() + " is not a file but a directory");
        }
        if (!kr7Var.b("[ -b @@ ]")) {
            kr7Var.b("[ -c @@ ]");
        }
        if (!kr7Var.b("echo -n > @@")) {
            throw new FileNotFoundException("Failed to clear file " + kr7Var.getPath());
        }
        String str = " > ";
        File file = null;
        try {
            try {
                File fileCreateTempFile = File.createTempFile("libsu-fifo-", null);
                fileCreateTempFile.delete();
                Os.mkfifo(fileCreateTempFile.getPath(), 420);
                try {
                    int i = Shell.UNKNOWN;
                    k55.j().execTask(new jw6(fileCreateTempFile, str, kr7Var));
                    OutputStream outputStream = (OutputStream) Shell.EXECUTOR.submit(new la7(fileCreateTempFile, 1)).get(250L, TimeUnit.MILLISECONDS);
                    fileCreateTempFile.delete();
                    return outputStream;
                } catch (Exception e2) {
                    e = e2;
                    if (e instanceof FileNotFoundException) {
                        throw ((FileNotFoundException) e);
                    }
                    Throwable cause = e.getCause();
                    if (cause instanceof FileNotFoundException) {
                        throw ((FileNotFoundException) cause);
                    }
                    throw ((FileNotFoundException) new FileNotFoundException("Cannot open fifo").initCause(e));
                } catch (Throwable th) {
                    th = th;
                    file = fileCreateTempFile;
                    if (file != null) {
                        file.delete();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public static long j(byte[] bArr, int i, int i2) {
        if (i2 > 8) {
            c6.f("Can't read more than eight bytes into a long value");
            return 0L;
        }
        long j = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            j |= (((long) bArr[i + i3]) & 255) << (i3 * 8);
        }
        return j;
    }

    public static final do4 k(do4 do4Var) {
        do4Var.getClass();
        return do4Var.d().c() ? do4Var : new rp5(do4Var);
    }

    public static Class l(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return (Class) ((ParameterizedType) type).getRawType();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance((Class<?>) l(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return l(((WildcardType) type).getUpperBounds()[0]);
        }
        y5.i("Expected a Class, ParameterizedType, or GenericArrayType, but <", type, "> is of type ", type == null ? "null" : type.getClass().getName());
        return null;
    }

    public static final boolean n(Collection collection) {
        collection.getClass();
        if (collection.isEmpty()) {
            return false;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (((iu) it.next()) != iu.APP) {
                return true;
            }
        }
        return false;
    }

    public static final boolean o(Collection collection) {
        collection.getClass();
        return collection.contains(iu.APP);
    }

    public static final boolean p(Collection collection) {
        collection.getClass();
        return collection.contains(iu.DATA);
    }

    public static final boolean q(Collection collection) {
        collection.getClass();
        return collection.contains(iu.EXPANSION);
    }

    public static final boolean r(Collection collection) {
        collection.getClass();
        return collection.contains(iu.EXTDATA);
    }

    public static final boolean s(Collection collection) {
        collection.getClass();
        return collection.contains(iu.MEDIA);
    }

    public static int t(int i, Object obj) {
        return (i * 37) + (obj != null ? obj.hashCode() : 0);
    }

    public static short u(int i) {
        return (short) ((i - (((short) (62209 * i)) * 3329)) >> 16);
    }

    public static final void v() {
        try {
            if (f == null) {
                FirebaseApp firebaseApp = FirebaseApp.getInstance();
                firebaseApp.getClass();
                kd7 kd7Var = (kd7) ((o92) ((zg3) firebaseApp.get(zg3.class))).o.get();
                kd7Var.getClass();
                f = kd7Var;
            }
            kd7 kd7Var2 = f;
            if (kd7Var2 == null) {
                pe4.F("sharedSessionRepository");
                throw null;
            }
            if (kd7Var2.i) {
                if (kd7Var2 != null) {
                    kd7Var2.b();
                } else {
                    pe4.F("sharedSessionRepository");
                    throw null;
                }
            }
        } catch (Exception unused) {
        }
    }

    public static nu5 w(hy0... hy0VarArr) {
        int i;
        if (hy0VarArr.length == 0) {
            return new nu5(new hy0[0], new int[]{0, -1});
        }
        ArrayList arrayList = new ArrayList(new p40(hy0VarArr, false));
        if (arrayList.size() > 1) {
            Collections.sort(arrayList);
        }
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList2.add(-1);
        }
        int length = hy0VarArr.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            hy0 hy0Var = hy0VarArr[i3];
            int i5 = i4 + 1;
            int size2 = arrayList.size();
            int size3 = arrayList.size();
            if (size2 < 0) {
                c6.f(xs1.h(size2, "fromIndex (0) is greater than toIndex (", ")."));
                return null;
            }
            if (size2 > size3) {
                a6.d(dj7.j("toIndex (", size2, ") is greater than size (", ").", size3));
                return null;
            }
            int i6 = size2 - 1;
            int i7 = 0;
            while (true) {
                if (i7 > i6) {
                    i = -(i7 + 1);
                    break;
                }
                i = (i7 + i6) >>> 1;
                int iN = ms8.n((Comparable) arrayList.get(i), hy0Var);
                if (iN >= 0) {
                    if (iN <= 0) {
                        break;
                    }
                    i6 = i - 1;
                } else {
                    i7 = i + 1;
                }
            }
            arrayList2.set(i, Integer.valueOf(i4));
            i3++;
            i4 = i5;
        }
        if (((hy0) arrayList.get(0)).d() <= 0) {
            c6.f("the empty byte string is not a supported option");
            return null;
        }
        int i8 = 0;
        while (i8 < arrayList.size()) {
            hy0 hy0Var2 = (hy0) arrayList.get(i8);
            int i9 = i8 + 1;
            int i10 = i9;
            while (i10 < arrayList.size()) {
                hy0 hy0Var3 = (hy0) arrayList.get(i10);
                hy0Var3.getClass();
                hy0Var2.getClass();
                if (!hy0Var3.l(0, hy0Var2, hy0Var2.d())) {
                    break;
                }
                if (hy0Var3.d() == hy0Var2.d()) {
                    y5.l(hy0Var3, "duplicate option: ");
                    return null;
                }
                if (((Number) arrayList2.get(i10)).intValue() > ((Number) arrayList2.get(i8)).intValue()) {
                    arrayList.remove(i10);
                    ((Number) arrayList2.remove(i10)).intValue();
                } else {
                    i10++;
                }
            }
            i8 = i9;
        }
        nw0 nw0Var = new nw0();
        c(0L, nw0Var, 0, arrayList, 0, arrayList.size(), arrayList2);
        int i11 = (int) (nw0Var.b / 4);
        int[] iArr = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            iArr[i12] = nw0Var.readInt();
        }
        return new nu5((hy0[]) Arrays.copyOf(hy0VarArr, hy0VarArr.length), iArr);
    }

    public static byte[] x(ResponseBody responseBody, int i) throws EOFException {
        responseBody.getClass();
        if (i < 0) {
            c6.f("expectedBytes must be >= 0");
            return null;
        }
        long jH = responseBody.h();
        if (jH >= 0 && jH != i) {
            throw new EOFException("MEGA HTTP body size mismatch: expected=" + i + " actual=" + jH);
        }
        byte[] bArr = new byte[i];
        try {
            responseBody.m().readFully(bArr);
            return bArr;
        } catch (EOFException e2) {
            EOFException eOFException = new EOFException(fz5.j(i, "MEGA HTTP body ended early: expected="));
            eOFException.initCause(e2);
            throw eOFException;
        }
    }

    public static void y(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int[] drawableState = textInputLayout.getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
        int colorForState = colorStateList.getColorForState(iArrCopyOf, colorStateList.getDefaultColor());
        Drawable drawableMutate = drawable.mutate();
        drawableMutate.setTintList(ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(drawableMutate);
    }

    public static void z(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean zHasOnClickListeners = checkableImageButton.hasOnClickListeners();
        boolean z = onLongClickListener != null;
        boolean z2 = zHasOnClickListeners || z;
        checkableImageButton.setFocusable(z2);
        checkableImageButton.setClickable(zHasOnClickListeners);
        checkableImageButton.setPressable(zHasOnClickListeners);
        checkableImageButton.setLongClickable(z);
        checkableImageButton.setImportantForAccessibility(z2 ? 1 : 2);
    }

    public abstract void A(Object obj, float f2);

    public abstract long F();

    public abstract float m(Object obj);
}
