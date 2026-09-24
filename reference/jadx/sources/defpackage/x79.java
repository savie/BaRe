package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import com.nimbusds.jwt.proc.DefaultJWTClaimsVerifier;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.xmlpull.v1.XmlPullParser;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x79 implements e89 {
    public static final int[] j = new int[0];
    public static final Unsafe k = q89.g();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final o69 e;
    public final boolean f;
    public final int[] g;
    public final int h;
    public final int i;

    public x79(int[] iArr, Object[] objArr, int i, int i2, o69 o69Var, int[] iArr2, int i3, int i4, cz4 cz4Var) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.f = o69Var instanceof k79;
        this.g = iArr2;
        this.h = i3;
        this.i = i4;
        this.e = o69Var;
    }

    public static long D(Object obj, long j2) {
        return ((Long) q89.m(obj, j2)).longValue();
    }

    public static void H(Object obj) {
        if (I(obj)) {
            return;
        }
        c6.f("Mutating immutable message: ".concat(String.valueOf(obj)));
    }

    public static boolean I(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof k79) {
            return ((k79) obj).s();
        }
        return true;
    }

    public static Field n(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sbP = u48.p("Field ", str, " for ", name, " not found. Known fields are ");
            sbP.append(string);
            throw new RuntimeException(sbP.toString(), e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:123:0x0253  */
    /* JADX WARN: Code duplicated, block: B:124:0x0256  */
    /* JADX WARN: Code duplicated, block: B:127:0x0273  */
    /* JADX WARN: Code duplicated, block: B:129:0x0278  */
    /* JADX WARN: Code duplicated, block: B:166:0x0331  */
    /* JADX WARN: Code duplicated, block: B:181:0x0385  */
    public static x79 o(d89 d89Var, cz4 cz4Var) {
        int i;
        int iCharAt;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int[] iArr;
        int i7;
        int i8;
        char cCharAt;
        int i9;
        int i10;
        char cCharAt2;
        int i11;
        char cCharAt3;
        int i12;
        char cCharAt4;
        int i13;
        char cCharAt5;
        int i14;
        char cCharAt6;
        int i15;
        char cCharAt7;
        int i16;
        int i17;
        int i18;
        int i19;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i20;
        int i21;
        Field fieldN;
        int i22;
        char cCharAt8;
        int i23;
        int i24;
        int i25;
        Object obj;
        Field fieldN2;
        int i26;
        Object obj2;
        Field fieldN3;
        int i27;
        char cCharAt9;
        int i28;
        char cCharAt10;
        int i29;
        char cCharAt11;
        int i30;
        char cCharAt12;
        if (!(d89Var instanceof d89)) {
            e6.d();
            return null;
        }
        String str = d89Var.b;
        int length = str.length();
        int i31 = 55296;
        if (str.charAt(0) >= 55296) {
            int i32 = 1;
            while (true) {
                i = i32 + 1;
                if (str.charAt(i32) < 55296) {
                    break;
                }
                i32 = i;
            }
        } else {
            i = 1;
        }
        int i33 = i + 1;
        int iCharAt2 = str.charAt(i);
        if (iCharAt2 >= 55296) {
            int i34 = iCharAt2 & 8191;
            int i35 = 13;
            while (true) {
                i30 = i33 + 1;
                cCharAt12 = str.charAt(i33);
                if (cCharAt12 < 55296) {
                    break;
                }
                i34 |= (cCharAt12 & 8191) << i35;
                i35 += 13;
                i33 = i30;
            }
            iCharAt2 = i34 | (cCharAt12 << i35);
            i33 = i30;
        }
        if (iCharAt2 == 0) {
            i4 = 0;
            i6 = 0;
            iCharAt = 0;
            i3 = 0;
            i5 = 0;
            i8 = 0;
            iArr = j;
            i7 = 0;
        } else {
            int i36 = i33 + 1;
            int iCharAt3 = str.charAt(i33);
            if (iCharAt3 >= 55296) {
                int i37 = iCharAt3 & 8191;
                int i38 = 13;
                while (true) {
                    i15 = i36 + 1;
                    cCharAt7 = str.charAt(i36);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i37 |= (cCharAt7 & 8191) << i38;
                    i38 += 13;
                    i36 = i15;
                }
                iCharAt3 = i37 | (cCharAt7 << i38);
                i36 = i15;
            }
            int i39 = i36 + 1;
            int iCharAt4 = str.charAt(i36);
            if (iCharAt4 >= 55296) {
                int i40 = iCharAt4 & 8191;
                int i41 = 13;
                while (true) {
                    i14 = i39 + 1;
                    cCharAt6 = str.charAt(i39);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i40 |= (cCharAt6 & 8191) << i41;
                    i41 += 13;
                    i39 = i14;
                }
                iCharAt4 = i40 | (cCharAt6 << i41);
                i39 = i14;
            }
            int i42 = i39 + 1;
            int iCharAt5 = str.charAt(i39);
            if (iCharAt5 >= 55296) {
                int i43 = iCharAt5 & 8191;
                int i44 = 13;
                while (true) {
                    i13 = i42 + 1;
                    cCharAt5 = str.charAt(i42);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i43 |= (cCharAt5 & 8191) << i44;
                    i44 += 13;
                    i42 = i13;
                }
                iCharAt5 = i43 | (cCharAt5 << i44);
                i42 = i13;
            }
            int i45 = i42 + 1;
            int iCharAt6 = str.charAt(i42);
            if (iCharAt6 >= 55296) {
                int i46 = iCharAt6 & 8191;
                int i47 = 13;
                while (true) {
                    i12 = i45 + 1;
                    cCharAt4 = str.charAt(i45);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt4 & 8191) << i47;
                    i47 += 13;
                    i45 = i12;
                }
                iCharAt6 = i46 | (cCharAt4 << i47);
                i45 = i12;
            }
            int i48 = i45 + 1;
            iCharAt = str.charAt(i45);
            if (iCharAt >= 55296) {
                int i49 = iCharAt & 8191;
                int i50 = 13;
                while (true) {
                    i11 = i48 + 1;
                    cCharAt3 = str.charAt(i48);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt3 & 8191) << i50;
                    i50 += 13;
                    i48 = i11;
                }
                iCharAt = i49 | (cCharAt3 << i50);
                i48 = i11;
            }
            int i51 = i48 + 1;
            int iCharAt7 = str.charAt(i48);
            if (iCharAt7 >= 55296) {
                int i52 = iCharAt7 & 8191;
                int i53 = 13;
                while (true) {
                    i10 = i51 + 1;
                    cCharAt2 = str.charAt(i51);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i52 |= (cCharAt2 & 8191) << i53;
                    i53 += 13;
                    i51 = i10;
                }
                iCharAt7 = i52 | (cCharAt2 << i53);
                i51 = i10;
            }
            int i54 = i51 + 1;
            if (str.charAt(i51) >= 55296) {
                while (true) {
                    i9 = i54 + 1;
                    if (str.charAt(i54) < 55296) {
                        break;
                    }
                    i54 = i9;
                }
                i54 = i9;
            }
            int i55 = i54 + 1;
            int iCharAt8 = str.charAt(i54);
            if (iCharAt8 >= 55296) {
                int i56 = iCharAt8 & 8191;
                int i57 = 13;
                while (true) {
                    i2 = i55 + 1;
                    cCharAt = str.charAt(i55);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i56 |= (cCharAt & 8191) << i57;
                    i57 += 13;
                    i55 = i2;
                }
                iCharAt8 = i56 | (cCharAt << i57);
            } else {
                i2 = i55;
            }
            int[] iArr2 = new int[iCharAt8 + iCharAt7 + iCharAt3];
            int i58 = (iCharAt3 << 1) + iCharAt4;
            int i59 = iCharAt7;
            i3 = iCharAt5;
            i4 = i59;
            i5 = iCharAt6;
            i6 = i58;
            iArr = iArr2;
            i7 = iCharAt3;
            i33 = i2;
            i8 = iCharAt8;
        }
        Unsafe unsafe = k;
        Object[] objArr = d89Var.c;
        Class<?> cls = d89Var.a.getClass();
        int i60 = 1;
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr2 = new Object[iCharAt << 1];
        int i61 = i8 + i4;
        int i62 = i61;
        int i63 = i8;
        int i64 = 0;
        int i65 = 0;
        while (i33 < length) {
            int i66 = i33 + 1;
            int iCharAt9 = str.charAt(i33);
            if (iCharAt9 >= i31) {
                int i67 = iCharAt9 & 8191;
                int i68 = i66;
                int i69 = 13;
                while (true) {
                    i29 = i68 + 1;
                    cCharAt11 = str.charAt(i68);
                    i16 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i67 |= (cCharAt11 & 8191) << i69;
                    i69 += 13;
                    i68 = i29;
                    length = i16;
                }
                iCharAt9 = i67 | (cCharAt11 << i69);
                i17 = i29;
            } else {
                i16 = length;
                i17 = i66;
            }
            int i70 = i17 + 1;
            int iCharAt10 = str.charAt(i17);
            Object[] objArr3 = objArr;
            char c = 55296;
            if (iCharAt10 >= 55296) {
                int i71 = iCharAt10 & 8191;
                int i72 = 13;
                while (true) {
                    i28 = i70 + 1;
                    cCharAt10 = str.charAt(i70);
                    if (cCharAt10 < c) {
                        break;
                    }
                    i71 |= (cCharAt10 & 8191) << i72;
                    i72 += 13;
                    i70 = i28;
                    c = 55296;
                }
                iCharAt10 = i71 | (cCharAt10 << i72);
                i70 = i28;
            }
            int i73 = iCharAt10 & 255;
            int i74 = iCharAt9;
            if ((iCharAt10 & 1024) != 0) {
                iArr[i65] = i64;
                i65++;
            }
            int[] iArr4 = iArr3;
            if (i73 >= 51) {
                int i75 = i70 + 1;
                int iCharAt11 = str.charAt(i70);
                char c2 = 55296;
                if (iCharAt11 >= 55296) {
                    int i76 = iCharAt11 & 8191;
                    int i77 = 13;
                    while (true) {
                        i27 = i75 + 1;
                        cCharAt9 = str.charAt(i75);
                        if (cCharAt9 < c2) {
                            break;
                        }
                        i76 |= (cCharAt9 & 8191) << i77;
                        i77 += 13;
                        i75 = i27;
                        c2 = 55296;
                    }
                    iCharAt11 = i76 | (cCharAt9 << i77);
                    i75 = i27;
                }
                int i78 = i73 - 51;
                i20 = i75;
                if (i78 == 9 || i78 == 17) {
                    int i79 = i60;
                    i24 = i6 + 1;
                    objArr2[((i64 / 3) << i79) + i79] = objArr3[i6];
                } else {
                    if (i78 == 12) {
                        int i80 = i60;
                        if (dj7.a(d89Var.a(), i80) || (iCharAt10 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
                            i24 = i6 + 1;
                            objArr2[((i64 / 3) << i80) + i80] = objArr3[i6];
                        }
                    }
                    i25 = iCharAt11 << 1;
                    obj = objArr3[i25];
                    if (obj instanceof Field) {
                        fieldN2 = (Field) obj;
                    } else {
                        fieldN2 = n(cls, (String) obj);
                        objArr3[i25] = fieldN2;
                        iArr[i62] = i64;
                        i62++;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldN2);
                    i26 = i25 + 1;
                    obj2 = objArr3[i26];
                    if (obj2 instanceof Field) {
                        fieldN3 = (Field) obj2;
                    } else {
                        fieldN3 = n(cls, (String) obj2);
                        objArr3[i26] = fieldN3;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldN3);
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i21 = 0;
                    i60 = 1;
                    i18 = i7;
                }
                i6 = i24;
                i25 = iCharAt11 << 1;
                obj = objArr3[i25];
                if (obj instanceof Field) {
                    fieldN2 = (Field) obj;
                } else {
                    fieldN2 = n(cls, (String) obj);
                    objArr3[i25] = fieldN2;
                    iArr[i62] = i64;
                    i62++;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldN2);
                i26 = i25 + 1;
                obj2 = objArr3[i26];
                if (obj2 instanceof Field) {
                    fieldN3 = (Field) obj2;
                } else {
                    fieldN3 = n(cls, (String) obj2);
                    objArr3[i26] = fieldN3;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldN3);
                iObjectFieldOffset = iObjectFieldOffset4;
                i21 = 0;
                i60 = 1;
                i18 = i7;
            } else {
                int i81 = i6 + 1;
                Field fieldN4 = n(cls, (String) objArr3[i6]);
                if (i73 == 9 || i73 == 17) {
                    i18 = i7;
                    objArr2[((i64 / 3) << 1) + 1] = fieldN4.getType();
                } else {
                    if (i73 == 27 || i73 == 49) {
                        i18 = i7;
                        i23 = i6 + 2;
                        objArr2[((i64 / 3) << 1) + 1] = objArr3[i81];
                    } else if (i73 == 12 || i73 == 30 || i73 == 44) {
                        i18 = i7;
                        if (d89Var.a() == 1 || (iCharAt10 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
                            i23 = i6 + 2;
                            objArr2[((i64 / 3) << 1) + 1] = objArr3[i81];
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldN4);
                        if ((iCharAt10 & 4096) != 0 || i73 > 17) {
                            i60 = 1;
                            iObjectFieldOffset2 = 1048575;
                            i20 = i70;
                            i6 = i19;
                            i21 = 0;
                        } else {
                            int i82 = i70 + 1;
                            int iCharAt12 = str.charAt(i70);
                            if (iCharAt12 >= 55296) {
                                int i83 = iCharAt12 & 8191;
                                int i84 = 13;
                                while (true) {
                                    i22 = i82 + 1;
                                    cCharAt8 = str.charAt(i82);
                                    if (cCharAt8 < 55296) {
                                        break;
                                    }
                                    i83 |= (cCharAt8 & 8191) << i84;
                                    i84 += 13;
                                    i82 = i22;
                                }
                                iCharAt12 = i83 | (cCharAt8 << i84);
                                i82 = i22;
                            }
                            i60 = 1;
                            int i85 = (iCharAt12 / 32) + (i18 << 1);
                            Object obj3 = objArr3[i85];
                            if (obj3 instanceof Field) {
                                fieldN = (Field) obj3;
                            } else {
                                fieldN = n(cls, (String) obj3);
                                objArr3[i85] = fieldN;
                            }
                            int i86 = i82;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldN);
                            i21 = iCharAt12 % 32;
                            i6 = i19;
                            i20 = i86;
                        }
                    } else {
                        if (i73 == 50) {
                            int i87 = i63 + 1;
                            iArr[i63] = i64;
                            int i88 = (i64 / 3) << 1;
                            int i89 = i6 + 2;
                            objArr2[i88] = objArr3[i81];
                            if ((iCharAt10 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
                                objArr2[i88 + 1] = objArr3[i89];
                                i18 = i7;
                                i63 = i87;
                                i19 = i6 + 3;
                            } else {
                                i18 = i7;
                                i19 = i89;
                                i63 = i87;
                            }
                        } else {
                            i18 = i7;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldN4);
                        if ((iCharAt10 & 4096) != 0) {
                            i60 = 1;
                            iObjectFieldOffset2 = 1048575;
                            i20 = i70;
                            i6 = i19;
                            i21 = 0;
                        } else {
                            i60 = 1;
                            iObjectFieldOffset2 = 1048575;
                            i20 = i70;
                            i6 = i19;
                            i21 = 0;
                        }
                    }
                    i19 = i23;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldN4);
                    if ((iCharAt10 & 4096) != 0) {
                        i60 = 1;
                        iObjectFieldOffset2 = 1048575;
                        i20 = i70;
                        i6 = i19;
                        i21 = 0;
                    } else {
                        i60 = 1;
                        iObjectFieldOffset2 = 1048575;
                        i20 = i70;
                        i6 = i19;
                        i21 = 0;
                    }
                }
                i19 = i81;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldN4);
                if ((iCharAt10 & 4096) != 0) {
                    i60 = 1;
                    iObjectFieldOffset2 = 1048575;
                    i20 = i70;
                    i6 = i19;
                    i21 = 0;
                } else {
                    i60 = 1;
                    iObjectFieldOffset2 = 1048575;
                    i20 = i70;
                    i6 = i19;
                    i21 = 0;
                }
            }
            int i90 = i64 + 1;
            iArr4[i64] = i74;
            int i91 = i64 + 2;
            iArr4[i90] = ((iCharAt10 & 512) != 0 ? 536870912 : 0) | ((iCharAt10 & 256) != 0 ? 268435456 : 0) | ((iCharAt10 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED : 0) | (i73 << 20) | iObjectFieldOffset;
            i64 += 3;
            iArr4[i91] = (i21 << 20) | iObjectFieldOffset2;
            objArr = objArr3;
            length = i16;
            i7 = i18;
            iArr3 = iArr4;
            str = str;
            i33 = i20;
            i31 = 55296;
        }
        return new x79(iArr3, objArr2, i3, i5, d89Var.a, iArr, i8, i61, cz4Var);
    }

    public static int z(Object obj, long j2) {
        return ((Integer) q89.m(obj, j2)).intValue();
    }

    /* JADX WARN: Code duplicated, block: B:72:0x010f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:73:0x0110 A[RETURN] */
    public final boolean A(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j2 = i2 & 1048575;
        if (j2 != 1048575) {
            if (((1 << (i2 >>> 20)) & q89.c.j(obj, j2)) != 0) {
                return true;
            }
            return false;
        }
        int iY = y(i);
        long j3 = iY & 1048575;
        switch ((iY & 267386880) >>> 20) {
            case 0:
                if (Double.doubleToRawLongBits(q89.c.a(obj, j3)) != 0) {
                    return true;
                }
                return false;
            case 1:
                if (Float.floatToRawIntBits(q89.c.h(obj, j3)) != 0) {
                    return true;
                }
                return false;
            case 2:
                if (q89.c.k(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 3:
                if (q89.c.k(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 4:
                if (q89.c.j(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 5:
                if (q89.c.k(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 6:
                if (q89.c.j(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 7:
                return q89.c.i(obj, j3);
            case 8:
                Object objM = q89.m(obj, j3);
                if (objM instanceof String) {
                    if (((String) objM).isEmpty()) {
                        return false;
                    }
                    return true;
                }
                if (!(objM instanceof t69)) {
                    c6.b();
                    return false;
                }
                if (t69.b.equals(objM)) {
                    return false;
                }
                return true;
            case XmlPullParser.COMMENT /* 9 */:
                if (q89.m(obj, j3) != null) {
                    return true;
                }
                return false;
            case 10:
                if (t69.b.equals(q89.m(obj, j3))) {
                    return false;
                }
                return true;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                if (q89.c.j(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 12:
                if (q89.c.j(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 13:
                if (q89.c.j(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 14:
                if (q89.c.k(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 15:
                if (q89.c.j(obj, j3) != 0) {
                    return true;
                }
                return false;
            case Argon2.V10 /* 16 */:
                if (q89.c.k(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 17:
                if (q89.m(obj, j3) != null) {
                    return true;
                }
                return false;
            default:
                c6.b();
                return false;
        }
    }

    public final boolean B(Object obj, int i, int i2) {
        return q89.c.j(obj, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    public final boolean C(k79 k79Var, k79 k79Var2, int i) {
        return A(i, k79Var) == A(i, k79Var2);
    }

    public final void E(int i) {
        if (this.b[((i / 3) << 1) + 1] == null) {
            return;
        }
        e6.d();
    }

    public final e89 F(int i) {
        int i2 = (i / 3) << 1;
        Object[] objArr = this.b;
        e89 e89Var = (e89) objArr[i2];
        if (e89Var != null) {
            return e89Var;
        }
        e89 e89VarA = c89.c.a((Class) objArr[i2 + 1]);
        objArr[i2] = e89VarA;
        return e89VarA;
    }

    public final Object G(int i) {
        return this.b[(i / 3) << 1];
    }

    @Override // defpackage.e89
    public final boolean a(Object obj) {
        int i;
        int i2;
        x79 x79Var;
        Object obj2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i4 < this.h) {
            int i6 = this.g[i4];
            int iY = this.y(i6);
            int[] iArr = this.a;
            int i7 = iArr[i6 + 2];
            int i8 = i7 & 1048575;
            int i9 = 1 << (i7 >>> 20);
            if (i8 != i3) {
                if (i8 != 1048575) {
                    i5 = k.getInt(obj, i8);
                }
                i2 = i5;
                i = i8;
            } else {
                i = i3;
                i2 = i5;
            }
            if ((268435456 & iY) != 0) {
                x79Var = this;
                obj2 = obj;
                if (!x79Var.t(obj2, i6, i, i2, i9)) {
                }
                return false;
            }
            x79Var = this;
            obj2 = obj;
            int i10 = (267386880 & iY) >>> 20;
            if (i10 == 9 || i10 == 17) {
                if (x79Var.t(obj2, i6, i, i2, i9) && !x79Var.F(i6).a(q89.m(obj2, iY & 1048575))) {
                    return false;
                }
                i4++;
                this = x79Var;
                obj = obj2;
                i3 = i;
                i5 = i2;
            } else {
                if (i10 != 27) {
                    if (i10 == 60 || i10 == 68) {
                        if (x79Var.B(obj2, iArr[i6], i6) && !x79Var.F(i6).a(q89.m(obj2, iY & 1048575))) {
                            return false;
                        }
                    } else if (i10 != 49) {
                        if (i10 == 50 && !((u79) q89.m(obj2, iY & 1048575)).isEmpty()) {
                            if (x79Var.G(i6) == null) {
                                throw new NoSuchMethodError();
                            }
                            e6.d();
                            return false;
                        }
                    }
                    i4++;
                    this = x79Var;
                    obj = obj2;
                    i3 = i;
                    i5 = i2;
                }
                List list = (List) q89.m(obj2, iY & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    e89 e89VarF = x79Var.F(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!e89VarF.a(list.get(i11))) {
                            return false;
                        }
                    }
                }
                i4++;
                this = x79Var;
                obj = obj2;
                i3 = i;
                i5 = i2;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    @Override // defpackage.e89
    public final boolean b(k79 k79Var, k79 k79Var2) {
        int[] iArr = this.a;
        int length = iArr.length;
        int i = 0;
        while (true) {
            boolean zK = true;
            if (i < length) {
                int iY = y(i);
                int i2 = (267386880 & iY) >>> 20;
                if (i2 <= 50 || i2 >= 69) {
                    long j2 = iY & 1048575;
                    switch (i2) {
                        case 0:
                            if (!C(k79Var, k79Var2, i)) {
                                zK = false;
                            } else {
                                p89 p89Var = q89.c;
                                if (Double.doubleToLongBits(p89Var.a(k79Var, j2)) != Double.doubleToLongBits(p89Var.a(k79Var2, j2))) {
                                    zK = false;
                                }
                            }
                            break;
                        case 1:
                            if (!C(k79Var, k79Var2, i)) {
                                zK = false;
                            } else {
                                p89 p89Var2 = q89.c;
                                if (Float.floatToIntBits(p89Var2.h(k79Var, j2)) != Float.floatToIntBits(p89Var2.h(k79Var2, j2))) {
                                    zK = false;
                                }
                            }
                            break;
                        case 2:
                            if (!C(k79Var, k79Var2, i)) {
                                zK = false;
                            } else {
                                p89 p89Var3 = q89.c;
                                if (p89Var3.k(k79Var, j2) != p89Var3.k(k79Var2, j2)) {
                                    zK = false;
                                }
                            }
                            break;
                        case 3:
                            if (!C(k79Var, k79Var2, i)) {
                                zK = false;
                            } else {
                                p89 p89Var4 = q89.c;
                                if (p89Var4.k(k79Var, j2) != p89Var4.k(k79Var2, j2)) {
                                    zK = false;
                                }
                            }
                            break;
                        case 4:
                            if (!C(k79Var, k79Var2, i)) {
                                zK = false;
                            } else {
                                p89 p89Var5 = q89.c;
                                if (p89Var5.j(k79Var, j2) != p89Var5.j(k79Var2, j2)) {
                                    zK = false;
                                }
                            }
                            break;
                        case 5:
                            if (!C(k79Var, k79Var2, i)) {
                                zK = false;
                            } else {
                                p89 p89Var6 = q89.c;
                                if (p89Var6.k(k79Var, j2) != p89Var6.k(k79Var2, j2)) {
                                    zK = false;
                                }
                            }
                            break;
                        case 6:
                            if (!C(k79Var, k79Var2, i)) {
                                zK = false;
                            } else {
                                p89 p89Var7 = q89.c;
                                if (p89Var7.j(k79Var, j2) != p89Var7.j(k79Var2, j2)) {
                                    zK = false;
                                }
                            }
                            break;
                        case 7:
                            if (!C(k79Var, k79Var2, i)) {
                                zK = false;
                            } else {
                                p89 p89Var8 = q89.c;
                                if (p89Var8.i(k79Var, j2) != p89Var8.i(k79Var2, j2)) {
                                    zK = false;
                                }
                            }
                            break;
                        case 8:
                            if (!C(k79Var, k79Var2, i) || !xh8.K(q89.m(k79Var, j2), q89.m(k79Var2, j2))) {
                                zK = false;
                            }
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            if (!C(k79Var, k79Var2, i) || !xh8.K(q89.m(k79Var, j2), q89.m(k79Var2, j2))) {
                                zK = false;
                            }
                            break;
                        case 10:
                            if (!C(k79Var, k79Var2, i) || !xh8.K(q89.m(k79Var, j2), q89.m(k79Var2, j2))) {
                                zK = false;
                            }
                            break;
                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                            if (!C(k79Var, k79Var2, i)) {
                                zK = false;
                            } else {
                                p89 p89Var9 = q89.c;
                                if (p89Var9.j(k79Var, j2) != p89Var9.j(k79Var2, j2)) {
                                    zK = false;
                                }
                            }
                            break;
                        case 12:
                            if (!C(k79Var, k79Var2, i)) {
                                zK = false;
                            } else {
                                p89 p89Var10 = q89.c;
                                if (p89Var10.j(k79Var, j2) != p89Var10.j(k79Var2, j2)) {
                                    zK = false;
                                }
                            }
                            break;
                        case 13:
                            if (!C(k79Var, k79Var2, i)) {
                                zK = false;
                            } else {
                                p89 p89Var11 = q89.c;
                                if (p89Var11.j(k79Var, j2) != p89Var11.j(k79Var2, j2)) {
                                    zK = false;
                                }
                            }
                            break;
                        case 14:
                            if (!C(k79Var, k79Var2, i)) {
                                zK = false;
                            } else {
                                p89 p89Var12 = q89.c;
                                if (p89Var12.k(k79Var, j2) != p89Var12.k(k79Var2, j2)) {
                                    zK = false;
                                }
                            }
                            break;
                        case 15:
                            if (!C(k79Var, k79Var2, i)) {
                                zK = false;
                            } else {
                                p89 p89Var13 = q89.c;
                                if (p89Var13.j(k79Var, j2) != p89Var13.j(k79Var2, j2)) {
                                    zK = false;
                                }
                            }
                            break;
                        case Argon2.V10 /* 16 */:
                            if (!C(k79Var, k79Var2, i)) {
                                zK = false;
                            } else {
                                p89 p89Var14 = q89.c;
                                if (p89Var14.k(k79Var, j2) != p89Var14.k(k79Var2, j2)) {
                                    zK = false;
                                }
                            }
                            break;
                        case 17:
                            if (!C(k79Var, k79Var2, i) || !xh8.K(q89.m(k79Var, j2), q89.m(k79Var2, j2))) {
                                zK = false;
                            }
                            break;
                        case 18:
                        case Argon2.V13 /* 19 */:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                            zK = xh8.K(q89.m(k79Var, j2), q89.m(k79Var2, j2));
                            break;
                        case 50:
                            zK = xh8.K(q89.m(k79Var, j2), q89.m(k79Var2, j2));
                            break;
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                        case 55:
                        case 56:
                        case 57:
                        case 58:
                        case 59:
                        case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                        case 61:
                        case 62:
                        case 63:
                        case 64:
                        case 65:
                        case 66:
                        case 67:
                        case 68:
                            long j3 = 1048575 & iArr[i + 2];
                            p89 p89Var15 = q89.c;
                            if (p89Var15.j(k79Var, j3) != p89Var15.j(k79Var2, j3) || !xh8.K(q89.m(k79Var, j2), q89.m(k79Var2, j2))) {
                                zK = false;
                            }
                            break;
                    }
                    if (!zK) {
                    }
                }
                i += 3;
            } else {
                int i3 = this.i;
                while (true) {
                    int[] iArr2 = this.g;
                    if (i3 < iArr2.length) {
                        int i4 = iArr2[i3];
                        long j4 = iArr[i4 + 2] & 1048575;
                        p89 p89Var16 = q89.c;
                        if (p89Var16.j(k79Var, j4) != p89Var16.j(k79Var2, j4)) {
                            return false;
                        }
                        if (!B(k79Var, 0, i4)) {
                            long jY = y(i4) & 1048575;
                            if (!xh8.K(q89.m(k79Var, jY), q89.m(k79Var2, jY))) {
                            }
                        }
                        i3++;
                    } else if (k79Var.zzb.equals(k79Var2.zzb)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.e89
    public final void c(Object obj, jq6 jq6Var) {
        char c;
        int i;
        boolean z;
        x79 x79Var = this;
        c79 c79Var = (c79) jq6Var.b;
        int[] iArr = x79Var.a;
        int length = iArr.length;
        Unsafe unsafe = k;
        int i2 = 1048575;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            int iY = x79Var.y(i4);
            int i6 = iArr[i4];
            int i7 = (267386880 & iY) >>> 20;
            if (i7 <= 17) {
                int i8 = iArr[i4 + 2];
                c = 1;
                int i9 = i8 & i2;
                if (i9 != i3) {
                    i5 = i9 == i2 ? 0 : unsafe.getInt(obj, i9);
                    i3 = i9;
                }
                i = 1 << (i8 >>> 20);
            } else {
                c = 1;
                i = 0;
            }
            long j2 = iY & i2;
            switch (i7) {
                case 0:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        double dA = q89.c.a(obj, j2);
                        c79Var.getClass();
                        c79Var.d(i6, Double.doubleToRawLongBits(dA));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 1:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        float fH = q89.c.h(obj, j2);
                        c79Var.getClass();
                        c79Var.c(i6, Float.floatToRawIntBits(fH));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 2:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        c79Var.l(i6, unsafe.getLong(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 3:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        c79Var.l(i6, unsafe.getLong(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 4:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        c79Var.k(i6, unsafe.getInt(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 5:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        c79Var.d(i6, unsafe.getLong(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 6:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        c79Var.c(i6, unsafe.getInt(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 7:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        c79Var.g(i6, q89.c.i(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 8:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        Object object = unsafe.getObject(obj, j2);
                        if (object instanceof String) {
                            c79Var.e(i6, (String) object);
                        } else {
                            c79Var.f(i6, (t69) object);
                        }
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        jq6Var.C(i6, unsafe.getObject(obj, j2), x79Var.F(i4));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 10:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        c79Var.f(i6, (t69) unsafe.getObject(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        c79Var.q(i6, unsafe.getInt(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 12:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        c79Var.k(i6, unsafe.getInt(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 13:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        c79Var.c(i6, unsafe.getInt(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 14:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        c79Var.d(i6, unsafe.getLong(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 15:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        int i10 = unsafe.getInt(obj, j2);
                        c79Var.q(i6, (i10 >> 31) ^ (i10 << 1));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case Argon2.V10 /* 16 */:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        long j3 = unsafe.getLong(obj, j2);
                        c79Var.l(i6, (j3 >> 63) ^ (j3 << 1));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 17:
                    if (x79Var.t(obj, i4, i3, i5, i)) {
                        Object object2 = unsafe.getObject(obj, j2);
                        c79Var.p(i6, 3);
                        x79Var.F(i4).c((o69) object2, jq6Var);
                        c79Var.p(i6, 4);
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 18:
                    xh8.M(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, false);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case Argon2.V13 /* 19 */:
                    xh8.T(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, false);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 20:
                    xh8.X(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, false);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 21:
                    xh8.f0(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, false);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 22:
                    xh8.V(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, false);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 23:
                    xh8.Q(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, false);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 24:
                    xh8.O(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, false);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 25:
                    xh8.I(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, false);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 26:
                    int i11 = iArr[i4];
                    List list = (List) unsafe.getObject(obj, j2);
                    if (list != null && !list.isEmpty()) {
                        for (int i12 = 0; i12 < list.size(); i12++) {
                            c79Var.e(i11, (String) list.get(i12));
                        }
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 27:
                    int i13 = iArr[i4];
                    List list2 = (List) unsafe.getObject(obj, j2);
                    e89 e89VarF = x79Var.F(i4);
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i14 = 0; i14 < list2.size(); i14++) {
                            jq6Var.C(i13, list2.get(i14), e89VarF);
                        }
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 28:
                    int i15 = iArr[i4];
                    List list3 = (List) unsafe.getObject(obj, j2);
                    if (list3 != null && !list3.isEmpty()) {
                        for (int i16 = 0; i16 < list3.size(); i16++) {
                            c79Var.f(i15, (t69) list3.get(i16));
                        }
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 29:
                    z = false;
                    xh8.e0(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, false);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                    z = false;
                    xh8.N(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, false);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 31:
                    z = false;
                    xh8.Z(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, false);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 32:
                    z = false;
                    xh8.b0(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, false);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 33:
                    z = false;
                    xh8.c0(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, false);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 34:
                    z = false;
                    xh8.d0(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, false);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 35:
                    xh8.M(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, c);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 36:
                    xh8.T(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, c);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 37:
                    xh8.X(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, c);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 38:
                    xh8.f0(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, c);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 39:
                    xh8.V(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, c);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 40:
                    xh8.Q(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, c);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 41:
                    xh8.O(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, c);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 42:
                    xh8.I(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, c);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 43:
                    xh8.e0(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, c);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 44:
                    xh8.N(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, c);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 45:
                    xh8.Z(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, c);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 46:
                    xh8.b0(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, c);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 47:
                    xh8.c0(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, c);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 48:
                    xh8.d0(iArr[i4], (List) unsafe.getObject(obj, j2), jq6Var, c);
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 49:
                    int i17 = iArr[i4];
                    List list4 = (List) unsafe.getObject(obj, j2);
                    e89 e89VarF2 = x79Var.F(i4);
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i18 = 0; i18 < list4.size(); i18++) {
                            o69 o69Var = (o69) list4.get(i18);
                            c79Var.p(i17, 3);
                            e89VarF2.c(o69Var, jq6Var);
                            c79Var.p(i17, 4);
                        }
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 50:
                    if (unsafe.getObject(obj, j2) != null) {
                        if (x79Var.G(i4) == null) {
                            throw new NoSuchMethodError();
                        }
                        e6.d();
                        return;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 51:
                    if (x79Var.B(obj, i6, i4)) {
                        double dDoubleValue = ((Double) q89.m(obj, j2)).doubleValue();
                        c79Var.getClass();
                        c79Var.d(i6, Double.doubleToRawLongBits(dDoubleValue));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 52:
                    if (x79Var.B(obj, i6, i4)) {
                        float fFloatValue = ((Float) q89.m(obj, j2)).floatValue();
                        c79Var.getClass();
                        c79Var.c(i6, Float.floatToRawIntBits(fFloatValue));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 53:
                    if (x79Var.B(obj, i6, i4)) {
                        c79Var.l(i6, D(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 54:
                    if (x79Var.B(obj, i6, i4)) {
                        c79Var.l(i6, D(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 55:
                    if (x79Var.B(obj, i6, i4)) {
                        c79Var.k(i6, z(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 56:
                    if (x79Var.B(obj, i6, i4)) {
                        c79Var.d(i6, D(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 57:
                    if (x79Var.B(obj, i6, i4)) {
                        c79Var.c(i6, z(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 58:
                    if (x79Var.B(obj, i6, i4)) {
                        c79Var.g(i6, ((Boolean) q89.m(obj, j2)).booleanValue());
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 59:
                    if (x79Var.B(obj, i6, i4)) {
                        Object object3 = unsafe.getObject(obj, j2);
                        if (object3 instanceof String) {
                            c79Var.e(i6, (String) object3);
                        } else {
                            c79Var.f(i6, (t69) object3);
                        }
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                    if (x79Var.B(obj, i6, i4)) {
                        jq6Var.C(i6, unsafe.getObject(obj, j2), x79Var.F(i4));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 61:
                    if (x79Var.B(obj, i6, i4)) {
                        c79Var.f(i6, (t69) unsafe.getObject(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 62:
                    if (x79Var.B(obj, i6, i4)) {
                        c79Var.q(i6, z(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 63:
                    if (x79Var.B(obj, i6, i4)) {
                        c79Var.k(i6, z(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 64:
                    if (x79Var.B(obj, i6, i4)) {
                        c79Var.c(i6, z(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 65:
                    if (x79Var.B(obj, i6, i4)) {
                        c79Var.d(i6, D(obj, j2));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 66:
                    if (x79Var.B(obj, i6, i4)) {
                        int iZ = z(obj, j2);
                        c79Var.q(i6, (iZ >> 31) ^ (iZ << 1));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 67:
                    if (x79Var.B(obj, i6, i4)) {
                        long jD = D(obj, j2);
                        c79Var.l(i6, (jD >> 63) ^ (jD << c));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                case 68:
                    if (x79Var.B(obj, i6, i4)) {
                        Object object4 = unsafe.getObject(obj, j2);
                        c79Var.p(i6, 3);
                        x79Var.F(i4).c((o69) object4, jq6Var);
                        c79Var.p(i6, 4);
                    }
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
                default:
                    i4 += 3;
                    i2 = 1048575;
                    x79Var = this;
                    break;
            }
        }
        ((k79) obj).zzb.d(jq6Var);
    }

    @Override // defpackage.e89
    public final int d(k79 k79Var) {
        int i;
        int iB;
        int length = this.a.length;
        int iHashCode = 0;
        for (int i2 = 0; i2 < length; i2 += 3) {
            int iY = y(i2);
            int i3 = (267386880 & iY) >>> 20;
            if (i3 <= 50 || i3 >= 69) {
                long j2 = 1048575 & iY;
                int iHashCode2 = 37;
                switch (i3) {
                    case 0:
                        i = iHashCode * 53;
                        iB = l79.b(Double.doubleToLongBits(q89.c.a(k79Var, j2)));
                        iHashCode = i + iB;
                        break;
                    case 1:
                        i = iHashCode * 53;
                        iB = Float.floatToIntBits(q89.c.h(k79Var, j2));
                        iHashCode = i + iB;
                        break;
                    case 2:
                        i = iHashCode * 53;
                        iB = l79.b(q89.c.k(k79Var, j2));
                        iHashCode = i + iB;
                        break;
                    case 3:
                        i = iHashCode * 53;
                        iB = l79.b(q89.c.k(k79Var, j2));
                        iHashCode = i + iB;
                        break;
                    case 4:
                        i = iHashCode * 53;
                        iB = q89.c.j(k79Var, j2);
                        iHashCode = i + iB;
                        break;
                    case 5:
                        i = iHashCode * 53;
                        iB = l79.b(q89.c.k(k79Var, j2));
                        iHashCode = i + iB;
                        break;
                    case 6:
                        i = iHashCode * 53;
                        iB = q89.c.j(k79Var, j2);
                        iHashCode = i + iB;
                        break;
                    case 7:
                        int i4 = iHashCode * 53;
                        boolean zI = q89.c.i(k79Var, j2);
                        byte[] bArr = l79.a;
                        iHashCode = i4 + (zI ? 1231 : 1237);
                        break;
                    case 8:
                        i = iHashCode * 53;
                        iB = ((String) q89.m(k79Var, j2)).hashCode();
                        iHashCode = i + iB;
                        break;
                    case XmlPullParser.COMMENT /* 9 */:
                        Object objM = q89.m(k79Var, j2);
                        if (objM != null) {
                            iHashCode2 = objM.hashCode();
                        }
                        iHashCode = (iHashCode * 53) + iHashCode2;
                        break;
                    case 10:
                        i = iHashCode * 53;
                        iB = q89.m(k79Var, j2).hashCode();
                        iHashCode = i + iB;
                        break;
                    case ModuleDescriptor.MODULE_VERSION /* 11 */:
                        i = iHashCode * 53;
                        iB = q89.c.j(k79Var, j2);
                        iHashCode = i + iB;
                        break;
                    case 12:
                        i = iHashCode * 53;
                        iB = q89.c.j(k79Var, j2);
                        iHashCode = i + iB;
                        break;
                    case 13:
                        i = iHashCode * 53;
                        iB = q89.c.j(k79Var, j2);
                        iHashCode = i + iB;
                        break;
                    case 14:
                        i = iHashCode * 53;
                        iB = l79.b(q89.c.k(k79Var, j2));
                        iHashCode = i + iB;
                        break;
                    case 15:
                        i = iHashCode * 53;
                        iB = q89.c.j(k79Var, j2);
                        iHashCode = i + iB;
                        break;
                    case Argon2.V10 /* 16 */:
                        i = iHashCode * 53;
                        iB = l79.b(q89.c.k(k79Var, j2));
                        iHashCode = i + iB;
                        break;
                    case 17:
                        Object objM2 = q89.m(k79Var, j2);
                        if (objM2 != null) {
                            iHashCode2 = objM2.hashCode();
                        }
                        iHashCode = (iHashCode * 53) + iHashCode2;
                        break;
                    case 18:
                    case Argon2.V13 /* 19 */:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        i = iHashCode * 53;
                        iB = q89.m(k79Var, j2).hashCode();
                        iHashCode = i + iB;
                        break;
                    case 50:
                        i = iHashCode * 53;
                        iB = q89.m(k79Var, j2).hashCode();
                        iHashCode = i + iB;
                        break;
                }
            }
        }
        int i5 = this.i;
        while (true) {
            int[] iArr = this.g;
            if (i5 >= iArr.length) {
                return k79Var.zzb.hashCode() + (iHashCode * 53);
            }
            int i6 = iArr[i5];
            if (!B(k79Var, 0, i6)) {
                iHashCode = q89.m(k79Var, y(i6) & 1048575).hashCode() + (iHashCode * 53);
            }
            i5++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0075  */
    /* JADX WARN: Code duplicated, block: B:29:0x007b  */
    /* JADX WARN: Code duplicated, block: B:43:0x0088 A[SYNTHETIC] */
    @Override // defpackage.e89
    public final void e(Object obj) {
        if (I(obj)) {
            if (obj instanceof k79) {
                k79 k79Var = (k79) obj;
                k79Var.m(Integer.MAX_VALUE);
                k79Var.zza = 0;
                k79Var.r();
            }
            int[] iArr = this.a;
            int length = iArr.length;
            for (int i = 0; i < length; i += 3) {
                int iY = y(i);
                long j2 = 1048575 & iY;
                int i2 = (iY & 267386880) >>> 20;
                if (i2 != 9) {
                    if (i2 != 60 && i2 != 68) {
                        switch (i2) {
                            case 17:
                                if (A(i, obj)) {
                                    F(i).e(k.getObject(obj, j2));
                                }
                                break;
                            case 18:
                            case Argon2.V13 /* 19 */:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                b89 b89Var = (b89) ((o79) q89.m(obj, j2));
                                if (b89Var.a) {
                                    b89Var.a = false;
                                }
                                break;
                            case 50:
                                Unsafe unsafe = k;
                                Object object = unsafe.getObject(obj, j2);
                                if (object != null) {
                                    ((u79) object).a = false;
                                    unsafe.putObject(obj, j2, object);
                                }
                                break;
                        }
                    } else if (B(obj, iArr[i], i)) {
                        F(i).e(k.getObject(obj, j2));
                    }
                } else if (A(i, obj)) {
                    F(i).e(k.getObject(obj, j2));
                }
            }
            l89 l89Var = ((k79) obj).zzb;
            if (l89Var.e) {
                l89Var.e = false;
            }
        }
    }

    @Override // defpackage.e89
    public final void f(Object obj, byte[] bArr, int i, int i2, s69 s69Var) {
        k(obj, bArr, i, i2, 0, s69Var);
    }

    /* JADX WARN: Code duplicated, block: B:149:0x0366  */
    /* JADX WARN: Code duplicated, block: B:159:0x0398  */
    /* JADX WARN: Code duplicated, block: B:164:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:246:0x0593  */
    /* JADX WARN: Code duplicated, block: B:250:0x05a3  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bb  */
    @Override // defpackage.e89
    public final int g(k79 k79Var) {
        int i;
        int iT;
        int iR;
        int iT2;
        int iR2;
        int iT3;
        int iT4;
        int iN;
        int iS;
        int iA;
        int iT5;
        int i2;
        int iT6;
        int iN2;
        int iS2;
        int iA2;
        int size;
        int iT7;
        int size2;
        int iT8;
        int iS3;
        int size3;
        int iA0;
        int iS4;
        int iS5;
        int iT9;
        int i3;
        int size4;
        int iS6;
        int iT10;
        int iA3;
        int iT11;
        int iR3;
        int iZ;
        k79 k79Var2 = k79Var;
        Unsafe unsafe = k;
        int i4 = 1048575;
        int i5 = 1048575;
        int i6 = 0;
        int i7 = 0;
        int iH = 0;
        while (true) {
            int[] iArr = this.a;
            if (i6 >= iArr.length) {
                return k79Var2.zzb.a() + iH;
            }
            int iY = y(i6);
            int i8 = (267386880 & iY) >>> 20;
            int i9 = iArr[i6];
            int i10 = iArr[i6 + 2];
            int i11 = i10 & i4;
            if (i8 <= 17) {
                if (i11 != i5) {
                    i7 = i11 == i4 ? 0 : unsafe.getInt(k79Var2, i11);
                    i5 = i11;
                }
                i = 1 << (i10 >>> 20);
            } else {
                i = 0;
            }
            long j2 = iY & i4;
            if (i8 >= h79.b.a) {
                int i12 = h79.c.a;
            }
            int iT12 = 4;
            switch (i8) {
                case 0:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        iH = u48.h(i9 << 3, 8, iH);
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 1:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        iH = u48.h(i9 << 3, 4, iH);
                    }
                    k79Var2 = k79Var;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 2:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        long j3 = unsafe.getLong(k79Var2, j2);
                        iT = c79.t(i9 << 3);
                        iR = c79.r(j3);
                        iN2 = iR + iT;
                        iH += iN2;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 3:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        long j4 = unsafe.getLong(k79Var2, j2);
                        iT = c79.t(i9 << 3);
                        iR = c79.r(j4);
                        iN2 = iR + iT;
                        iH += iN2;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 4:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        int i13 = unsafe.getInt(k79Var2, j2);
                        iT2 = c79.t(i9 << 3);
                        iR2 = c79.r(i13);
                        iN = iR2 + iT2;
                        iH += iN;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 5:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        iH = u48.h(i9 << 3, 8, iH);
                    }
                    k79Var2 = k79Var;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 6:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        iH = u48.h(i9 << 3, 4, iH);
                    }
                    k79Var2 = k79Var;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 7:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        iH = u48.h(i9 << 3, 1, iH);
                    }
                    k79Var2 = k79Var;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 8:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        Object object = unsafe.getObject(k79Var2, j2);
                        if (object instanceof t69) {
                            iN = c79.n(i9, (t69) object);
                            iH += iN;
                        } else {
                            iT3 = c79.t(i9 << 3);
                            int iE = tu0.E((String) object);
                            iT4 = c79.t(iE) + iE;
                            i3 = iT4 + iT3;
                            iH += i3;
                        }
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        Object object2 = unsafe.getObject(k79Var2, j2);
                        e89 e89VarF = F(i6);
                        iS = c79.s(i9);
                        iA = ((o69) object2).a(e89VarF);
                        iT5 = c79.t(iA);
                        i3 = iT5 + iA + iS;
                        iH += i3;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 10:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        iN = c79.n(i9, (t69) unsafe.getObject(k79Var2, j2));
                        iH += iN;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        i2 = unsafe.getInt(k79Var2, j2);
                        iT6 = c79.t(i9 << 3);
                        iH = u48.h(i2, iT6, iH);
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 12:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        int i14 = unsafe.getInt(k79Var2, j2);
                        iT2 = c79.t(i9 << 3);
                        iR2 = c79.r(i14);
                        iN = iR2 + iT2;
                        iH += iN;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 13:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        iH = u48.h(i9 << 3, 4, iH);
                    }
                    k79Var2 = k79Var;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 14:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        iH = u48.h(i9 << 3, 8, iH);
                    }
                    k79Var2 = k79Var;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 15:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        int i15 = unsafe.getInt(k79Var2, j2);
                        iT6 = c79.t(i9 << 3);
                        i2 = (i15 >> 31) ^ (i15 << 1);
                        iH = u48.h(i2, iT6, iH);
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case Argon2.V10 /* 16 */:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        long j5 = unsafe.getLong(k79Var2, j2);
                        iT = c79.t(i9 << 3);
                        iR = c79.r((j5 >> 63) ^ (j5 << 1));
                        iN2 = iR + iT;
                        iH += iN2;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 17:
                    if (t(k79Var2, i6, i5, i7, i)) {
                        o69 o69Var = (o69) unsafe.getObject(k79Var2, j2);
                        e89 e89VarF2 = F(i6);
                        iS2 = c79.s(i9) << 1;
                        iA2 = o69Var.a(e89VarF2);
                        iN2 = iA2 + iS2;
                        iH += iN2;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 18:
                    size = ((List) unsafe.getObject(k79Var2, j2)).size();
                    if (size == 0) {
                        i3 = 0;
                    } else {
                        iT7 = c79.t(i9 << 3);
                        i3 = (iT7 + 8) * size;
                    }
                    iH += i3;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case Argon2.V13 /* 19 */:
                    size2 = ((List) unsafe.getObject(k79Var2, j2)).size();
                    if (size2 == 0) {
                        iT9 = 0;
                    } else {
                        iT8 = c79.t(i9 << 3);
                        iT9 = (iT8 + 4) * size2;
                    }
                    iH += iT9;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(k79Var2, j2);
                    if (list.size() == 0) {
                        iS3 = 0;
                    } else {
                        iS3 = (c79.s(i9) * list.size()) + xh8.S(list);
                    }
                    iH += iS3;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(k79Var2, j2);
                    size3 = list2.size();
                    if (size3 == 0) {
                        iS3 = 0;
                    } else {
                        iA0 = xh8.a0(list2);
                        iS4 = c79.s(i9);
                        iS3 = (iS4 * size3) + iA0;
                    }
                    iH += iS3;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(k79Var2, j2);
                    size3 = list3.size();
                    if (size3 == 0) {
                        iS3 = 0;
                    } else {
                        iA0 = xh8.P(list3);
                        iS4 = c79.s(i9);
                        iS3 = (iS4 * size3) + iA0;
                    }
                    iH += iS3;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 23:
                    size = ((List) unsafe.getObject(k79Var2, j2)).size();
                    if (size == 0) {
                        i3 = 0;
                    } else {
                        iT7 = c79.t(i9 << 3);
                        i3 = (iT7 + 8) * size;
                    }
                    iH += i3;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 24:
                    size2 = ((List) unsafe.getObject(k79Var2, j2)).size();
                    if (size2 == 0) {
                        iT9 = 0;
                    } else {
                        iT8 = c79.t(i9 << 3);
                        iT9 = (iT8 + 4) * size2;
                    }
                    iH += iT9;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 25:
                    int size5 = ((List) unsafe.getObject(k79Var2, j2)).size();
                    iH += size5 == 0 ? 0 : (c79.t(i9 << 3) + 1) * size5;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 26:
                    List list4 = (List) unsafe.getObject(k79Var2, j2);
                    int size6 = list4.size();
                    if (size6 == 0) {
                        iS3 = 0;
                    } else {
                        iS3 = c79.s(i9) * size6;
                        for (int i16 = 0; i16 < size6; i16++) {
                            Object obj = list4.get(i16);
                            int iD = obj instanceof t69 ? ((t69) obj).d() : tu0.E((String) obj);
                            iS3 = u48.h(iD, iD, iS3);
                        }
                    }
                    iH += iS3;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 27:
                    List list5 = (List) unsafe.getObject(k79Var2, j2);
                    e89 e89VarF3 = F(i6);
                    int size7 = list5.size();
                    if (size7 == 0) {
                        iS5 = 0;
                    } else {
                        iS5 = c79.s(i9) * size7;
                        for (int i17 = 0; i17 < size7; i17++) {
                            int iA4 = ((o69) list5.get(i17)).a(e89VarF3);
                            iS5 = u48.h(iA4, iA4, iS5);
                        }
                    }
                    iH += iS5;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 28:
                    List list6 = (List) unsafe.getObject(k79Var2, j2);
                    int size8 = list6.size();
                    if (size8 == 0) {
                        iS3 = 0;
                    } else {
                        iS3 = c79.s(i9) * size8;
                        for (int i18 = 0; i18 < list6.size(); i18++) {
                            int iD2 = ((t69) list6.get(i18)).d();
                            iS3 = u48.h(iD2, iD2, iS3);
                        }
                    }
                    iH += iS3;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 29:
                    List list7 = (List) unsafe.getObject(k79Var2, j2);
                    size3 = list7.size();
                    if (size3 == 0) {
                        iS3 = 0;
                    } else {
                        iA0 = xh8.Y(list7);
                        iS4 = c79.s(i9);
                        iS3 = (iS4 * size3) + iA0;
                    }
                    iH += iS3;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                    List list8 = (List) unsafe.getObject(k79Var2, j2);
                    size3 = list8.size();
                    if (size3 == 0) {
                        iS3 = 0;
                    } else {
                        iA0 = xh8.L(list8);
                        iS4 = c79.s(i9);
                        iS3 = (iS4 * size3) + iA0;
                    }
                    iH += iS3;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 31:
                    size2 = ((List) unsafe.getObject(k79Var2, j2)).size();
                    if (size2 == 0) {
                        iT9 = 0;
                    } else {
                        iT8 = c79.t(i9 << 3);
                        iT9 = (iT8 + 4) * size2;
                    }
                    iH += iT9;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 32:
                    size = ((List) unsafe.getObject(k79Var2, j2)).size();
                    if (size == 0) {
                        i3 = 0;
                    } else {
                        iT7 = c79.t(i9 << 3);
                        i3 = (iT7 + 8) * size;
                    }
                    iH += i3;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 33:
                    List list9 = (List) unsafe.getObject(k79Var2, j2);
                    size3 = list9.size();
                    if (size3 == 0) {
                        iS3 = 0;
                    } else {
                        iA0 = xh8.U(list9);
                        iS4 = c79.s(i9);
                        iS3 = (iS4 * size3) + iA0;
                    }
                    iH += iS3;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 34:
                    List list10 = (List) unsafe.getObject(k79Var2, j2);
                    size3 = list10.size();
                    if (size3 == 0) {
                        iS3 = 0;
                    } else {
                        iA0 = xh8.W(list10);
                        iS4 = c79.s(i9);
                        iS3 = (iS4 * size3) + iA0;
                    }
                    iH += iS3;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 35:
                    size4 = ((List) unsafe.getObject(k79Var2, j2)).size() << 3;
                    if (size4 > 0) {
                        iS6 = c79.s(i9);
                        iT10 = c79.t(size4);
                        iT9 = iT10 + iS6 + size4;
                        iH += iT9;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 36:
                    size4 = ((List) unsafe.getObject(k79Var2, j2)).size() << 2;
                    if (size4 > 0) {
                        iS6 = c79.s(i9);
                        iT10 = c79.t(size4);
                        iT9 = iT10 + iS6 + size4;
                        iH += iT9;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 37:
                    size4 = xh8.S((List) unsafe.getObject(k79Var2, j2));
                    if (size4 > 0) {
                        iS6 = c79.s(i9);
                        iT10 = c79.t(size4);
                        iT9 = iT10 + iS6 + size4;
                        iH += iT9;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 38:
                    size4 = xh8.a0((List) unsafe.getObject(k79Var2, j2));
                    if (size4 > 0) {
                        iS6 = c79.s(i9);
                        iT10 = c79.t(size4);
                        iT9 = iT10 + iS6 + size4;
                        iH += iT9;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 39:
                    size4 = xh8.P((List) unsafe.getObject(k79Var2, j2));
                    if (size4 > 0) {
                        iS6 = c79.s(i9);
                        iT10 = c79.t(size4);
                        iT9 = iT10 + iS6 + size4;
                        iH += iT9;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 40:
                    size4 = ((List) unsafe.getObject(k79Var2, j2)).size() << 3;
                    if (size4 > 0) {
                        iS6 = c79.s(i9);
                        iT10 = c79.t(size4);
                        iT9 = iT10 + iS6 + size4;
                        iH += iT9;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 41:
                    size4 = ((List) unsafe.getObject(k79Var2, j2)).size() << 2;
                    if (size4 > 0) {
                        iS6 = c79.s(i9);
                        iT10 = c79.t(size4);
                        iT9 = iT10 + iS6 + size4;
                        iH += iT9;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 42:
                    size4 = ((List) unsafe.getObject(k79Var2, j2)).size();
                    if (size4 > 0) {
                        iS6 = c79.s(i9);
                        iT10 = c79.t(size4);
                        iT9 = iT10 + iS6 + size4;
                        iH += iT9;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 43:
                    size4 = xh8.Y((List) unsafe.getObject(k79Var2, j2));
                    if (size4 > 0) {
                        iS6 = c79.s(i9);
                        iT10 = c79.t(size4);
                        iT9 = iT10 + iS6 + size4;
                        iH += iT9;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 44:
                    size4 = xh8.L((List) unsafe.getObject(k79Var2, j2));
                    if (size4 > 0) {
                        iS6 = c79.s(i9);
                        iT10 = c79.t(size4);
                        iT9 = iT10 + iS6 + size4;
                        iH += iT9;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 45:
                    size4 = ((List) unsafe.getObject(k79Var2, j2)).size() << 2;
                    if (size4 > 0) {
                        iS6 = c79.s(i9);
                        iT10 = c79.t(size4);
                        iT9 = iT10 + iS6 + size4;
                        iH += iT9;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 46:
                    size4 = ((List) unsafe.getObject(k79Var2, j2)).size() << 3;
                    if (size4 > 0) {
                        iS6 = c79.s(i9);
                        iT10 = c79.t(size4);
                        iT9 = iT10 + iS6 + size4;
                        iH += iT9;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 47:
                    size4 = xh8.U((List) unsafe.getObject(k79Var2, j2));
                    if (size4 > 0) {
                        iS6 = c79.s(i9);
                        iT10 = c79.t(size4);
                        iT9 = iT10 + iS6 + size4;
                        iH += iT9;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 48:
                    size4 = xh8.W((List) unsafe.getObject(k79Var2, j2));
                    if (size4 > 0) {
                        iS6 = c79.s(i9);
                        iT10 = c79.t(size4);
                        iT9 = iT10 + iS6 + size4;
                        iH += iT9;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 49:
                    List list11 = (List) unsafe.getObject(k79Var2, j2);
                    e89 e89VarF4 = F(i6);
                    int size9 = list11.size();
                    if (size9 == 0) {
                        iA3 = 0;
                    } else {
                        iA3 = 0;
                        for (int i19 = 0; i19 < size9; i19++) {
                            iA3 += ((o69) list11.get(i19)).a(e89VarF4) + (c79.s(i9) << 1);
                        }
                    }
                    iH += iA3;
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 50:
                    u79 u79Var = (u79) unsafe.getObject(k79Var2, j2);
                    if (G(i6) != null) {
                        e6.d();
                        return 0;
                    }
                    if (u79Var.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = u79Var.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw new NoSuchMethodError();
                        }
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 51:
                    if (B(k79Var2, i9, i6)) {
                        iH = u48.h(i9 << 3, 8, iH);
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 52:
                    if (B(k79Var2, i9, i6)) {
                        iZ = i9 << 3;
                        iH = u48.h(iZ, iT12, iH);
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 53:
                    if (B(k79Var2, i9, i6)) {
                        long jD = D(k79Var2, j2);
                        iT3 = c79.t(i9 << 3);
                        iT4 = c79.r(jD);
                        i3 = iT4 + iT3;
                        iH += i3;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 54:
                    if (B(k79Var2, i9, i6)) {
                        long jD2 = D(k79Var2, j2);
                        iT3 = c79.t(i9 << 3);
                        iT4 = c79.r(jD2);
                        i3 = iT4 + iT3;
                        iH += i3;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 55:
                    if (B(k79Var2, i9, i6)) {
                        int iZ2 = z(k79Var2, j2);
                        iT11 = c79.t(i9 << 3);
                        iR3 = c79.r(iZ2);
                        iN2 = iR3 + iT11;
                        iH += iN2;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 56:
                    if (B(k79Var2, i9, i6)) {
                        iH = u48.h(i9 << 3, 8, iH);
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 57:
                    if (B(k79Var2, i9, i6)) {
                        iZ = i9 << 3;
                        iH = u48.h(iZ, iT12, iH);
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 58:
                    if (B(k79Var2, i9, i6)) {
                        iH = u48.h(i9 << 3, 1, iH);
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 59:
                    if (B(k79Var2, i9, i6)) {
                        Object object3 = unsafe.getObject(k79Var2, j2);
                        if (object3 instanceof t69) {
                            iN2 = c79.n(i9, (t69) object3);
                            iH += iN2;
                        } else {
                            int iT13 = c79.t(i9 << 3);
                            int iE2 = tu0.E((String) object3);
                            iT9 = c79.t(iE2) + iE2 + iT13;
                            iH += iT9;
                        }
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                    if (B(k79Var2, i9, i6)) {
                        Object object4 = unsafe.getObject(k79Var2, j2);
                        e89 e89VarF5 = F(i6);
                        iS = c79.s(i9);
                        iA = ((o69) object4).a(e89VarF5);
                        iT5 = c79.t(iA);
                        i3 = iT5 + iA + iS;
                        iH += i3;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 61:
                    if (B(k79Var2, i9, i6)) {
                        iN2 = c79.n(i9, (t69) unsafe.getObject(k79Var2, j2));
                        iH += iN2;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 62:
                    if (B(k79Var2, i9, i6)) {
                        iZ = z(k79Var2, j2);
                        iT12 = c79.t(i9 << 3);
                        iH = u48.h(iZ, iT12, iH);
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 63:
                    if (B(k79Var2, i9, i6)) {
                        int iZ3 = z(k79Var2, j2);
                        iT11 = c79.t(i9 << 3);
                        iR3 = c79.r(iZ3);
                        iN2 = iR3 + iT11;
                        iH += iN2;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 64:
                    if (B(k79Var2, i9, i6)) {
                        iZ = i9 << 3;
                        iH = u48.h(iZ, iT12, iH);
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 65:
                    if (B(k79Var2, i9, i6)) {
                        iH = u48.h(i9 << 3, 8, iH);
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 66:
                    if (B(k79Var2, i9, i6)) {
                        int iZ4 = z(k79Var2, j2);
                        iT12 = c79.t(i9 << 3);
                        iZ = (iZ4 >> 31) ^ (iZ4 << 1);
                        iH = u48.h(iZ, iT12, iH);
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 67:
                    if (B(k79Var2, i9, i6)) {
                        long jD3 = D(k79Var2, j2);
                        iT3 = c79.t(i9 << 3);
                        iT4 = c79.r((jD3 >> 63) ^ (jD3 << 1));
                        i3 = iT4 + iT3;
                        iH += i3;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                case 68:
                    if (B(k79Var2, i9, i6)) {
                        o69 o69Var2 = (o69) unsafe.getObject(k79Var2, j2);
                        e89 e89VarF6 = F(i6);
                        iS2 = c79.s(i9) << 1;
                        iA2 = o69Var2.a(e89VarF6);
                        iN2 = iA2 + iS2;
                        iH += iN2;
                    }
                    i6 += 3;
                    i4 = 1048575;
                    break;
                default:
                    i6 += 3;
                    i4 = 1048575;
                    break;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:135:0x05d0 A[LOOP:5: B:134:0x05ce->B:135:0x05d0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:137:0x05da  */
    @Override // defpackage.e89
    public final void h(Object obj, lb4 lb4Var, f79 f79Var) {
        int[] iArr = this.g;
        int i = this.i;
        int i2 = this.h;
        byte[] bArr = l79.a;
        f79Var.getClass();
        H(obj);
        l89 l89VarU = null;
        while (true) {
            try {
                int i3 = lb4Var.i();
                int iJ = (i3 < this.c || i3 > this.d) ? -1 : j(i3, 0);
                if (iJ >= 0) {
                    int iY = y(iJ);
                    boolean z = true;
                    switch ((267386880 & iY) >>> 20) {
                        case 0:
                            lb4Var.f(1);
                            q89.c.c(obj, iY & 1048575, ((gk1) lb4Var.d).A());
                            v(iJ, obj);
                            continue;
                        case 1:
                            lb4Var.f(5);
                            q89.c.d(obj, iY & 1048575, ((gk1) lb4Var.d).H());
                            v(iJ, obj);
                            continue;
                        case 2:
                            lb4Var.f(0);
                            q89.c(obj, iY & 1048575, ((gk1) lb4Var.d).U());
                            v(iJ, obj);
                            continue;
                        case 3:
                            lb4Var.f(0);
                            q89.c(obj, iY & 1048575, ((gk1) lb4Var.d).X());
                            v(iJ, obj);
                            continue;
                        case 4:
                            lb4Var.f(0);
                            q89.b(obj, iY & 1048575, ((gk1) lb4Var.d).O());
                            v(iJ, obj);
                            continue;
                        case 5:
                            lb4Var.f(1);
                            q89.c(obj, iY & 1048575, ((gk1) lb4Var.d).T());
                            v(iJ, obj);
                            continue;
                        case 6:
                            lb4Var.f(5);
                            q89.b(obj, iY & 1048575, ((gk1) lb4Var.d).N());
                            v(iJ, obj);
                            continue;
                        case 7:
                            lb4Var.f(0);
                            q89.c.g(obj, iY & 1048575, ((gk1) lb4Var.d).c0());
                            v(iJ, obj);
                            continue;
                        case 8:
                            p(iY, lb4Var, obj);
                            v(iJ, obj);
                            continue;
                        case XmlPullParser.COMMENT /* 9 */:
                            Object obj2 = (o69) l(iJ, obj);
                            e89 e89VarF = F(iJ);
                            lb4Var.f(2);
                            lb4Var.l(obj2, e89VarF, f79Var);
                            u(iJ, obj, obj2);
                            continue;
                        case 10:
                            q89.d(obj, iY & 1048575, lb4Var.y());
                            v(iJ, obj);
                            continue;
                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                            lb4Var.f(0);
                            q89.b(obj, iY & 1048575, ((gk1) lb4Var.d).S());
                            v(iJ, obj);
                            continue;
                        case 12:
                            lb4Var.f(0);
                            int iL = ((gk1) lb4Var.d).L();
                            E(iJ);
                            q89.b(obj, iY & 1048575, iL);
                            v(iJ, obj);
                            continue;
                        case 13:
                            lb4Var.f(5);
                            q89.b(obj, iY & 1048575, ((gk1) lb4Var.d).P());
                            v(iJ, obj);
                            continue;
                        case 14:
                            lb4Var.f(1);
                            q89.c(obj, iY & 1048575, ((gk1) lb4Var.d).V());
                            v(iJ, obj);
                            continue;
                        case 15:
                            lb4Var.f(0);
                            q89.b(obj, iY & 1048575, ((gk1) lb4Var.d).Q());
                            v(iJ, obj);
                            continue;
                        case Argon2.V10 /* 16 */:
                            lb4Var.f(0);
                            q89.c(obj, iY & 1048575, ((gk1) lb4Var.d).W());
                            v(iJ, obj);
                            continue;
                        case 17:
                            Object obj3 = (o69) l(iJ, obj);
                            e89 e89VarF2 = F(iJ);
                            lb4Var.f(3);
                            lb4Var.j(obj3, e89VarF2, f79Var);
                            u(iJ, obj, obj3);
                            continue;
                        case 18:
                            lb4Var.k(jm1.d0(obj, iY & 1048575));
                            continue;
                        case Argon2.V13 /* 19 */:
                            lb4Var.p(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 20:
                            lb4Var.r(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 21:
                            lb4Var.A(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 22:
                            lb4Var.q(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 23:
                            lb4Var.o(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 24:
                            lb4Var.n(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 25:
                            lb4Var.c(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 26:
                            if ((536870912 & iY) == 0) {
                                z = false;
                            }
                            if (!z) {
                                lb4Var.w(jm1.d0(obj, iY & 1048575));
                                continue;
                            } else {
                                lb4Var.x(jm1.d0(obj, iY & 1048575));
                            }
                            break;
                        case 27:
                            lb4Var.h(jm1.d0(obj, iY & 1048575), F(iJ), f79Var);
                            continue;
                        case 28:
                            lb4Var.g(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 29:
                            lb4Var.z(jm1.d0(obj, iY & 1048575));
                            continue;
                        case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                            lb4Var.m(jm1.d0(obj, iY & 1048575));
                            E(iJ);
                            continue;
                        case 31:
                            lb4Var.s(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 32:
                            lb4Var.t(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 33:
                            lb4Var.u(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 34:
                            lb4Var.v(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 35:
                            lb4Var.k(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 36:
                            lb4Var.p(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 37:
                            lb4Var.r(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 38:
                            lb4Var.A(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 39:
                            lb4Var.q(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 40:
                            lb4Var.o(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 41:
                            lb4Var.n(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 42:
                            lb4Var.c(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 43:
                            lb4Var.z(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 44:
                            lb4Var.m(jm1.d0(obj, iY & 1048575));
                            E(iJ);
                            continue;
                        case 45:
                            lb4Var.s(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 46:
                            lb4Var.t(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 47:
                            lb4Var.u(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 48:
                            lb4Var.v(jm1.d0(obj, iY & 1048575));
                            continue;
                        case 49:
                            lb4Var.d(jm1.d0(obj, iY & 1048575), F(iJ), f79Var);
                            continue;
                        case 50:
                            Object objG = G(iJ);
                            long jY = y(iJ) & 1048575;
                            Object objM = q89.m(obj, jY);
                            if (objM == null) {
                                objM = u79.b.b();
                                q89.d(obj, jY, objM);
                            } else if (!((u79) objM).a) {
                                u79 u79VarB = u79.b.b();
                                k55.M(u79VarB, objM);
                                q89.d(obj, jY, u79VarB);
                                objM = u79VarB;
                            }
                            k55.O(objM);
                            if (objG != null) {
                                throw new ClassCastException();
                            }
                            throw new NoSuchMethodError();
                        case 51:
                            lb4Var.f(1);
                            q89.d(obj, iY & 1048575, Double.valueOf(((gk1) lb4Var.d).A()));
                            x(obj, i3, iJ);
                            continue;
                        case 52:
                            lb4Var.f(5);
                            q89.d(obj, iY & 1048575, Float.valueOf(((gk1) lb4Var.d).H()));
                            x(obj, i3, iJ);
                            continue;
                        case 53:
                            lb4Var.f(0);
                            q89.d(obj, iY & 1048575, Long.valueOf(((gk1) lb4Var.d).U()));
                            x(obj, i3, iJ);
                            continue;
                        case 54:
                            lb4Var.f(0);
                            q89.d(obj, iY & 1048575, Long.valueOf(((gk1) lb4Var.d).X()));
                            x(obj, i3, iJ);
                            continue;
                        case 55:
                            lb4Var.f(0);
                            q89.d(obj, iY & 1048575, Integer.valueOf(((gk1) lb4Var.d).O()));
                            x(obj, i3, iJ);
                            continue;
                        case 56:
                            lb4Var.f(1);
                            q89.d(obj, iY & 1048575, Long.valueOf(((gk1) lb4Var.d).T()));
                            x(obj, i3, iJ);
                            continue;
                        case 57:
                            lb4Var.f(5);
                            q89.d(obj, iY & 1048575, Integer.valueOf(((gk1) lb4Var.d).N()));
                            x(obj, i3, iJ);
                            continue;
                        case 58:
                            lb4Var.f(0);
                            q89.d(obj, iY & 1048575, Boolean.valueOf(((gk1) lb4Var.d).c0()));
                            x(obj, i3, iJ);
                            continue;
                        case 59:
                            p(iY, lb4Var, obj);
                            x(obj, i3, iJ);
                            continue;
                        case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                            Object obj4 = (o69) m(obj, i3, iJ);
                            e89 e89VarF3 = F(iJ);
                            lb4Var.f(2);
                            lb4Var.l(obj4, e89VarF3, f79Var);
                            q(obj, i3, iJ, obj4);
                            continue;
                        case 61:
                            q89.d(obj, iY & 1048575, lb4Var.y());
                            x(obj, i3, iJ);
                            continue;
                        case 62:
                            lb4Var.f(0);
                            q89.d(obj, iY & 1048575, Integer.valueOf(((gk1) lb4Var.d).S()));
                            x(obj, i3, iJ);
                            continue;
                        case 63:
                            lb4Var.f(0);
                            int iL2 = ((gk1) lb4Var.d).L();
                            E(iJ);
                            q89.d(obj, iY & 1048575, Integer.valueOf(iL2));
                            x(obj, i3, iJ);
                            continue;
                        case 64:
                            lb4Var.f(5);
                            q89.d(obj, iY & 1048575, Integer.valueOf(((gk1) lb4Var.d).P()));
                            x(obj, i3, iJ);
                            continue;
                        case 65:
                            lb4Var.f(1);
                            q89.d(obj, iY & 1048575, Long.valueOf(((gk1) lb4Var.d).V()));
                            x(obj, i3, iJ);
                            continue;
                        case 66:
                            lb4Var.f(0);
                            q89.d(obj, iY & 1048575, Integer.valueOf(((gk1) lb4Var.d).Q()));
                            x(obj, i3, iJ);
                            continue;
                        case 67:
                            lb4Var.f(0);
                            q89.d(obj, iY & 1048575, Long.valueOf(((gk1) lb4Var.d).W()));
                            x(obj, i3, iJ);
                            continue;
                        case 68:
                            Object obj5 = (o69) m(obj, i3, iJ);
                            e89 e89VarF4 = F(iJ);
                            lb4Var.f(3);
                            lb4Var.j(obj5, e89VarF4, f79Var);
                            q(obj, i3, iJ, obj5);
                            continue;
                        default:
                            if (l89VarU == null) {
                                try {
                                    l89VarU = nh4.u(obj);
                                } catch (r79 unused) {
                                    if (l89VarU == null) {
                                        l89VarU = nh4.u(obj);
                                    }
                                    if (!nh4.s(0, lb4Var, l89VarU)) {
                                        while (i2 < i) {
                                            r(obj, iArr[i2], l89VarU);
                                            i2++;
                                        }
                                        if (l89VarU != null) {
                                            ((k79) obj).zzb = l89VarU;
                                            return;
                                        }
                                        return;
                                    }
                                }
                                break;
                            }
                            if (!nh4.s(0, lb4Var, l89VarU)) {
                                while (i2 < i) {
                                    r(obj, iArr[i2], l89VarU);
                                    i2++;
                                }
                                if (l89VarU != null) {
                                    ((k79) obj).zzb = l89VarU;
                                    return;
                                }
                                return;
                            }
                            break;
                            break;
                    }
                    while (i2 < i) {
                        r(obj, iArr[i2], l89VarU);
                        i2++;
                    }
                    if (l89VarU != null) {
                        ((k79) obj).zzb = l89VarU;
                    }
                    throw th;
                }
                if (i3 == Integer.MAX_VALUE) {
                    while (i2 < i) {
                        r(obj, iArr[i2], l89VarU);
                        i2++;
                    }
                    if (l89VarU != null) {
                        ((k79) obj).zzb = l89VarU;
                        return;
                    }
                    return;
                }
                if (l89VarU == null) {
                    l89VarU = nh4.u(obj);
                }
                if (!nh4.s(0, lb4Var, l89VarU)) {
                    while (i2 < i) {
                        r(obj, iArr[i2], l89VarU);
                        i2++;
                    }
                    if (l89VarU != null) {
                        ((k79) obj).zzb = l89VarU;
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                while (i2 < i) {
                    r(obj, iArr[i2], l89VarU);
                    i2++;
                }
                if (l89VarU != null) {
                    ((k79) obj).zzb = l89VarU;
                }
                throw th;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    @Override // defpackage.e89
    public final void i(Object obj, Object obj2) {
        Object obj3;
        H(obj);
        byte[] bArr = l79.a;
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                xh8.J(obj, obj2);
                return;
            }
            int iY = y(i);
            long j2 = 1048575 & iY;
            int i2 = iArr[i];
            switch ((iY & 267386880) >>> 20) {
                case 0:
                    if (!A(i, obj2)) {
                        obj3 = obj;
                    } else {
                        p89 p89Var = q89.c;
                        obj3 = obj;
                        p89Var.c(obj3, j2, p89Var.a(obj2, j2));
                        v(i, obj3);
                    }
                    break;
                case 1:
                    if (A(i, obj2)) {
                        p89 p89Var2 = q89.c;
                        p89Var2.d(obj, j2, p89Var2.h(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 2:
                    if (A(i, obj2)) {
                        q89.c(obj, j2, q89.c.k(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 3:
                    if (A(i, obj2)) {
                        q89.c(obj, j2, q89.c.k(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 4:
                    if (A(i, obj2)) {
                        q89.b(obj, j2, q89.c.j(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 5:
                    if (A(i, obj2)) {
                        q89.c(obj, j2, q89.c.k(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 6:
                    if (A(i, obj2)) {
                        q89.b(obj, j2, q89.c.j(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 7:
                    if (A(i, obj2)) {
                        p89 p89Var3 = q89.c;
                        p89Var3.g(obj, j2, p89Var3.i(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 8:
                    if (A(i, obj2)) {
                        q89.d(obj, j2, q89.m(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    s(obj, obj2, i);
                    obj3 = obj;
                    break;
                case 10:
                    if (A(i, obj2)) {
                        q89.d(obj, j2, q89.m(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    if (A(i, obj2)) {
                        q89.b(obj, j2, q89.c.j(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 12:
                    if (A(i, obj2)) {
                        q89.b(obj, j2, q89.c.j(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 13:
                    if (A(i, obj2)) {
                        q89.b(obj, j2, q89.c.j(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 14:
                    if (A(i, obj2)) {
                        q89.c(obj, j2, q89.c.k(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 15:
                    if (A(i, obj2)) {
                        q89.b(obj, j2, q89.c.j(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case Argon2.V10 /* 16 */:
                    if (A(i, obj2)) {
                        q89.c(obj, j2, q89.c.k(obj2, j2));
                        v(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 17:
                    s(obj, obj2, i);
                    obj3 = obj;
                    break;
                case 18:
                case Argon2.V13 /* 19 */:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    o79 o79VarD = (o79) q89.m(obj, j2);
                    o79 o79Var = (o79) q89.m(obj2, j2);
                    int i3 = ((b89) o79VarD).c;
                    int i4 = ((b89) o79Var).c;
                    if (i3 > 0 && i4 > 0) {
                        if (!((b89) o79VarD).a) {
                            o79VarD = ((b89) o79VarD).d(i4 + i3);
                        }
                        ((b89) o79VarD).addAll(o79Var);
                    }
                    if (i3 > 0) {
                        o79Var = o79VarD;
                    }
                    q89.d(obj, j2, o79Var);
                    obj3 = obj;
                    break;
                case 50:
                    q89.d(obj, j2, k55.M(q89.m(obj, j2), q89.m(obj2, j2)));
                    obj3 = obj;
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (B(obj2, i2, i)) {
                        q89.d(obj, j2, q89.m(obj2, j2));
                        x(obj, i2, i);
                    }
                    obj3 = obj;
                    break;
                case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                    w(i, obj, obj2);
                    obj3 = obj;
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (B(obj2, i2, i)) {
                        q89.d(obj, j2, q89.m(obj2, j2));
                        x(obj, i2, i);
                    }
                    obj3 = obj;
                    break;
                case 68:
                    w(i, obj, obj2);
                    obj3 = obj;
                    break;
                default:
                    obj3 = obj;
                    break;
            }
            i += 3;
            obj = obj3;
        }
    }

    public final int j(int i, int i2) {
        int[] iArr = this.a;
        int length = (iArr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 28161. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final int k(java.lang.Object r33, byte[] r34, int r35, int r36, int r37, defpackage.s69 r38) {
        /*
            Method dump skipped, instruction units count: 2816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.x79.k(java.lang.Object, byte[], int, int, int, s69):int");
    }

    public final Object l(int i, Object obj) {
        e89 e89VarF = F(i);
        long jY = y(i) & 1048575;
        if (!A(i, obj)) {
            return e89VarF.zza();
        }
        Object object = k.getObject(obj, jY);
        if (I(object)) {
            return object;
        }
        k79 k79VarZza = e89VarF.zza();
        if (object != null) {
            e89VarF.i(k79VarZza, object);
        }
        return k79VarZza;
    }

    public final Object m(Object obj, int i, int i2) {
        e89 e89VarF = F(i2);
        if (!B(obj, i, i2)) {
            return e89VarF.zza();
        }
        Object object = k.getObject(obj, y(i2) & 1048575);
        if (I(object)) {
            return object;
        }
        k79 k79VarZza = e89VarF.zza();
        if (object != null) {
            e89VarF.i(k79VarZza, object);
        }
        return k79VarZza;
    }

    public final void p(int i, lb4 lb4Var, Object obj) {
        if ((536870912 & i) != 0) {
            lb4Var.f(2);
            q89.d(obj, i & 1048575, ((gk1) lb4Var.d).a0());
        } else if (!this.f) {
            q89.d(obj, i & 1048575, lb4Var.y());
        } else {
            lb4Var.f(2);
            q89.d(obj, i & 1048575, ((gk1) lb4Var.d).Z());
        }
    }

    public final void q(Object obj, int i, int i2, Object obj2) {
        k.putObject(obj, y(i2) & 1048575, obj2);
        x(obj, i, i2);
    }

    public final void r(Object obj, int i, Object obj2) {
        int i2 = this.a[i];
        if (q89.m(obj, y(i) & 1048575) == null) {
            return;
        }
        E(i);
    }

    public final void s(Object obj, Object obj2, int i) {
        if (A(i, obj2)) {
            long jY = y(i) & 1048575;
            Unsafe unsafe = k;
            Object object = unsafe.getObject(obj2, jY);
            if (object == null) {
                l0.e(u48.k(this.a[i], "Source subfield ", " is present but null: ", String.valueOf(obj2)));
                return;
            }
            e89 e89VarF = F(i);
            if (!A(i, obj)) {
                if (I(object)) {
                    k79 k79VarZza = e89VarF.zza();
                    e89VarF.i(k79VarZza, object);
                    unsafe.putObject(obj, jY, k79VarZza);
                } else {
                    unsafe.putObject(obj, jY, object);
                }
                v(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jY);
            if (!I(object2)) {
                k79 k79VarZza2 = e89VarF.zza();
                e89VarF.i(k79VarZza2, object2);
                unsafe.putObject(obj, jY, k79VarZza2);
                object2 = k79VarZza2;
            }
            e89VarF.i(object2, object);
        }
    }

    public final boolean t(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return A(i, obj);
        }
        return (i3 & i4) != 0;
    }

    public final void u(int i, Object obj, Object obj2) {
        k.putObject(obj, y(i) & 1048575, obj2);
        v(i, obj);
    }

    public final void v(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j2 = 1048575 & i2;
        if (j2 == 1048575) {
            return;
        }
        q89.b(obj, j2, (1 << (i2 >>> 20)) | q89.c.j(obj, j2));
    }

    public final void w(int i, Object obj, Object obj2) {
        int[] iArr = this.a;
        int i2 = iArr[i];
        if (B(obj2, i2, i)) {
            long jY = y(i) & 1048575;
            Unsafe unsafe = k;
            Object object = unsafe.getObject(obj2, jY);
            if (object == null) {
                l0.e(u48.k(iArr[i], "Source subfield ", " is present but null: ", String.valueOf(obj2)));
                return;
            }
            e89 e89VarF = F(i);
            if (!B(obj, i2, i)) {
                if (I(object)) {
                    k79 k79VarZza = e89VarF.zza();
                    e89VarF.i(k79VarZza, object);
                    unsafe.putObject(obj, jY, k79VarZza);
                } else {
                    unsafe.putObject(obj, jY, object);
                }
                x(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, jY);
            if (!I(object2)) {
                k79 k79VarZza2 = e89VarF.zza();
                e89VarF.i(k79VarZza2, object2);
                unsafe.putObject(obj, jY, k79VarZza2);
                object2 = k79VarZza2;
            }
            e89VarF.i(object2, object);
        }
    }

    public final void x(Object obj, int i, int i2) {
        q89.b(obj, this.a[i2 + 2] & 1048575, i);
    }

    public final int y(int i) {
        return this.a[i + 1];
    }

    @Override // defpackage.e89
    public final k79 zza() {
        return ((k79) this.e).p();
    }
}
