package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import com.bumptech.glide.a;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.Base64;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class x13 {
    public static final lh9 a = new lh9("opentelemetry-baggage-key", 2);
    public static final Type[] b = new Type[0];
    public static final lh9 c = new lh9("opentelemetry-trace-span-key", 2);
    public static final byte[] d = new byte[0];

    public static int A(int i) {
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 8) {
            return 3;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 32) {
            return 5;
        }
        if (i == 64) {
            return 6;
        }
        if (i == 128) {
            return 7;
        }
        if (i == 256) {
            return 8;
        }
        if (i == 512) {
            return 9;
        }
        c6.f(fz5.j(i, "type needs to be >= FIRST and <= LAST, type="));
        return 0;
    }

    public static boolean B(Exception exc) {
        String message = exc.getMessage();
        if (message == null) {
            message = "";
        }
        return nq7.Z(message, "CompactToken validation failed", false);
    }

    public static boolean C(Throwable th) {
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        return nq7.Z(message, "unexpected end of stream", false);
    }

    public static boolean D(Throwable th) {
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        return nq7.Z(message, "Error during http request", false);
    }

    public static boolean E(Exception exc) {
        String message = exc.getMessage();
        if (message == null) {
            message = "";
        }
        return nq7.Z(message, "File not found", true) || nq7.Z(message, "HTTP 404", true) || nf1.a.a.matcher(message).find();
    }

    public static final boolean F(long j, long j2) {
        if (j >= 0 && j2 >= 0) {
            if (j2 == 0) {
                return j == 0;
            }
            long j3 = j2 - 1;
            if (j3 > 8796093022207L) {
                return false;
            }
            long j4 = j3 * 1048576;
            if (j4 <= j && j - j4 <= 1048576) {
                return true;
            }
        }
        return false;
    }

    public static boolean G(Exception exc) {
        String message = exc.getMessage();
        if (message == null) {
            message = "";
        }
        return nq7.Z(message, "downloadQuotaExceeded", false);
    }

    public static boolean H(Exception exc) {
        exc.getClass();
        for (Throwable th : h77.y0(exc, new ou(3))) {
            if (!(th instanceof SocketException) && !(th instanceof SocketTimeoutException) && !(th instanceof UnknownHostException)) {
                ai6 ai6Var = nf1.a;
                if (!I(th) && !C(th) && !J(th) && !K(th)) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    if (!nq7.Z(message, "NoRouteToHostException", false)) {
                        String message2 = th.getMessage();
                        if (message2 == null) {
                            message2 = "";
                        }
                        if (!nq7.Z(message2, "ENETUNREACH", false)) {
                            String message3 = th.getMessage();
                            if (message3 == null) {
                                message3 = "";
                            }
                            if (!nq7.Z(message3, "Connection reset by peer", true)) {
                                String message4 = th.getMessage();
                                if (nq7.Z(message4 != null ? message4 : "", "Write error:", false) || D(th)) {
                                }
                            }
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static boolean I(Throwable th) {
        th.getClass();
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        return nq7.Z(message, "Software caused connection abort", false);
    }

    public static boolean J(Throwable th) {
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        return nq7.Z(message, "timeout", false);
    }

    public static boolean K(Throwable th) {
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        return nq7.Z(message, "Unable to resolve host", false);
    }

    public static int L(short[][] sArr, byte[] bArr, int i) {
        int length = sArr.length;
        int length2 = sArr[0].length;
        for (int i2 = 0; i2 < length2; i2++) {
            for (int i3 = 0; i3 < length; i3++) {
                sArr[i3][i2] = (short) (bArr[(i2 * length) + i + i3] & 255);
            }
        }
        return length * length2;
    }

    public static int M(short[][][] sArr, byte[] bArr, int i, boolean z) {
        short[][] sArr2 = sArr[0];
        int length = sArr2.length;
        int length2 = sArr2[0].length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            for (int i4 = 0; i4 < length2; i4++) {
                for (short[][] sArr3 : sArr) {
                    if (!z || i3 <= i4) {
                        sArr3[i3][i4] = (short) (bArr[i2 + i] & 255);
                        i2++;
                    }
                }
            }
        }
        return i2;
    }

    public static TypedArray N(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0054  */
    /* JADX WARN: Code duplicated, block: B:41:0x007f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0083  */
    /* JADX WARN: Code duplicated, block: B:46:0x0095  */
    /* JADX WARN: Code duplicated, block: B:47:0x009b  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:53:0x00c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:68:0x0103  */
    /* JADX WARN: Code duplicated, block: B:69:0x010a  */
    /* JADX WARN: Code duplicated, block: B:71:0x011b  */
    /* JADX WARN: Code duplicated, block: B:77:0x012c  */
    /* JADX WARN: Code duplicated, block: B:78:0x0133  */
    /* JADX WARN: Code duplicated, block: B:93:0x00d1 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r12v10, types: [java.lang.Object, java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v17, types: [java.lang.reflect.Type[]] */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r12v3, types: [a24] */
    /* JADX WARN: Type inference failed for: r12v4, types: [a24] */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.lang.reflect.ParameterizedType] */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.lang.reflect.GenericArrayType] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r2v3 */
    public static Type P(Type type, Class cls, Type type2, HashMap map) {
        Type[] lowerBounds;
        Type[] upperBounds;
        Type typeP;
        Type[] upperBounds2;
        Type typeP2;
        Type[] lowerBounds2;
        boolean zEquals;
        int length;
        Type[] typeArr;
        boolean z;
        Type z14Var;
        Type typeP3;
        Type genericComponentType;
        Type typeP4;
        TypeVariable typeVariable;
        TypeVariable typeVariable2 = null;
        do {
            int i = 0;
            if (!(type2 instanceof TypeVariable)) {
                if (!(type2 instanceof Class)) {
                    if (type2 instanceof GenericArrayType) {
                        if (type2 instanceof ParameterizedType) {
                            if (type2 instanceof WildcardType) {
                                break;
                            }
                            type2 = (WildcardType) type2;
                            lowerBounds = type2.getLowerBounds();
                            upperBounds = type2.getUpperBounds();
                            if (lowerBounds.length == 1) {
                                if (upperBounds.length != 1) {
                                    break;
                                }
                                if (typeP instanceof WildcardType) {
                                    upperBounds2 = ((WildcardType) typeP).getUpperBounds();
                                } else {
                                    upperBounds2 = new Type[]{typeP};
                                }
                                type2 = new a24(upperBounds2, b);
                                break;
                            }
                            typeP2 = P(type, cls, lowerBounds[0], map);
                            if (typeP2 != lowerBounds[0]) {
                                break;
                            }
                            if (typeP2 instanceof WildcardType) {
                                lowerBounds2 = ((WildcardType) typeP2).getLowerBounds();
                            } else {
                                lowerBounds2 = new Type[]{typeP2};
                            }
                            type2 = new a24(new Type[]{Object.class}, lowerBounds2);
                            break;
                        }
                        type2 = (ParameterizedType) type2;
                        Type ownerType = type2.getOwnerType();
                        Type typeP5 = P(type, cls, ownerType, map);
                        zEquals = Objects.equals(typeP5, ownerType);
                        Type[] actualTypeArguments = type2.getActualTypeArguments();
                        length = actualTypeArguments.length;
                        typeArr = actualTypeArguments;
                        z = false;
                        while (i < length) {
                            typeP3 = P(type, cls, typeArr[i], map);
                            if (Objects.equals(typeP3, typeArr[i])) {
                                if (!z) {
                                    typeArr = (Type[]) typeArr.clone();
                                    z = true;
                                }
                                typeArr[i] = typeP3;
                            }
                            i++;
                        }
                        if (!zEquals) {
                        }
                        z14Var = new z14(typeP5, (Class) type2.getRawType(), typeArr);
                        type2 = z14Var;
                        break;
                    }
                    type2 = (GenericArrayType) type2;
                    genericComponentType = type2.getGenericComponentType();
                    typeP4 = P(type, cls, genericComponentType, map);
                    if (Objects.equals(genericComponentType, typeP4)) {
                        z14Var = new y14(typeP4);
                        type2 = z14Var;
                        break;
                    }
                    break;
                }
                Class cls2 = (Class) type2;
                if (!cls2.isArray()) {
                    if (type2 instanceof GenericArrayType) {
                        if (type2 instanceof ParameterizedType) {
                            if (type2 instanceof WildcardType) {
                                break;
                            }
                            type2 = (WildcardType) type2;
                            lowerBounds = type2.getLowerBounds();
                            upperBounds = type2.getUpperBounds();
                            if (lowerBounds.length == 1) {
                                if (upperBounds.length != 1 && (typeP = P(type, cls, upperBounds[0], map)) != upperBounds[0]) {
                                    if (typeP instanceof WildcardType) {
                                        upperBounds2 = ((WildcardType) typeP).getUpperBounds();
                                    } else {
                                        upperBounds2 = new Type[]{typeP};
                                    }
                                    type2 = new a24(upperBounds2, b);
                                    break;
                                }
                                break;
                                break;
                            }
                            typeP2 = P(type, cls, lowerBounds[0], map);
                            if (typeP2 != lowerBounds[0]) {
                                break;
                            }
                            if (typeP2 instanceof WildcardType) {
                                lowerBounds2 = ((WildcardType) typeP2).getLowerBounds();
                            } else {
                                lowerBounds2 = new Type[]{typeP2};
                            }
                            type2 = new a24(new Type[]{Object.class}, lowerBounds2);
                            break;
                        }
                        type2 = (ParameterizedType) type2;
                        Type ownerType2 = type2.getOwnerType();
                        Type typeP6 = P(type, cls, ownerType2, map);
                        zEquals = Objects.equals(typeP6, ownerType2);
                        Type[] actualTypeArguments2 = type2.getActualTypeArguments();
                        length = actualTypeArguments2.length;
                        typeArr = actualTypeArguments2;
                        z = false;
                        while (i < length) {
                            typeP3 = P(type, cls, typeArr[i], map);
                            if (Objects.equals(typeP3, typeArr[i])) {
                                if (!z) {
                                    typeArr = (Type[]) typeArr.clone();
                                    z = true;
                                }
                                typeArr[i] = typeP3;
                            }
                            i++;
                        }
                        if (!zEquals && !z) {
                            break;
                        }
                        z14Var = new z14(typeP6, (Class) type2.getRawType(), typeArr);
                        type2 = z14Var;
                        break;
                    }
                    type2 = (GenericArrayType) type2;
                    genericComponentType = type2.getGenericComponentType();
                    typeP4 = P(type, cls, genericComponentType, map);
                    if (Objects.equals(genericComponentType, typeP4)) {
                        break;
                    }
                    z14Var = new y14(typeP4);
                    type2 = z14Var;
                    break;
                }
                Class<?> componentType = cls2.getComponentType();
                Type typeP7 = P(type, cls, componentType, map);
                if (!Objects.equals(componentType, typeP7)) {
                    z14Var = new y14(typeP7);
                    type2 = z14Var;
                    break;
                }
                type2 = cls2;
                break;
            }
            typeVariable = (TypeVariable) type2;
            Type type3 = (Type) map.get(typeVariable);
            Class cls3 = Void.TYPE;
            if (type3 != null) {
                return type3 == cls3 ? type2 : type3;
            }
            map.put(typeVariable, cls3);
            if (typeVariable2 == null) {
                typeVariable2 = typeVariable;
            }
            GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
            Class cls4 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
            if (cls4 == null) {
                type2 = typeVariable;
            } else {
                Type typeT = t(type, cls, cls4);
                if (typeT instanceof ParameterizedType) {
                    TypeVariable[] typeParameters = cls4.getTypeParameters();
                    int length2 = typeParameters.length;
                    while (true) {
                        if (i >= length2) {
                            m0.d();
                            return null;
                        }
                        if (typeVariable.equals(typeParameters[i])) {
                            type2 = ((ParameterizedType) typeT).getActualTypeArguments()[i];
                            break;
                        }
                        i++;
                    }
                } else {
                    type2 = typeVariable;
                }
            }
        } while (type2 != typeVariable);
        if (typeVariable2 != null) {
            map.put(typeVariable2, type2);
        }
        return type2;
    }

    public static final vq Q(h07 h07Var, ny6 ny6Var, rt3 rt3Var) {
        ny6Var.getClass();
        if (h07Var == null && ny6Var == lv1.e) {
            return null;
        }
        return new vq(12, h07Var, rt3Var, ny6Var);
    }

    public static void R(k28 k28Var) {
        Map<String, LabelParams> labelParamsMap;
        if (!V.INSTANCE.getA()) {
            int i = PremiumActivity.V;
            rs9.u(k28Var);
            return;
        }
        LabelsData labelsData = lr4.e;
        Integer numValueOf = (labelsData == null || (labelParamsMap = labelsData.getLabelParamsMap()) == null) ? null : Integer.valueOf(labelParamsMap.size());
        if ((numValueOf != null ? numValueOf.intValue() : 0) < 100) {
            k28Var.startActivityForResult(new Intent(k28Var, (Class<?>) LabelEditActivity.class), 264);
            return;
        }
        b05.l(k28Var, null, k28Var.getString(R.string.maximum_num_labels_limit_message) + " (100/100)", 10);
    }

    public static final void S(ny6 ny6Var, String str) throws zz6 {
        ny6Var.getClass();
        if (ny6Var.isCancellationRequested()) {
            throw new zz6("SBA operation cancelled: ".concat(str), 2);
        }
    }

    public static final String T(fl4 fl4Var) {
        String string = fl4Var.toString();
        StringBuilder sb = new StringBuilder(string.length());
        for (int i = 0; i < string.length(); i++) {
            char cCharAt = string.charAt(i);
            if (cCharAt < ' ' || cCharAt > '~') {
                sb.append("\\u");
                ly8.j(16);
                String string2 = Integer.toString(cCharAt, 16);
                string2.getClass();
                sb.append(nq7.o0(4, string2));
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static String U(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static void V(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 0);
        }
    }

    public static fr9 W(cq9 cq9Var) throws GeneralSecurityException {
        bd9 bd9Var = cq9Var.e;
        if (bd9Var instanceof kg9) {
            return new er9((kg9) bd9Var);
        }
        if (bd9Var instanceof gf9) {
            return new vc9((gf9) bd9Var);
        }
        if (bd9Var instanceof dp9) {
            return new e36((dp9) bd9Var);
        }
        throw new GeneralSecurityException("Unsupported DEM parameters: ".concat(String.valueOf(bd9Var)));
    }

    public static boolean X(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static byte[] a(int[] iArr) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iArr.length * 4);
        byteBufferAllocate.getClass();
        for (int i : iArr) {
            byteBufferAllocate.putInt(i);
        }
        byte[] bArrArray = byteBufferAllocate.array();
        bArrArray.getClass();
        return bArrArray;
    }

    public static byte[] c(String str) {
        str.getClass();
        String strReplace = str.replace('+', '-');
        strReplace.getClass();
        String strReplace2 = strReplace.replace('/', '_');
        strReplace2.getClass();
        byte[] bArrDecode = Base64.getUrlDecoder().decode(eq3.j(strReplace2, uq7.R((4 - (strReplace2.length() % 4)) % 4, "=")));
        bArrDecode.getClass();
        return bArrDecode;
    }

    public static final void d(int i) {
        new Integer(i);
    }

    public static int[] e(byte[] bArr) {
        int length = ((bArr.length + 3) / 4) * 4;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(Arrays.copyOf(bArr, length));
        int i = length / 4;
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = byteBufferWrap.getInt();
        }
        return iArr;
    }

    public static String f(byte[] bArr, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        while (i < i2) {
            sb.append(String.format("%02x ", Byte.valueOf(bArr[i])));
            i++;
        }
        return sb.toString();
    }

    public static Type g(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new y14(g(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new z14(parameterizedType.getOwnerType(), (Class) parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return new y14(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new a24(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static void h(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            c6.f("Primitive type is not allowed");
        }
    }

    public static short[][] i(short[][] sArr) {
        short[][] sArr2 = new short[sArr.length][];
        for (int i = 0; i < sArr.length; i++) {
            sArr2[i] = ms8.l(sArr[i]);
        }
        return sArr2;
    }

    public static short[][][] j(short[][][] sArr) {
        short[][][] sArr2 = (short[][][]) Array.newInstance((Class<?>) short[].class, sArr.length, sArr[0].length);
        for (int i = 0; i < sArr.length; i++) {
            for (int i2 = 0; i2 < sArr[0].length; i2++) {
                sArr2[i][i2] = ms8.l(sArr[i][i2]);
            }
        }
        return sArr2;
    }

    public static final void k(h07 h07Var, i07 i07Var, l07 l07Var, m07 m07Var, String str, long j, Long l) {
        k07 k07Var;
        i07Var.getClass();
        l07Var.getClass();
        m07Var.getClass();
        if (h07Var != null) {
            int i = g07.b[i07Var.ordinal()];
            if (i == 1) {
                int i2 = g07.a[l07Var.ordinal()];
                if (i2 != 1) {
                    k07Var = i2 != 2 ? k07.CreatingArchive : k07.Finalizing;
                } else {
                    k07Var = k07.Preparing;
                }
            } else if (i == 2) {
                k07Var = k07.ListingArchive;
            } else {
                if (i != 3) {
                    q.j();
                    return;
                }
                k07Var = k07.ExtractingArchive;
            }
            h07Var.a(new f07(i07Var, k07Var, l07Var, m07Var, str, j, l));
        }
    }

    public static /* synthetic */ void l(h07 h07Var, i07 i07Var, l07 l07Var, m07 m07Var, String str, long j, Long l, int i) {
        if ((i & 8) != 0) {
            str = null;
        }
        if ((i & 16) != 0) {
            j = 0;
        }
        if ((i & 32) != 0) {
            l = null;
        }
        k(h07Var, i07Var, l07Var, m07Var, str, j, l);
    }

    public static boolean m(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static boolean n(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            return Objects.equals(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return n(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
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
        return Objects.equals(typeVariable.getGenericDeclaration(), typeVariable2.getGenericDeclaration()) && typeVariable.getName().equals(typeVariable2.getName());
    }

    public static short[][][] o(qe6 qe6Var, int i, int i2, int i3, boolean z) {
        byte[] bArr = new byte[z ? (((i2 + 1) * i2) / 2) * i : i * i2 * i3];
        qe6Var.nextBytes(bArr);
        short[][][] sArr = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, i, i2, i3);
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            for (int i6 = 0; i6 < i3; i6++) {
                for (int i7 = 0; i7 < i; i7++) {
                    if (!z || i5 <= i6) {
                        sArr[i7][i5][i6] = (short) (bArr[i4] & 255);
                        i4++;
                    }
                }
            }
        }
        return sArr;
    }

    public static short[][] p(qe6 qe6Var, int i, int i2) {
        byte[] bArr = new byte[i * i2];
        qe6Var.nextBytes(bArr);
        short[][] sArr = (short[][]) Array.newInstance((Class<?>) Short.TYPE, i, i2);
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                sArr[i4][i3] = (short) (bArr[(i3 * i) + i4] & 255);
            }
        }
        return sArr;
    }

    public static int q(Context context, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId != 0 ? i : i2;
    }

    public static byte[] r(short[][] sArr) {
        int length = sArr.length;
        int length2 = sArr[0].length;
        byte[] bArr = new byte[length * length2];
        for (int i = 0; i < length2; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                bArr[(i * length) + i2] = (byte) sArr[i2][i];
            }
        }
        return bArr;
    }

    public static byte[] s(short[][][] sArr, boolean z) {
        int length = sArr.length;
        short[][] sArr2 = sArr[0];
        int length2 = sArr2.length;
        int length3 = sArr2[0].length;
        byte[] bArr = new byte[z ? (((length2 + 1) * length2) / 2) * length : length * length2 * length3];
        int i = 0;
        for (int i2 = 0; i2 < length2; i2++) {
            for (int i3 = 0; i3 < length3; i3++) {
                for (short[][] sArr3 : sArr) {
                    if (!z || i2 <= i3) {
                        bArr[i] = (byte) sArr3[i2][i3];
                        i++;
                    }
                }
            }
        }
        return bArr;
    }

    public static Type t(Type type, Class cls, Class cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i = 0; i < length; i++) {
                Class<?> cls3 = interfaces[i];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return t(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<?> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return t(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static nn1 v(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        nn1 nn1VarA;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i2 = typedValue.type;
            if (i2 >= 28 && i2 <= 31) {
                return new nn1(null, null, typedValue.data);
            }
            try {
                nn1VarA = nn1.a(typedArray.getResourceId(i, 0), theme, typedArray.getResources());
            } catch (Exception e) {
                Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
                nn1VarA = null;
            }
            if (nn1VarA != null) {
                return nn1VarA;
            }
        }
        return new nn1(null, null, 0);
    }

    public static Class w(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return (Class) ((ParameterizedType) type).getRawType();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance((Class<?>) w(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return w(((WildcardType) type).getUpperBounds()[0]);
        }
        y5.i("Expected a Class, ParameterizedType, or GenericArrayType, but <", type, "> is of type ", type == null ? "null" : type.getClass().getName());
        return null;
    }

    public static Type x(Type type, Class cls, Class cls2) {
        if (type instanceof WildcardType) {
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        if (cls2.isAssignableFrom(cls)) {
            return P(type, cls, t(type, cls, cls2), new HashMap());
        }
        throw new IllegalArgumentException(cls + " is not the same as or a subtype of " + cls2);
    }

    public static final void y(ox1 ox1Var, Throwable th) {
        Throwable runtimeException;
        Iterator it = sx1.a.iterator();
        while (it.hasNext()) {
            try {
                ((tb) it.next()).j(th);
            } catch (Throwable th2) {
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    yc9.a(runtimeException, th);
                }
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, runtimeException);
            }
        }
        try {
            yc9.a(th, new uk2(ox1Var));
        } catch (Throwable unused) {
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        try {
            threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
        } catch (Throwable unused2) {
        }
    }

    public static boolean z(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public void b(Context context, yx3 yx3Var) {
    }

    public void O(Context context, a aVar, mi6 mi6Var) {
    }
}
