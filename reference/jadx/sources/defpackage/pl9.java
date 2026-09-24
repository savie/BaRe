package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import com.nimbusds.jwt.proc.DefaultJWTClaimsVerifier;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.xmlpull.v1.XmlPullParser;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pl9 implements jm9 {
    public static final int[] j = new int[0];
    public static final Unsafe k = un9.i();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final mg9 e;
    public final int[] f;
    public final int g;
    public final int h;
    public final ns0 i;

    public pl9(int[] iArr, Object[] objArr, int i, int i2, mg9 mg9Var, int[] iArr2, int i3, int i4, ns0 ns0Var, lk lkVar) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.f = iArr2;
        this.g = i3;
        this.h = i4;
        this.i = ns0Var;
        this.e = mg9Var;
    }

    public static Field B(Class cls, String str) {
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

    public static boolean o(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof xi9) {
            return ((xi9) obj).h();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0274  */
    /* JADX WARN: Code duplicated, block: B:126:0x0277  */
    /* JADX WARN: Code duplicated, block: B:129:0x0290  */
    /* JADX WARN: Code duplicated, block: B:130:0x0293  */
    /* JADX WARN: Code duplicated, block: B:171:0x035d  */
    /* JADX WARN: Code duplicated, block: B:186:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:189:0x03b5  */
    public static pl9 r(hm9 hm9Var, ns0 ns0Var, lk lkVar) {
        int i;
        int iCharAt;
        int i2;
        int[] iArr;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        char cCharAt;
        int i9;
        char cCharAt2;
        int i10;
        char cCharAt3;
        int i11;
        char cCharAt4;
        int i12;
        char cCharAt5;
        int i13;
        char cCharAt6;
        int i14;
        char cCharAt7;
        int i15;
        char cCharAt8;
        int i16;
        int i17;
        Object[] objArr;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        Field fieldB;
        char cCharAt9;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        Object obj;
        Field fieldB2;
        int i28;
        Object obj2;
        Field fieldB3;
        int i29;
        char cCharAt10;
        int i30;
        char cCharAt11;
        int i31;
        char cCharAt12;
        int i32;
        char cCharAt13;
        if (!(hm9Var instanceof hm9)) {
            e6.d();
            return null;
        }
        String str = hm9Var.b;
        int length = str.length();
        int i33 = 55296;
        if (str.charAt(0) >= 55296) {
            int i34 = 1;
            while (true) {
                i = i34 + 1;
                if (str.charAt(i34) < 55296) {
                    break;
                }
                i34 = i;
            }
        } else {
            i = 1;
        }
        int i35 = i + 1;
        int iCharAt2 = str.charAt(i);
        if (iCharAt2 >= 55296) {
            int i36 = iCharAt2 & 8191;
            int i37 = 13;
            while (true) {
                i32 = i35 + 1;
                cCharAt13 = str.charAt(i35);
                if (cCharAt13 < 55296) {
                    break;
                }
                i36 |= (cCharAt13 & 8191) << i37;
                i37 += 13;
                i35 = i32;
            }
            iCharAt2 = i36 | (cCharAt13 << i37);
            i35 = i32;
        }
        if (iCharAt2 == 0) {
            i4 = 0;
            i6 = 0;
            iCharAt = 0;
            i3 = 0;
            i5 = 0;
            i7 = 0;
            iArr = j;
            i2 = 0;
        } else {
            int i38 = i35 + 1;
            int iCharAt3 = str.charAt(i35);
            if (iCharAt3 >= 55296) {
                int i39 = iCharAt3 & 8191;
                int i40 = 13;
                while (true) {
                    i15 = i38 + 1;
                    cCharAt8 = str.charAt(i38);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i39 |= (cCharAt8 & 8191) << i40;
                    i40 += 13;
                    i38 = i15;
                }
                iCharAt3 = i39 | (cCharAt8 << i40);
                i38 = i15;
            }
            int i41 = i38 + 1;
            int iCharAt4 = str.charAt(i38);
            if (iCharAt4 >= 55296) {
                int i42 = iCharAt4 & 8191;
                int i43 = 13;
                while (true) {
                    i14 = i41 + 1;
                    cCharAt7 = str.charAt(i41);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i42 |= (cCharAt7 & 8191) << i43;
                    i43 += 13;
                    i41 = i14;
                }
                iCharAt4 = i42 | (cCharAt7 << i43);
                i41 = i14;
            }
            int i44 = i41 + 1;
            int iCharAt5 = str.charAt(i41);
            if (iCharAt5 >= 55296) {
                int i45 = iCharAt5 & 8191;
                int i46 = 13;
                while (true) {
                    i13 = i44 + 1;
                    cCharAt6 = str.charAt(i44);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i45 |= (cCharAt6 & 8191) << i46;
                    i46 += 13;
                    i44 = i13;
                }
                iCharAt5 = i45 | (cCharAt6 << i46);
                i44 = i13;
            }
            int i47 = i44 + 1;
            int iCharAt6 = str.charAt(i44);
            if (iCharAt6 >= 55296) {
                int i48 = iCharAt6 & 8191;
                int i49 = 13;
                while (true) {
                    i12 = i47 + 1;
                    cCharAt5 = str.charAt(i47);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i48 |= (cCharAt5 & 8191) << i49;
                    i49 += 13;
                    i47 = i12;
                }
                iCharAt6 = i48 | (cCharAt5 << i49);
                i47 = i12;
            }
            int i50 = i47 + 1;
            iCharAt = str.charAt(i47);
            if (iCharAt >= 55296) {
                int i51 = iCharAt & 8191;
                int i52 = 13;
                while (true) {
                    i11 = i50 + 1;
                    cCharAt4 = str.charAt(i50);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i51 |= (cCharAt4 & 8191) << i52;
                    i52 += 13;
                    i50 = i11;
                }
                iCharAt = i51 | (cCharAt4 << i52);
                i50 = i11;
            }
            int i53 = i50 + 1;
            int iCharAt7 = str.charAt(i50);
            if (iCharAt7 >= 55296) {
                int i54 = iCharAt7 & 8191;
                int i55 = 13;
                while (true) {
                    i10 = i53 + 1;
                    cCharAt3 = str.charAt(i53);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i54 |= (cCharAt3 & 8191) << i55;
                    i55 += 13;
                    i53 = i10;
                }
                iCharAt7 = i54 | (cCharAt3 << i55);
                i53 = i10;
            }
            int i56 = i53 + 1;
            int iCharAt8 = str.charAt(i53);
            if (iCharAt8 >= 55296) {
                int i57 = iCharAt8 & 8191;
                int i58 = 13;
                while (true) {
                    i9 = i56 + 1;
                    cCharAt2 = str.charAt(i56);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i57 |= (cCharAt2 & 8191) << i58;
                    i58 += 13;
                    i56 = i9;
                }
                iCharAt8 = i57 | (cCharAt2 << i58);
                i56 = i9;
            }
            int i59 = i56 + 1;
            int iCharAt9 = str.charAt(i56);
            if (iCharAt9 >= 55296) {
                int i60 = iCharAt9 & 8191;
                int i61 = 13;
                while (true) {
                    i8 = i59 + 1;
                    cCharAt = str.charAt(i59);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i60 |= (cCharAt & 8191) << i61;
                    i61 += 13;
                    i59 = i8;
                }
                iCharAt9 = i60 | (cCharAt << i61);
                i59 = i8;
            }
            int i62 = iCharAt3 + iCharAt3 + iCharAt4;
            i2 = iCharAt3;
            i35 = i59;
            iArr = new int[iCharAt9 + iCharAt7 + iCharAt8];
            int i63 = iCharAt7;
            i3 = iCharAt5;
            i4 = i63;
            i5 = iCharAt6;
            i6 = i62;
            i7 = iCharAt9;
        }
        Unsafe unsafe = k;
        Object[] objArr2 = hm9Var.c;
        Class<?> cls = hm9Var.a.getClass();
        int i64 = i7 + i4;
        int i65 = iCharAt + iCharAt;
        int[] iArr2 = new int[iCharAt * 3];
        Object[] objArr3 = new Object[i65];
        int i66 = i64;
        int i67 = i7;
        int i68 = 0;
        int i69 = 0;
        while (i35 < length) {
            int i70 = i35 + 1;
            int iCharAt10 = str.charAt(i35);
            if (iCharAt10 >= i33) {
                int i71 = iCharAt10 & 8191;
                int i72 = i70;
                int i73 = 13;
                while (true) {
                    i31 = i72 + 1;
                    cCharAt12 = str.charAt(i72);
                    i16 = length;
                    if (cCharAt12 < 55296) {
                        break;
                    }
                    i71 |= (cCharAt12 & 8191) << i73;
                    i73 += 13;
                    i72 = i31;
                    length = i16;
                }
                iCharAt10 = i71 | (cCharAt12 << i73);
                i17 = i31;
            } else {
                i16 = length;
                i17 = i70;
            }
            int i74 = i17 + 1;
            int iCharAt11 = str.charAt(i17);
            Object[] objArr4 = objArr2;
            char c = 55296;
            if (iCharAt11 >= 55296) {
                int i75 = iCharAt11 & 8191;
                int i76 = 13;
                while (true) {
                    i30 = i74 + 1;
                    cCharAt11 = str.charAt(i74);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i75 |= (cCharAt11 & 8191) << i76;
                    i76 += 13;
                    i74 = i30;
                    c = 55296;
                }
                iCharAt11 = i75 | (cCharAt11 << i76);
                i74 = i30;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i68] = i69;
                i68++;
            }
            int i77 = iCharAt11 & 255;
            int i78 = iCharAt10;
            int i79 = iCharAt11 & RSAKeyGenerator.MIN_KEY_SIZE_BITS;
            if (i77 >= 51) {
                int i80 = i74 + 1;
                int iCharAt12 = str.charAt(i74);
                char c2 = 55296;
                if (iCharAt12 >= 55296) {
                    int i81 = iCharAt12 & 8191;
                    int i82 = i80;
                    int i83 = 13;
                    while (true) {
                        i29 = i82 + 1;
                        cCharAt10 = str.charAt(i82);
                        if (cCharAt10 < c2) {
                            break;
                        }
                        i81 |= (cCharAt10 & 8191) << i83;
                        i83 += 13;
                        i82 = i29;
                        c2 = 55296;
                    }
                    iCharAt12 = i81 | (cCharAt10 << i83);
                    i24 = i29;
                } else {
                    i24 = i80;
                }
                int i84 = i24;
                int i85 = i77 - 51;
                int i86 = iCharAt12;
                if (i85 == 9 || i85 == 17) {
                    i25 = i6 + 1;
                    int i87 = i69 / 3;
                    objArr3[i87 + i87 + 1] = objArr4[i6];
                } else {
                    if (i85 != 12) {
                        i26 = i79;
                    } else if (hm9Var.a() == 1 || i79 != 0) {
                        i25 = i6 + 1;
                        int i88 = i69 / 3;
                        objArr3[i88 + i88 + 1] = objArr4[i6];
                    } else {
                        i26 = 0;
                    }
                    i27 = i86 + i86;
                    i79 = i26;
                    obj = objArr4[i27];
                    if (obj instanceof Field) {
                        fieldB2 = (Field) obj;
                    } else {
                        fieldB2 = B(cls, (String) obj);
                        objArr4[i27] = fieldB2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldB2);
                    i28 = i27 + 1;
                    obj2 = objArr4[i28];
                    if (obj2 instanceof Field) {
                        fieldB3 = (Field) obj2;
                    } else {
                        fieldB3 = B(cls, (String) obj2);
                        objArr4[i28] = fieldB3;
                    }
                    i19 = i84;
                    i22 = iObjectFieldOffset3;
                    i18 = 55296;
                    objArr = objArr3;
                    i2 = i2;
                    cls = cls;
                    i21 = 0;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldB3);
                }
                i6 = i25;
                i26 = i79;
                i27 = i86 + i86;
                i79 = i26;
                obj = objArr4[i27];
                if (obj instanceof Field) {
                    fieldB2 = (Field) obj;
                } else {
                    fieldB2 = B(cls, (String) obj);
                    objArr4[i27] = fieldB2;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldB2);
                i28 = i27 + 1;
                obj2 = objArr4[i28];
                if (obj2 instanceof Field) {
                    fieldB3 = (Field) obj2;
                } else {
                    fieldB3 = B(cls, (String) obj2);
                    objArr4[i28] = fieldB3;
                }
                i19 = i84;
                i22 = iObjectFieldOffset4;
                i18 = 55296;
                objArr = objArr3;
                i2 = i2;
                cls = cls;
                i21 = 0;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldB3);
            } else {
                int i89 = i6 + 1;
                Field fieldB4 = B(cls, (String) objArr4[i6]);
                objArr = objArr3;
                if (i77 == 9 || i77 == 17) {
                    int i90 = i69 / 3;
                    objArr[i90 + i90 + 1] = fieldB4.getType();
                } else {
                    if (i77 != 27) {
                        if (i77 == 49) {
                            i6 += 2;
                            i23 = 1;
                        } else if (i77 == 12 || i77 == 30 || i77 == 44) {
                            i2 = i2;
                            if (hm9Var.a() == 1 || i79 != 0) {
                                i6 += 2;
                                int i91 = i69 / 3;
                                objArr[i91 + i91 + 1] = objArr4[i89];
                                cls = cls;
                            } else {
                                cls = cls;
                                i6 = i89;
                                i79 = 0;
                            }
                        } else if (i77 == 50) {
                            int i92 = i6 + 2;
                            i67++;
                            iArr[i67] = i69;
                            int i93 = i69 / 3;
                            int i94 = i93 + i93;
                            objArr[i94] = objArr4[i89];
                            if (i79 != 0) {
                                i6 += 3;
                                objArr[i94 + 1] = objArr4[i92];
                            } else {
                                i6 = i92;
                                i79 = 0;
                            }
                            i2 = i2;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldB4);
                        iObjectFieldOffset2 = 1048575;
                        if ((iCharAt11 & 4096) != 0 || i77 > 17) {
                            i18 = 55296;
                            i19 = i74;
                            i20 = 0;
                        } else {
                            int i95 = i74 + 1;
                            int iCharAt13 = str.charAt(i74);
                            if (iCharAt13 >= 55296) {
                                int i96 = iCharAt13 & 8191;
                                int i97 = 13;
                                while (true) {
                                    i19 = i95 + 1;
                                    cCharAt9 = str.charAt(i95);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i96 |= (cCharAt9 & 8191) << i97;
                                    i97 += 13;
                                    i95 = i19;
                                }
                                iCharAt13 = i96 | (cCharAt9 << i97);
                            } else {
                                i19 = i95;
                            }
                            int i98 = (iCharAt13 / 32) + i2 + i2;
                            Object obj3 = objArr4[i98];
                            if (obj3 instanceof Field) {
                                fieldB = (Field) obj3;
                            } else {
                                fieldB = B(cls, (String) obj3);
                                objArr4[i98] = fieldB;
                            }
                            i20 = iCharAt13 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldB);
                            i18 = 55296;
                        }
                        if (i77 >= 18 && i77 <= 49) {
                            iArr[i66] = iObjectFieldOffset;
                            i66++;
                        }
                        i21 = i20;
                        i22 = iObjectFieldOffset;
                    } else {
                        i23 = 1;
                        i6 += 2;
                    }
                    int i99 = i69 / 3;
                    objArr[i99 + i99 + i23] = objArr4[i89];
                    cls = cls;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldB4);
                    iObjectFieldOffset2 = 1048575;
                    if ((iCharAt11 & 4096) != 0) {
                        i18 = 55296;
                        i19 = i74;
                        i20 = 0;
                    } else {
                        i18 = 55296;
                        i19 = i74;
                        i20 = 0;
                    }
                    if (i77 >= 18) {
                        iArr[i66] = iObjectFieldOffset;
                        i66++;
                    }
                    i21 = i20;
                    i22 = iObjectFieldOffset;
                }
                cls = cls;
                i6 = i89;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldB4);
                iObjectFieldOffset2 = 1048575;
                if ((iCharAt11 & 4096) != 0) {
                    i18 = 55296;
                    i19 = i74;
                    i20 = 0;
                } else {
                    i18 = 55296;
                    i19 = i74;
                    i20 = 0;
                }
                if (i77 >= 18) {
                    iArr[i66] = iObjectFieldOffset;
                    i66++;
                }
                i21 = i20;
                i22 = iObjectFieldOffset;
            }
            int i100 = i79;
            int i101 = i69 + 1;
            iArr2[i69] = i78;
            int i102 = i69 + 2;
            String str2 = str;
            iArr2[i101] = ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | (i100 != 0 ? SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED : 0) | (i77 << 20) | i22;
            i69 += 3;
            iArr2[i102] = (i21 << 20) | iObjectFieldOffset2;
            cls = cls;
            objArr2 = objArr4;
            i33 = i18;
            length = i16;
            objArr3 = objArr;
            i2 = i2;
            i35 = i19;
            str = str2;
        }
        return new pl9(iArr2, objArr3, i3, i5, hm9Var.a, iArr, i7, i64, ns0Var, lkVar);
    }

    public static int s(Object obj, long j2) {
        return ((Integer) un9.h(obj, j2)).intValue();
    }

    public static int u(int i) {
        return (i >>> 20) & 255;
    }

    public static long w(Object obj, long j2) {
        return ((Long) un9.h(obj, j2)).longValue();
    }

    public final Object A(Object obj, int i, int i2) {
        jm9 jm9VarY = y(i2);
        if (!p(obj, i, i2)) {
            return jm9VarY.zze();
        }
        Object object = k.getObject(obj, v(i2) & 1048575);
        if (o(object)) {
            return object;
        }
        xi9 xi9VarZze = jm9VarY.zze();
        if (object != null) {
            jm9VarY.zzg(xi9VarZze, object);
        }
        return xi9VarZze;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00db A[PHI: r1
      0x00db: PHI (r1v34 int) = (r1v10 int), (r1v35 int) binds: [B:85:0x01ea, B:43:0x00d9] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.jm9
    public final int a(xi9 xi9Var) {
        int i;
        long jDoubleToLongBits;
        int i2;
        int iFloatToIntBits;
        int i3;
        int i4;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int[] iArr = this.a;
            if (i5 >= iArr.length) {
                return xi9Var.zzc.hashCode() + (i6 * 53);
            }
            int iV = v(i5);
            int i7 = 1048575 & iV;
            int iU = u(iV);
            int i8 = iArr[i5];
            long j2 = i7;
            int i9 = 1237;
            int iHashCode = 37;
            switch (iU) {
                case 0:
                    i = i6 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(un9.c.a(xi9Var, j2));
                    Charset charset = nj9.a;
                    i6 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 1:
                    i2 = i6 * 53;
                    iFloatToIntBits = Float.floatToIntBits(un9.c.b(xi9Var, j2));
                    i6 = iFloatToIntBits + i2;
                    break;
                case 2:
                    i = i6 * 53;
                    jDoubleToLongBits = un9.f(xi9Var, j2);
                    Charset charset2 = nj9.a;
                    i6 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 3:
                    i = i6 * 53;
                    jDoubleToLongBits = un9.f(xi9Var, j2);
                    Charset charset3 = nj9.a;
                    i6 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 4:
                    i2 = i6 * 53;
                    iFloatToIntBits = un9.e(xi9Var, j2);
                    i6 = iFloatToIntBits + i2;
                    break;
                case 5:
                    i = i6 * 53;
                    jDoubleToLongBits = un9.f(xi9Var, j2);
                    Charset charset4 = nj9.a;
                    i6 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 6:
                    i2 = i6 * 53;
                    iFloatToIntBits = un9.e(xi9Var, j2);
                    i6 = iFloatToIntBits + i2;
                    break;
                case 7:
                    i3 = i6 * 53;
                    boolean zJ = un9.c.j(xi9Var, j2);
                    Charset charset5 = nj9.a;
                    if (zJ) {
                        i9 = 1231;
                    }
                    i6 = i9 + i3;
                    break;
                case 8:
                    i2 = i6 * 53;
                    iFloatToIntBits = ((String) un9.h(xi9Var, j2)).hashCode();
                    i6 = iFloatToIntBits + i2;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    i4 = i6 * 53;
                    Object objH = un9.h(xi9Var, j2);
                    if (objH != null) {
                        iHashCode = objH.hashCode();
                    }
                    i6 = i4 + iHashCode;
                    break;
                case 10:
                    i2 = i6 * 53;
                    iFloatToIntBits = un9.h(xi9Var, j2).hashCode();
                    i6 = iFloatToIntBits + i2;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    i2 = i6 * 53;
                    iFloatToIntBits = un9.e(xi9Var, j2);
                    i6 = iFloatToIntBits + i2;
                    break;
                case 12:
                    i2 = i6 * 53;
                    iFloatToIntBits = un9.e(xi9Var, j2);
                    i6 = iFloatToIntBits + i2;
                    break;
                case 13:
                    i2 = i6 * 53;
                    iFloatToIntBits = un9.e(xi9Var, j2);
                    i6 = iFloatToIntBits + i2;
                    break;
                case 14:
                    i = i6 * 53;
                    jDoubleToLongBits = un9.f(xi9Var, j2);
                    Charset charset6 = nj9.a;
                    i6 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 15:
                    i2 = i6 * 53;
                    iFloatToIntBits = un9.e(xi9Var, j2);
                    i6 = iFloatToIntBits + i2;
                    break;
                case Argon2.V10 /* 16 */:
                    i = i6 * 53;
                    jDoubleToLongBits = un9.f(xi9Var, j2);
                    Charset charset7 = nj9.a;
                    i6 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 17:
                    i4 = i6 * 53;
                    Object objH2 = un9.h(xi9Var, j2);
                    if (objH2 != null) {
                        iHashCode = objH2.hashCode();
                    }
                    i6 = i4 + iHashCode;
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
                    i2 = i6 * 53;
                    iFloatToIntBits = un9.h(xi9Var, j2).hashCode();
                    i6 = iFloatToIntBits + i2;
                    break;
                case 50:
                    i2 = i6 * 53;
                    iFloatToIntBits = un9.h(xi9Var, j2).hashCode();
                    i6 = iFloatToIntBits + i2;
                    break;
                case 51:
                    if (p(xi9Var, i8, i5)) {
                        i = i6 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(((Double) un9.h(xi9Var, j2)).doubleValue());
                        Charset charset8 = nj9.a;
                        i6 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 52:
                    if (p(xi9Var, i8, i5)) {
                        i2 = i6 * 53;
                        iFloatToIntBits = Float.floatToIntBits(((Float) un9.h(xi9Var, j2)).floatValue());
                        i6 = iFloatToIntBits + i2;
                    }
                    break;
                case 53:
                    if (p(xi9Var, i8, i5)) {
                        i = i6 * 53;
                        jDoubleToLongBits = w(xi9Var, j2);
                        Charset charset9 = nj9.a;
                        i6 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 54:
                    if (p(xi9Var, i8, i5)) {
                        i = i6 * 53;
                        jDoubleToLongBits = w(xi9Var, j2);
                        Charset charset10 = nj9.a;
                        i6 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 55:
                    if (p(xi9Var, i8, i5)) {
                        i2 = i6 * 53;
                        iFloatToIntBits = s(xi9Var, j2);
                        i6 = iFloatToIntBits + i2;
                    }
                    break;
                case 56:
                    if (p(xi9Var, i8, i5)) {
                        i = i6 * 53;
                        jDoubleToLongBits = w(xi9Var, j2);
                        Charset charset11 = nj9.a;
                        i6 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 57:
                    if (p(xi9Var, i8, i5)) {
                        i2 = i6 * 53;
                        iFloatToIntBits = s(xi9Var, j2);
                        i6 = iFloatToIntBits + i2;
                    }
                    break;
                case 58:
                    if (p(xi9Var, i8, i5)) {
                        i3 = i6 * 53;
                        boolean zBooleanValue = ((Boolean) un9.h(xi9Var, j2)).booleanValue();
                        Charset charset12 = nj9.a;
                        if (zBooleanValue) {
                            i9 = 1231;
                        }
                        i6 = i9 + i3;
                    }
                    break;
                case 59:
                    if (p(xi9Var, i8, i5)) {
                        i2 = i6 * 53;
                        iFloatToIntBits = ((String) un9.h(xi9Var, j2)).hashCode();
                        i6 = iFloatToIntBits + i2;
                    }
                    break;
                case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                    if (p(xi9Var, i8, i5)) {
                        i2 = i6 * 53;
                        iFloatToIntBits = un9.h(xi9Var, j2).hashCode();
                        i6 = iFloatToIntBits + i2;
                    }
                    break;
                case 61:
                    if (p(xi9Var, i8, i5)) {
                        i2 = i6 * 53;
                        iFloatToIntBits = un9.h(xi9Var, j2).hashCode();
                        i6 = iFloatToIntBits + i2;
                    }
                    break;
                case 62:
                    if (p(xi9Var, i8, i5)) {
                        i2 = i6 * 53;
                        iFloatToIntBits = s(xi9Var, j2);
                        i6 = iFloatToIntBits + i2;
                    }
                    break;
                case 63:
                    if (p(xi9Var, i8, i5)) {
                        i2 = i6 * 53;
                        iFloatToIntBits = s(xi9Var, j2);
                        i6 = iFloatToIntBits + i2;
                    }
                    break;
                case 64:
                    if (p(xi9Var, i8, i5)) {
                        i2 = i6 * 53;
                        iFloatToIntBits = s(xi9Var, j2);
                        i6 = iFloatToIntBits + i2;
                    }
                    break;
                case 65:
                    if (p(xi9Var, i8, i5)) {
                        i = i6 * 53;
                        jDoubleToLongBits = w(xi9Var, j2);
                        Charset charset13 = nj9.a;
                        i6 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 66:
                    if (p(xi9Var, i8, i5)) {
                        i2 = i6 * 53;
                        iFloatToIntBits = s(xi9Var, j2);
                        i6 = iFloatToIntBits + i2;
                    }
                    break;
                case 67:
                    if (p(xi9Var, i8, i5)) {
                        i = i6 * 53;
                        jDoubleToLongBits = w(xi9Var, j2);
                        Charset charset14 = nj9.a;
                        i6 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 68:
                    if (p(xi9Var, i8, i5)) {
                        i2 = i6 * 53;
                        iFloatToIntBits = un9.h(xi9Var, j2).hashCode();
                        i6 = iFloatToIntBits + i2;
                    }
                    break;
            }
            i5 += 3;
        }
    }

    @Override // defpackage.jm9
    public final void b(Object obj, byte[] bArr, int i, int i2, rg9 rg9Var) {
        q(obj, bArr, i, i2, 0, rg9Var);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // defpackage.jm9
    public final void c(Object obj, om5 om5Var) throws uh9 {
        int i;
        int i2;
        nh9 nh9Var = (nh9) om5Var.a;
        Unsafe unsafe = k;
        int i3 = 1048575;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int[] iArr = this.a;
            if (i5 >= iArr.length) {
                ((xi9) obj).zzc.d(om5Var);
                return;
            }
            int iV = v(i5);
            int iU = u(iV);
            int i7 = iArr[i5];
            if (iU <= 17) {
                int i8 = iArr[i5 + 2];
                int i9 = i8 & i3;
                if (i9 != i4) {
                    i6 = i9 == i3 ? 0 : unsafe.getInt(obj, i9);
                    i4 = i9;
                }
                i = 1 << (i8 >>> 20);
            } else {
                i = 0;
            }
            long j2 = iV & i3;
            char c = 3;
            switch (iU) {
                case 0:
                    if (n(obj, i5, i4, i6, i)) {
                        nh9Var.e(i7, Double.doubleToRawLongBits(un9.c.a(obj, j2)));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 1:
                    if (n(obj, i5, i4, i6, i)) {
                        nh9Var.c(i7, Float.floatToRawIntBits(un9.c.b(obj, j2)));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 2:
                    if (n(obj, i5, i4, i6, i)) {
                        nh9Var.l(i7, unsafe.getLong(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 3:
                    if (n(obj, i5, i4, i6, i)) {
                        nh9Var.l(i7, unsafe.getLong(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 4:
                    if (n(obj, i5, i4, i6, i)) {
                        nh9Var.g(i7, unsafe.getInt(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 5:
                    if (n(obj, i5, i4, i6, i)) {
                        nh9Var.e(i7, unsafe.getLong(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 6:
                    if (n(obj, i5, i4, i6, i)) {
                        nh9Var.c(i7, unsafe.getInt(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 7:
                    if (n(obj, i5, i4, i6, i)) {
                        boolean zJ = un9.c.j(obj, j2);
                        nh9Var.k(i7 << 3);
                        nh9Var.a(zJ ? (byte) 1 : (byte) 0);
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 8:
                    if (n(obj, i5, i4, i6, i)) {
                        Object object = unsafe.getObject(obj, j2);
                        if (object instanceof String) {
                            String str = (String) object;
                            nh9Var.k((i7 << 3) | 2);
                            int i10 = nh9Var.c;
                            byte[] bArr = nh9Var.b;
                            int i11 = nh9Var.d;
                            try {
                                int iN = nh9.n(str.length() * 3);
                                int iN2 = nh9.n(str.length());
                                if (iN2 == iN) {
                                    int i12 = i11 + iN2;
                                    nh9Var.d = i12;
                                    int iA = xn9.a(str, bArr, i12, i10 - i12);
                                    nh9Var.d = i11;
                                    nh9Var.k((iA - i11) - iN2);
                                    nh9Var.d = iA;
                                } else {
                                    nh9Var.k(xn9.b(str));
                                    int i13 = nh9Var.d;
                                    nh9Var.d = xn9.a(str, bArr, i13, i10 - i13);
                                }
                            } catch (IndexOutOfBoundsException e) {
                                throw new uh9("CodedOutputStream was writing to a flat byte array and ran out of space.", e);
                            }
                        } else {
                            dh9 dh9Var = (dh9) object;
                            nh9Var.k((i7 << 3) | 2);
                            nh9Var.k(dh9Var.f());
                            dh9Var.i(nh9Var);
                        }
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    if (n(obj, i5, i4, i6, i)) {
                        om5Var.m(i7, unsafe.getObject(obj, j2), y(i5));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 10:
                    if (n(obj, i5, i4, i6, i)) {
                        dh9 dh9Var2 = (dh9) unsafe.getObject(obj, j2);
                        nh9Var.k((i7 << 3) | 2);
                        nh9Var.k(dh9Var2.f());
                        dh9Var2.i(nh9Var);
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    if (n(obj, i5, i4, i6, i)) {
                        nh9Var.j(i7, unsafe.getInt(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 12:
                    if (n(obj, i5, i4, i6, i)) {
                        nh9Var.g(i7, unsafe.getInt(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 13:
                    if (n(obj, i5, i4, i6, i)) {
                        nh9Var.c(i7, unsafe.getInt(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 14:
                    if (n(obj, i5, i4, i6, i)) {
                        nh9Var.e(i7, unsafe.getLong(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 15:
                    if (n(obj, i5, i4, i6, i)) {
                        int i14 = unsafe.getInt(obj, j2);
                        nh9Var.j(i7, (i14 >> 31) ^ (i14 + i14));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case Argon2.V10 /* 16 */:
                    if (n(obj, i5, i4, i6, i)) {
                        long j3 = unsafe.getLong(obj, j2);
                        nh9Var.l(i7, (j3 >> 63) ^ (j3 + j3));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 17:
                    if (n(obj, i5, i4, i6, i)) {
                        Object object2 = unsafe.getObject(obj, j2);
                        nh9Var.i(i7, 3);
                        y(i5).c((mg9) object2, om5Var);
                        nh9Var.i(i7, 4);
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 18:
                    i2 = i5;
                    nm9.r(iArr[i2], (List) unsafe.getObject(obj, j2), om5Var, false);
                    i5 = i2;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case Argon2.V13 /* 19 */:
                    i2 = i5;
                    nm9.v(iArr[i2], (List) unsafe.getObject(obj, j2), om5Var, false);
                    i5 = i2;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 20:
                    i2 = i5;
                    nm9.x(iArr[i2], (List) unsafe.getObject(obj, j2), om5Var, false);
                    i5 = i2;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 21:
                    i2 = i5;
                    nm9.e(iArr[i2], (List) unsafe.getObject(obj, j2), om5Var, false);
                    i5 = i2;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 22:
                    i2 = i5;
                    nm9.w(iArr[i2], (List) unsafe.getObject(obj, j2), om5Var, false);
                    i5 = i2;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 23:
                    i2 = i5;
                    nm9.u(iArr[i2], (List) unsafe.getObject(obj, j2), om5Var, false);
                    i5 = i2;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 24:
                    i2 = i5;
                    nm9.t(iArr[i2], (List) unsafe.getObject(obj, j2), om5Var, false);
                    i5 = i2;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 25:
                    i2 = i5;
                    nm9.q(iArr[i2], (List) unsafe.getObject(obj, j2), om5Var, false);
                    i5 = i2;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 26:
                    int i15 = iArr[i5];
                    List list = (List) unsafe.getObject(obj, j2);
                    ns0 ns0Var = nm9.a;
                    if (list != null && !list.isEmpty()) {
                        int i16 = 0;
                        while (i16 < list.size()) {
                            String str2 = (String) list.get(i16);
                            nh9Var.k((i15 << 3) | 2);
                            int i17 = nh9Var.c;
                            byte[] bArr2 = nh9Var.b;
                            char c2 = c;
                            int i18 = nh9Var.d;
                            try {
                                int iN3 = nh9.n(str2.length() * 3);
                                int i19 = i5;
                                int iN4 = nh9.n(str2.length());
                                if (iN4 == iN3) {
                                    int i20 = i18 + iN4;
                                    nh9Var.d = i20;
                                    int iA2 = xn9.a(str2, bArr2, i20, i17 - i20);
                                    nh9Var.d = i18;
                                    nh9Var.k((iA2 - i18) - iN4);
                                    nh9Var.d = iA2;
                                } else {
                                    nh9Var.k(xn9.b(str2));
                                    int i21 = nh9Var.d;
                                    nh9Var.d = xn9.a(str2, bArr2, i21, i17 - i21);
                                }
                                i16++;
                                c = c2;
                                i5 = i19;
                            } catch (IndexOutOfBoundsException e2) {
                                throw new uh9("CodedOutputStream was writing to a flat byte array and ran out of space.", e2);
                            }
                        }
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 27:
                    int i22 = iArr[i5];
                    List list2 = (List) unsafe.getObject(obj, j2);
                    jm9 jm9VarY = y(i5);
                    ns0 ns0Var2 = nm9.a;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i23 = 0; i23 < list2.size(); i23++) {
                            om5Var.m(i22, list2.get(i23), jm9VarY);
                        }
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 28:
                    int i24 = iArr[i5];
                    List list3 = (List) unsafe.getObject(obj, j2);
                    ns0 ns0Var3 = nm9.a;
                    if (list3 != null && !list3.isEmpty()) {
                        for (int i25 = 0; i25 < list3.size(); i25++) {
                            dh9 dh9Var3 = (dh9) list3.get(i25);
                            nh9Var.k((i24 << 3) | 2);
                            nh9Var.k(dh9Var3.f());
                            dh9Var3.i(nh9Var);
                        }
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 29:
                    nm9.d(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, false);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                    nm9.s(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, false);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 31:
                    nm9.y(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, false);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 32:
                    nm9.a(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, false);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 33:
                    nm9.b(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, false);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 34:
                    nm9.c(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, false);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 35:
                    nm9.r(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, true);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 36:
                    nm9.v(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, true);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 37:
                    nm9.x(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, true);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 38:
                    nm9.e(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, true);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 39:
                    nm9.w(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, true);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 40:
                    nm9.u(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, true);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 41:
                    nm9.t(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, true);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 42:
                    nm9.q(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, true);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 43:
                    nm9.d(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, true);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 44:
                    nm9.s(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, true);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 45:
                    nm9.y(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, true);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 46:
                    nm9.a(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, true);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 47:
                    nm9.b(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, true);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 48:
                    nm9.c(iArr[i5], (List) unsafe.getObject(obj, j2), om5Var, true);
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 49:
                    int i26 = iArr[i5];
                    List list4 = (List) unsafe.getObject(obj, j2);
                    jm9 jm9VarY2 = y(i5);
                    ns0 ns0Var4 = nm9.a;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i27 = 0; i27 < list4.size(); i27++) {
                            mg9 mg9Var = (mg9) list4.get(i27);
                            nh9Var.i(i26, 3);
                            jm9VarY2.c(mg9Var, om5Var);
                            nh9Var.i(i26, 4);
                        }
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 50:
                    if (unsafe.getObject(obj, j2) != null) {
                        int i28 = i5 / 3;
                        throw eq3.g(this.b[i28 + i28]);
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 51:
                    if (p(obj, i7, i5)) {
                        nh9Var.e(i7, Double.doubleToRawLongBits(((Double) un9.h(obj, j2)).doubleValue()));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 52:
                    if (p(obj, i7, i5)) {
                        nh9Var.c(i7, Float.floatToRawIntBits(((Float) un9.h(obj, j2)).floatValue()));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 53:
                    if (p(obj, i7, i5)) {
                        nh9Var.l(i7, w(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 54:
                    if (p(obj, i7, i5)) {
                        nh9Var.l(i7, w(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 55:
                    if (p(obj, i7, i5)) {
                        nh9Var.g(i7, s(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 56:
                    if (p(obj, i7, i5)) {
                        nh9Var.e(i7, w(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 57:
                    if (p(obj, i7, i5)) {
                        nh9Var.c(i7, s(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 58:
                    if (p(obj, i7, i5)) {
                        boolean zBooleanValue = ((Boolean) un9.h(obj, j2)).booleanValue();
                        nh9Var.k(i7 << 3);
                        nh9Var.a(zBooleanValue ? (byte) 1 : (byte) 0);
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 59:
                    if (p(obj, i7, i5)) {
                        Object object3 = unsafe.getObject(obj, j2);
                        if (object3 instanceof String) {
                            String str3 = (String) object3;
                            nh9Var.k((i7 << 3) | 2);
                            int i29 = nh9Var.c;
                            byte[] bArr3 = nh9Var.b;
                            int i30 = nh9Var.d;
                            try {
                                int iN5 = nh9.n(str3.length() * 3);
                                int iN6 = nh9.n(str3.length());
                                if (iN6 == iN5) {
                                    int i31 = i30 + iN6;
                                    nh9Var.d = i31;
                                    int iA3 = xn9.a(str3, bArr3, i31, i29 - i31);
                                    nh9Var.d = i30;
                                    nh9Var.k((iA3 - i30) - iN6);
                                    nh9Var.d = iA3;
                                } else {
                                    nh9Var.k(xn9.b(str3));
                                    int i32 = nh9Var.d;
                                    nh9Var.d = xn9.a(str3, bArr3, i32, i29 - i32);
                                }
                            } catch (IndexOutOfBoundsException e3) {
                                throw new uh9("CodedOutputStream was writing to a flat byte array and ran out of space.", e3);
                            }
                        } else {
                            dh9 dh9Var4 = (dh9) object3;
                            nh9Var.k((i7 << 3) | 2);
                            nh9Var.k(dh9Var4.f());
                            dh9Var4.i(nh9Var);
                        }
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                    if (p(obj, i7, i5)) {
                        om5Var.m(i7, unsafe.getObject(obj, j2), y(i5));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 61:
                    if (p(obj, i7, i5)) {
                        dh9 dh9Var5 = (dh9) unsafe.getObject(obj, j2);
                        nh9Var.k((i7 << 3) | 2);
                        nh9Var.k(dh9Var5.f());
                        dh9Var5.i(nh9Var);
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 62:
                    if (p(obj, i7, i5)) {
                        nh9Var.j(i7, s(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 63:
                    if (p(obj, i7, i5)) {
                        nh9Var.g(i7, s(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 64:
                    if (p(obj, i7, i5)) {
                        nh9Var.c(i7, s(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 65:
                    if (p(obj, i7, i5)) {
                        nh9Var.e(i7, w(obj, j2));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 66:
                    if (p(obj, i7, i5)) {
                        int iS = s(obj, j2);
                        nh9Var.j(i7, (iS >> 31) ^ (iS + iS));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 67:
                    if (p(obj, i7, i5)) {
                        long jW = w(obj, j2);
                        nh9Var.l(i7, (jW >> 63) ^ (jW + jW));
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 68:
                    if (p(obj, i7, i5)) {
                        Object object4 = unsafe.getObject(obj, j2);
                        nh9Var.i(i7, 3);
                        y(i5).c((mg9) object4, om5Var);
                        nh9Var.i(i7, 4);
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                default:
                    i5 += 3;
                    i3 = 1048575;
                    break;
            }
        }
    }

    @Override // defpackage.jm9
    public final boolean d(Object obj) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i4 < this.g) {
            int i6 = this.f[i4];
            int[] iArr = this.a;
            int i7 = iArr[i6];
            int iV = v(i6);
            int i8 = iArr[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i5) {
                if (i9 != 1048575) {
                    i3 = k.getInt(obj, i9);
                }
                i2 = i3;
                i = i9;
            } else {
                int i11 = i3;
                i = i5;
                i2 = i11;
            }
            if ((268435456 & iV) == 0 || n(obj, i6, i, i2, i10)) {
                int iU = u(iV);
                if (iU != 9 && iU != 17) {
                    if (iU != 27) {
                        if (iU == 60 || iU == 68) {
                            if (!p(obj, i7, i6) || y(i6).d(un9.h(obj, iV & 1048575))) {
                            }
                        } else if (iU != 49) {
                            if (iU == 50 && !((xk9) un9.h(obj, iV & 1048575)).isEmpty()) {
                                int i12 = i6 / 3;
                                throw eq3.g(this.b[i12 + i12]);
                            }
                        }
                        i4++;
                        i5 = i;
                        i3 = i2;
                    }
                    List list = (List) un9.h(obj, iV & 1048575);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        jm9 jm9VarY = y(i6);
                        for (int i13 = 0; i13 < list.size(); i13++) {
                            if (jm9VarY.d(list.get(i13))) {
                            }
                        }
                    }
                    i4++;
                    i5 = i;
                    i3 = i2;
                } else if (!n(obj, i6, i, i2, i10) || y(i6).d(un9.h(obj, iV & 1048575))) {
                    i4++;
                    i5 = i;
                    i3 = i2;
                }
            }
            return false;
        }
        return true;
    }

    @Override // defpackage.jm9
    public final boolean e(xi9 xi9Var, xi9 xi9Var2) {
        boolean zF;
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i < iArr.length) {
                int iV = v(i);
                long j2 = iV & 1048575;
                switch (u(iV)) {
                    case 0:
                        if (l(xi9Var, xi9Var2, i)) {
                            cm9 cm9Var = un9.c;
                            if (Double.doubleToLongBits(cm9Var.a(xi9Var, j2)) == Double.doubleToLongBits(cm9Var.a(xi9Var2, j2))) {
                                continue;
                                i += 3;
                            }
                        }
                        break;
                    case 1:
                        if (l(xi9Var, xi9Var2, i)) {
                            cm9 cm9Var2 = un9.c;
                            if (Float.floatToIntBits(cm9Var2.b(xi9Var, j2)) == Float.floatToIntBits(cm9Var2.b(xi9Var2, j2))) {
                                continue;
                                i += 3;
                            }
                        }
                        break;
                    case 2:
                        if (l(xi9Var, xi9Var2, i) && un9.f(xi9Var, j2) == un9.f(xi9Var2, j2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 3:
                        if (l(xi9Var, xi9Var2, i) && un9.f(xi9Var, j2) == un9.f(xi9Var2, j2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 4:
                        if (l(xi9Var, xi9Var2, i) && un9.e(xi9Var, j2) == un9.e(xi9Var2, j2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 5:
                        if (l(xi9Var, xi9Var2, i) && un9.f(xi9Var, j2) == un9.f(xi9Var2, j2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 6:
                        if (l(xi9Var, xi9Var2, i) && un9.e(xi9Var, j2) == un9.e(xi9Var2, j2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 7:
                        if (l(xi9Var, xi9Var2, i)) {
                            cm9 cm9Var3 = un9.c;
                            if (cm9Var3.j(xi9Var, j2) == cm9Var3.j(xi9Var2, j2)) {
                                continue;
                                i += 3;
                            }
                        }
                        break;
                    case 8:
                        if (l(xi9Var, xi9Var2, i) && nm9.f(un9.h(xi9Var, j2), un9.h(xi9Var2, j2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case XmlPullParser.COMMENT /* 9 */:
                        if (l(xi9Var, xi9Var2, i) && nm9.f(un9.h(xi9Var, j2), un9.h(xi9Var2, j2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 10:
                        if (l(xi9Var, xi9Var2, i) && nm9.f(un9.h(xi9Var, j2), un9.h(xi9Var2, j2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case ModuleDescriptor.MODULE_VERSION /* 11 */:
                        if (l(xi9Var, xi9Var2, i) && un9.e(xi9Var, j2) == un9.e(xi9Var2, j2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 12:
                        if (l(xi9Var, xi9Var2, i) && un9.e(xi9Var, j2) == un9.e(xi9Var2, j2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 13:
                        if (l(xi9Var, xi9Var2, i) && un9.e(xi9Var, j2) == un9.e(xi9Var2, j2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 14:
                        if (l(xi9Var, xi9Var2, i) && un9.f(xi9Var, j2) == un9.f(xi9Var2, j2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 15:
                        if (l(xi9Var, xi9Var2, i) && un9.e(xi9Var, j2) == un9.e(xi9Var2, j2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case Argon2.V10 /* 16 */:
                        if (l(xi9Var, xi9Var2, i) && un9.f(xi9Var, j2) == un9.f(xi9Var2, j2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 17:
                        if (l(xi9Var, xi9Var2, i) && nm9.f(un9.h(xi9Var, j2), un9.h(xi9Var2, j2))) {
                            continue;
                            i += 3;
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
                        zF = nm9.f(un9.h(xi9Var, j2), un9.h(xi9Var2, j2));
                        break;
                    case 50:
                        zF = nm9.f(un9.h(xi9Var, j2), un9.h(xi9Var2, j2));
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
                        long j3 = iArr[i + 2] & 1048575;
                        if (un9.e(xi9Var, j3) == un9.e(xi9Var2, j3) && nm9.f(un9.h(xi9Var, j2), un9.h(xi9Var2, j2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    default:
                        continue;
                        i += 3;
                        break;
                }
                if (zF) {
                    i += 3;
                }
            } else if (xi9Var.zzc.equals(xi9Var2.zzc)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:147:0x0367  */
    /* JADX WARN: Code duplicated, block: B:192:0x0489  */
    /* JADX WARN: Code duplicated, block: B:224:0x057a  */
    /* JADX WARN: Code duplicated, block: B:227:0x0588  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:38:0x00bf  */
    @Override // defpackage.jm9
    public final int f(mg9 mg9Var) {
        int i;
        int iN;
        int iO;
        int iN2;
        int iB;
        int iN3;
        int iC;
        int i2;
        int iN4;
        int i3;
        int i4;
        int iC2;
        int iN5;
        int size;
        int iO2;
        int iN6;
        int iN7;
        int iN8;
        int size2;
        int iN9;
        int iC3;
        int iN10;
        int iO3;
        int iN11;
        int iB2;
        int iS;
        int iN12;
        Unsafe unsafe = k;
        int i5 = 1048575;
        int i6 = 1048575;
        int i7 = 0;
        int i8 = 0;
        int iT = 0;
        while (true) {
            int[] iArr = this.a;
            if (i7 >= iArr.length) {
                return ((xi9) mg9Var).zzc.a() + iT;
            }
            int iV = v(i7);
            int iU = u(iV);
            int i9 = iArr[i7];
            int i10 = iArr[i7 + 2];
            int i11 = i10 & i5;
            if (iU <= 17) {
                if (i11 != i6) {
                    i8 = i11 == i5 ? 0 : unsafe.getInt(mg9Var, i11);
                    i6 = i11;
                }
                i = 1 << (i10 >>> 20);
            } else {
                i = 0;
            }
            int i12 = iV & i5;
            if (iU >= ni9.b.a) {
                ni9.c.getClass();
            }
            long j2 = i12;
            switch (iU) {
                case 0:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        iT = u48.t(i9 << 3, 8, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 1:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        iT = u48.t(i9 << 3, 4, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 2:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        long j3 = unsafe.getLong(mg9Var, j2);
                        iN = nh9.n(i9 << 3);
                        iO = nh9.o(j3);
                        i3 = iO + iN;
                        iT += i3;
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 3:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        long j4 = unsafe.getLong(mg9Var, j2);
                        iN = nh9.n(i9 << 3);
                        iO = nh9.o(j4);
                        i3 = iO + iN;
                        iT += i3;
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 4:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        long j5 = unsafe.getInt(mg9Var, j2);
                        iN = nh9.n(i9 << 3);
                        iO = nh9.o(j5);
                        i3 = iO + iN;
                        iT += i3;
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 5:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        iT = u48.t(i9 << 3, 8, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 6:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        iT = u48.t(i9 << 3, 4, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 7:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        iT = u48.t(i9 << 3, 1, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 8:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        int i13 = i9 << 3;
                        Object object = unsafe.getObject(mg9Var, j2);
                        if (object instanceof dh9) {
                            iN2 = nh9.n(i13);
                            iB = ((dh9) object).f();
                        } else {
                            iN2 = nh9.n(i13);
                            iB = xn9.b((String) object);
                        }
                        iT = u48.i(iB, iB, iN2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        Object object2 = unsafe.getObject(mg9Var, j2);
                        jm9 jm9VarY = y(i7);
                        ns0 ns0Var = nm9.a;
                        iN3 = nh9.n(i9 << 3);
                        iC = ((mg9) object2).c(jm9VarY);
                        iT = u48.i(iC, iC, iN3, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 10:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        dh9 dh9Var = (dh9) unsafe.getObject(mg9Var, j2);
                        iN2 = nh9.n(i9 << 3);
                        iB = dh9Var.f();
                        iT = u48.i(iB, iB, iN2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        i2 = unsafe.getInt(mg9Var, j2);
                        iN4 = nh9.n(i9 << 3);
                        iT = u48.t(i2, iN4, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 12:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        long j6 = unsafe.getInt(mg9Var, j2);
                        iN = nh9.n(i9 << 3);
                        iO = nh9.o(j6);
                        i3 = iO + iN;
                        iT += i3;
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 13:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        iT = u48.t(i9 << 3, 4, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 14:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        iT = u48.t(i9 << 3, 8, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 15:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        int i14 = unsafe.getInt(mg9Var, j2);
                        iN4 = nh9.n(i9 << 3);
                        i2 = (i14 >> 31) ^ (i14 + i14);
                        iT = u48.t(i2, iN4, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case Argon2.V10 /* 16 */:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        long j7 = unsafe.getLong(mg9Var, j2);
                        iN = nh9.n(i9 << 3);
                        iO = nh9.o((j7 >> 63) ^ (j7 + j7));
                        i3 = iO + iN;
                        iT += i3;
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 17:
                    if (n(mg9Var, i7, i6, i8, i)) {
                        mg9 mg9Var2 = (mg9) unsafe.getObject(mg9Var, j2);
                        jm9 jm9VarY2 = y(i7);
                        ns0 ns0Var2 = nm9.a;
                        int iN13 = nh9.n(i9 << 3);
                        i4 = iN13 + iN13;
                        iC2 = mg9Var2.c(jm9VarY2);
                        i3 = iC2 + i4;
                        iT += i3;
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 18:
                    i3 = nm9.i(i9, (List) unsafe.getObject(mg9Var, j2));
                    iT += i3;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case Argon2.V13 /* 19 */:
                    i3 = nm9.h(i9, (List) unsafe.getObject(mg9Var, j2));
                    iT += i3;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var3 = nm9.a;
                    if (list.size() == 0) {
                        iN5 = 0;
                    } else {
                        iN5 = (nh9.n(i9 << 3) * list.size()) + nm9.k(list);
                    }
                    iT += iN5;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var4 = nm9.a;
                    size = list2.size();
                    if (size == 0) {
                        iN7 = 0;
                    } else {
                        iO2 = nm9.o(list2);
                        iN6 = nh9.n(i9 << 3);
                        iN7 = (iN6 * size) + iO2;
                    }
                    iT += iN7;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var5 = nm9.a;
                    size = list3.size();
                    if (size == 0) {
                        iN7 = 0;
                    } else {
                        iO2 = nm9.j(list3);
                        iN6 = nh9.n(i9 << 3);
                        iN7 = (iN6 * size) + iO2;
                    }
                    iT += iN7;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 23:
                    i3 = nm9.i(i9, (List) unsafe.getObject(mg9Var, j2));
                    iT += i3;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 24:
                    i3 = nm9.h(i9, (List) unsafe.getObject(mg9Var, j2));
                    iT += i3;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var6 = nm9.a;
                    int size3 = list4.size();
                    if (size3 == 0) {
                        iN5 = 0;
                    } else {
                        iN5 = (nh9.n(i9 << 3) + 1) * size3;
                    }
                    iT += iN5;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 26:
                    List list5 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var7 = nm9.a;
                    int size4 = list5.size();
                    if (size4 == 0) {
                        iN7 = 0;
                    } else {
                        iN7 = nh9.n(i9 << 3) * size4;
                        for (int i15 = 0; i15 < size4; i15++) {
                            Object obj = list5.get(i15);
                            int iF = obj instanceof dh9 ? ((dh9) obj).f() : xn9.b((String) obj);
                            iN7 = u48.t(iF, iF, iN7);
                        }
                    }
                    iT += iN7;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(mg9Var, j2);
                    jm9 jm9VarY3 = y(i7);
                    ns0 ns0Var8 = nm9.a;
                    int size5 = list6.size();
                    if (size5 == 0) {
                        iN8 = 0;
                    } else {
                        iN8 = nh9.n(i9 << 3) * size5;
                        for (int i16 = 0; i16 < size5; i16++) {
                            int iC4 = ((mg9) list6.get(i16)).c(jm9VarY3);
                            iN8 = u48.t(iC4, iC4, iN8);
                        }
                    }
                    iT += iN8;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 28:
                    List list7 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var9 = nm9.a;
                    int size6 = list7.size();
                    if (size6 == 0) {
                        iN7 = 0;
                    } else {
                        iN7 = nh9.n(i9 << 3) * size6;
                        for (int i17 = 0; i17 < list7.size(); i17++) {
                            int iF2 = ((dh9) list7.get(i17)).f();
                            iN7 = u48.t(iF2, iF2, iN7);
                        }
                    }
                    iT += iN7;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 29:
                    List list8 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var10 = nm9.a;
                    size = list8.size();
                    if (size == 0) {
                        iN7 = 0;
                    } else {
                        iO2 = nm9.n(list8);
                        iN6 = nh9.n(i9 << 3);
                        iN7 = (iN6 * size) + iO2;
                    }
                    iT += iN7;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                    List list9 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var11 = nm9.a;
                    size = list9.size();
                    if (size == 0) {
                        iN7 = 0;
                    } else {
                        iO2 = nm9.g(list9);
                        iN6 = nh9.n(i9 << 3);
                        iN7 = (iN6 * size) + iO2;
                    }
                    iT += iN7;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 31:
                    i3 = nm9.h(i9, (List) unsafe.getObject(mg9Var, j2));
                    iT += i3;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 32:
                    i3 = nm9.i(i9, (List) unsafe.getObject(mg9Var, j2));
                    iT += i3;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var12 = nm9.a;
                    size = list10.size();
                    if (size == 0) {
                        iN7 = 0;
                    } else {
                        iO2 = nm9.l(list10);
                        iN6 = nh9.n(i9 << 3);
                        iN7 = (iN6 * size) + iO2;
                    }
                    iT += iN7;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 34:
                    List list11 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var13 = nm9.a;
                    size = list11.size();
                    if (size == 0) {
                        iN7 = 0;
                    } else {
                        iO2 = nm9.m(list11);
                        iN6 = nh9.n(i9 << 3);
                        iN7 = (iN6 * size) + iO2;
                    }
                    iT += iN7;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 35:
                    List list12 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var14 = nm9.a;
                    size2 = list12.size() * 8;
                    if (size2 > 0) {
                        iN9 = nh9.n(i9 << 3);
                        iT = u48.i(size2, iN9, size2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 36:
                    List list13 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var15 = nm9.a;
                    size2 = list13.size() * 4;
                    if (size2 > 0) {
                        iN9 = nh9.n(i9 << 3);
                        iT = u48.i(size2, iN9, size2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 37:
                    size2 = nm9.k((List) unsafe.getObject(mg9Var, j2));
                    if (size2 > 0) {
                        iN9 = nh9.n(i9 << 3);
                        iT = u48.i(size2, iN9, size2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 38:
                    size2 = nm9.o((List) unsafe.getObject(mg9Var, j2));
                    if (size2 > 0) {
                        iN9 = nh9.n(i9 << 3);
                        iT = u48.i(size2, iN9, size2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 39:
                    size2 = nm9.j((List) unsafe.getObject(mg9Var, j2));
                    if (size2 > 0) {
                        iN9 = nh9.n(i9 << 3);
                        iT = u48.i(size2, iN9, size2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 40:
                    List list14 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var16 = nm9.a;
                    size2 = list14.size() * 8;
                    if (size2 > 0) {
                        iN9 = nh9.n(i9 << 3);
                        iT = u48.i(size2, iN9, size2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 41:
                    List list15 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var17 = nm9.a;
                    size2 = list15.size() * 4;
                    if (size2 > 0) {
                        iN9 = nh9.n(i9 << 3);
                        iT = u48.i(size2, iN9, size2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 42:
                    List list16 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var18 = nm9.a;
                    size2 = list16.size();
                    if (size2 > 0) {
                        iN9 = nh9.n(i9 << 3);
                        iT = u48.i(size2, iN9, size2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 43:
                    size2 = nm9.n((List) unsafe.getObject(mg9Var, j2));
                    if (size2 > 0) {
                        iN9 = nh9.n(i9 << 3);
                        iT = u48.i(size2, iN9, size2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 44:
                    size2 = nm9.g((List) unsafe.getObject(mg9Var, j2));
                    if (size2 > 0) {
                        iN9 = nh9.n(i9 << 3);
                        iT = u48.i(size2, iN9, size2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 45:
                    List list17 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var19 = nm9.a;
                    size2 = list17.size() * 4;
                    if (size2 > 0) {
                        iN9 = nh9.n(i9 << 3);
                        iT = u48.i(size2, iN9, size2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 46:
                    List list18 = (List) unsafe.getObject(mg9Var, j2);
                    ns0 ns0Var20 = nm9.a;
                    size2 = list18.size() * 8;
                    if (size2 > 0) {
                        iN9 = nh9.n(i9 << 3);
                        iT = u48.i(size2, iN9, size2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 47:
                    size2 = nm9.l((List) unsafe.getObject(mg9Var, j2));
                    if (size2 > 0) {
                        iN9 = nh9.n(i9 << 3);
                        iT = u48.i(size2, iN9, size2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 48:
                    size2 = nm9.m((List) unsafe.getObject(mg9Var, j2));
                    if (size2 > 0) {
                        iN9 = nh9.n(i9 << 3);
                        iT = u48.i(size2, iN9, size2, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 49:
                    List list19 = (List) unsafe.getObject(mg9Var, j2);
                    jm9 jm9VarY4 = y(i7);
                    ns0 ns0Var21 = nm9.a;
                    int size7 = list19.size();
                    if (size7 == 0) {
                        iC3 = 0;
                    } else {
                        iC3 = 0;
                        for (int i18 = 0; i18 < size7; i18++) {
                            mg9 mg9Var3 = (mg9) list19.get(i18);
                            int iN14 = nh9.n(i9 << 3);
                            iC3 += mg9Var3.c(jm9VarY4) + iN14 + iN14;
                        }
                    }
                    iT += iC3;
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 50:
                    int i19 = i7 / 3;
                    xk9 xk9Var = (xk9) unsafe.getObject(mg9Var, j2);
                    if (this.b[i19 + i19] != null) {
                        e6.d();
                        return 0;
                    }
                    if (xk9Var.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = xk9Var.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 51:
                    if (p(mg9Var, i9, i7)) {
                        iT = u48.t(i9 << 3, 8, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 52:
                    if (p(mg9Var, i9, i7)) {
                        iT = u48.t(i9 << 3, 4, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 53:
                    if (p(mg9Var, i9, i7)) {
                        long jW = w(mg9Var, j2);
                        iN10 = nh9.n(i9 << 3);
                        iO3 = nh9.o(jW);
                        iT += iO3 + iN10;
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 54:
                    if (p(mg9Var, i9, i7)) {
                        long jW2 = w(mg9Var, j2);
                        iN10 = nh9.n(i9 << 3);
                        iO3 = nh9.o(jW2);
                        iT += iO3 + iN10;
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 55:
                    if (p(mg9Var, i9, i7)) {
                        long jS = s(mg9Var, j2);
                        iN10 = nh9.n(i9 << 3);
                        iO3 = nh9.o(jS);
                        iT += iO3 + iN10;
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 56:
                    if (p(mg9Var, i9, i7)) {
                        iT = u48.t(i9 << 3, 8, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 57:
                    if (p(mg9Var, i9, i7)) {
                        iT = u48.t(i9 << 3, 4, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 58:
                    if (p(mg9Var, i9, i7)) {
                        iT = u48.t(i9 << 3, 1, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 59:
                    if (p(mg9Var, i9, i7)) {
                        int i20 = i9 << 3;
                        Object object3 = unsafe.getObject(mg9Var, j2);
                        if (object3 instanceof dh9) {
                            iN11 = nh9.n(i20);
                            iB2 = ((dh9) object3).f();
                        } else {
                            iN11 = nh9.n(i20);
                            iB2 = xn9.b((String) object3);
                        }
                        iT = u48.i(iB2, iB2, iN11, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                    if (p(mg9Var, i9, i7)) {
                        Object object4 = unsafe.getObject(mg9Var, j2);
                        jm9 jm9VarY5 = y(i7);
                        ns0 ns0Var22 = nm9.a;
                        iN3 = nh9.n(i9 << 3);
                        iC = ((mg9) object4).c(jm9VarY5);
                        iT = u48.i(iC, iC, iN3, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 61:
                    if (p(mg9Var, i9, i7)) {
                        dh9 dh9Var2 = (dh9) unsafe.getObject(mg9Var, j2);
                        iN11 = nh9.n(i9 << 3);
                        iB2 = dh9Var2.f();
                        iT = u48.i(iB2, iB2, iN11, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 62:
                    if (p(mg9Var, i9, i7)) {
                        iS = s(mg9Var, j2);
                        iN12 = nh9.n(i9 << 3);
                        iT = u48.t(iS, iN12, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 63:
                    if (p(mg9Var, i9, i7)) {
                        long jS2 = s(mg9Var, j2);
                        iN10 = nh9.n(i9 << 3);
                        iO3 = nh9.o(jS2);
                        iT += iO3 + iN10;
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 64:
                    if (p(mg9Var, i9, i7)) {
                        iT = u48.t(i9 << 3, 4, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 65:
                    if (p(mg9Var, i9, i7)) {
                        iT = u48.t(i9 << 3, 8, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 66:
                    if (p(mg9Var, i9, i7)) {
                        int iS2 = s(mg9Var, j2);
                        iN12 = nh9.n(i9 << 3);
                        iS = (iS2 >> 31) ^ (iS2 + iS2);
                        iT = u48.t(iS, iN12, iT);
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 67:
                    if (p(mg9Var, i9, i7)) {
                        long jW3 = w(mg9Var, j2);
                        iN10 = nh9.n(i9 << 3);
                        iO3 = nh9.o((jW3 >> 63) ^ (jW3 + jW3));
                        iT += iO3 + iN10;
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                case 68:
                    if (p(mg9Var, i9, i7)) {
                        mg9 mg9Var4 = (mg9) unsafe.getObject(mg9Var, j2);
                        jm9 jm9VarY6 = y(i7);
                        ns0 ns0Var23 = nm9.a;
                        int iN15 = nh9.n(i9 << 3);
                        i4 = iN15 + iN15;
                        iC2 = mg9Var4.c(jm9VarY6);
                        i3 = iC2 + i4;
                        iT += i3;
                    }
                    i7 += 3;
                    i5 = 1048575;
                    break;
                default:
                    i7 += 3;
                    i5 = 1048575;
                    break;
            }
        }
    }

    public final void g(int i, Object obj, Object obj2) {
        if (m(i, obj2)) {
            int iV = v(i) & 1048575;
            Unsafe unsafe = k;
            long j2 = iV;
            Object object = unsafe.getObject(obj2, j2);
            if (object == null) {
                l0.e(u48.k(this.a[i], "Source subfield ", " is present but null: ", obj2.toString()));
                return;
            }
            jm9 jm9VarY = y(i);
            if (!m(i, obj)) {
                if (o(object)) {
                    xi9 xi9VarZze = jm9VarY.zze();
                    jm9VarY.zzg(xi9VarZze, object);
                    unsafe.putObject(obj, j2, xi9VarZze);
                } else {
                    unsafe.putObject(obj, j2, object);
                }
                i(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j2);
            if (!o(object2)) {
                xi9 xi9VarZze2 = jm9VarY.zze();
                jm9VarY.zzg(xi9VarZze2, object2);
                unsafe.putObject(obj, j2, xi9VarZze2);
                object2 = xi9VarZze2;
            }
            jm9VarY.zzg(object2, object);
        }
    }

    public final void h(int i, Object obj, Object obj2) {
        int[] iArr = this.a;
        int i2 = iArr[i];
        if (p(obj2, i2, i)) {
            int iV = v(i) & 1048575;
            Unsafe unsafe = k;
            long j2 = iV;
            Object object = unsafe.getObject(obj2, j2);
            if (object == null) {
                l0.e(u48.k(iArr[i], "Source subfield ", " is present but null: ", obj2.toString()));
                return;
            }
            jm9 jm9VarY = y(i);
            if (!p(obj, i2, i)) {
                if (o(object)) {
                    xi9 xi9VarZze = jm9VarY.zze();
                    jm9VarY.zzg(xi9VarZze, object);
                    unsafe.putObject(obj, j2, xi9VarZze);
                } else {
                    unsafe.putObject(obj, j2, object);
                }
                un9.j(obj, iArr[i + 2] & 1048575, i2);
                return;
            }
            Object object2 = unsafe.getObject(obj, j2);
            if (!o(object2)) {
                xi9 xi9VarZze2 = jm9VarY.zze();
                jm9VarY.zzg(xi9VarZze2, object2);
                unsafe.putObject(obj, j2, xi9VarZze2);
                object2 = xi9VarZze2;
            }
            jm9VarY.zzg(object2, object);
        }
    }

    public final void i(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j2 = 1048575 & i2;
        if (j2 == 1048575) {
            return;
        }
        un9.j(obj, j2, (1 << (i2 >>> 20)) | un9.e(obj, j2));
    }

    public final void j(int i, Object obj, Object obj2) {
        k.putObject(obj, v(i) & 1048575, obj2);
        i(i, obj);
    }

    public final void k(Object obj, int i, int i2, Object obj2) {
        k.putObject(obj, v(i2) & 1048575, obj2);
        un9.j(obj, this.a[i2 + 2] & 1048575, i);
    }

    public final boolean l(xi9 xi9Var, xi9 xi9Var2, int i) {
        return m(i, xi9Var) == m(i, xi9Var2);
    }

    /* JADX WARN: Code duplicated, block: B:72:0x00f5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f6 A[RETURN] */
    public final boolean m(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j2 = i2 & 1048575;
        if (j2 != 1048575) {
            if (((1 << (i2 >>> 20)) & un9.e(obj, j2)) != 0) {
                return true;
            }
            return false;
        }
        int iV = v(i);
        long j3 = iV & 1048575;
        switch (u(iV)) {
            case 0:
                if (Double.doubleToRawLongBits(un9.c.a(obj, j3)) != 0) {
                    return true;
                }
                return false;
            case 1:
                if (Float.floatToRawIntBits(un9.c.b(obj, j3)) != 0) {
                    return true;
                }
                return false;
            case 2:
                if (un9.f(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 3:
                if (un9.f(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 4:
                if (un9.e(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 5:
                if (un9.f(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 6:
                if (un9.e(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 7:
                return un9.c.j(obj, j3);
            case 8:
                Object objH = un9.h(obj, j3);
                if (objH instanceof String) {
                    if (((String) objH).isEmpty()) {
                        return false;
                    }
                    return true;
                }
                if (!(objH instanceof dh9)) {
                    c6.b();
                    return false;
                }
                if (dh9.b.equals(objH)) {
                    return false;
                }
                return true;
            case XmlPullParser.COMMENT /* 9 */:
                if (un9.h(obj, j3) != null) {
                    return true;
                }
                return false;
            case 10:
                if (dh9.b.equals(un9.h(obj, j3))) {
                    return false;
                }
                return true;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                if (un9.e(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 12:
                if (un9.e(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 13:
                if (un9.e(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 14:
                if (un9.f(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 15:
                if (un9.e(obj, j3) != 0) {
                    return true;
                }
                return false;
            case Argon2.V10 /* 16 */:
                if (un9.f(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 17:
                if (un9.h(obj, j3) != null) {
                    return true;
                }
                return false;
            default:
                c6.b();
                return false;
        }
    }

    public final boolean n(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return m(i, obj);
        }
        return (i3 & i4) != 0;
    }

    public final boolean p(Object obj, int i, int i2) {
        return un9.e(obj, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0282  */
    /* JADX WARN: Code duplicated, block: B:113:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:115:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:117:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:119:0x02d3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:121:0x02d6 A[PHI: r3
      0x02d6: PHI (r3v56 byte) = (r3v33 byte), (r3v65 byte) binds: [B:118:0x02d1, B:120:0x02d5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:123:0x02da A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:124:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:125:0x02dd A[PHI: r3
      0x02dd: PHI (r3v57 byte) = (r3v56 byte), (r3v64 byte) binds: [B:122:0x02d8, B:124:0x02dc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:127:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:133:0x0308  */
    /* JADX WARN: Code duplicated, block: B:135:0x030e  */
    /* JADX WARN: Code duplicated, block: B:137:0x0320  */
    /* JADX WARN: Code duplicated, block: B:20:0x0057  */
    /* JADX WARN: Code duplicated, block: B:445:0x09fc  */
    /* JADX WARN: Code duplicated, block: B:544:0x0cbc A[PHI: r1 r4 r8 r10 r11 r28
      0x0cbc: PHI (r1v172 byte[]) = 
      (r1v148 byte[])
      (r1v149 byte[])
      (r1v150 byte[])
      (r1v151 byte[])
      (r1v152 byte[])
      (r1v153 byte[])
      (r1v154 byte[])
      (r1v155 byte[])
      (r1v156 byte[])
      (r1v162 byte[])
      (r1v163 byte[])
      (r1v173 byte[])
     binds: [B:542:0x0ca5, B:539:0x0c84, B:536:0x0c67, B:533:0x0c4b, B:530:0x0c2e, B:527:0x0c10, B:520:0x0be9, B:506:0x0ba9, B:504:0x0b96, B:483:0x0b03, B:479:0x0add, B:468:0x0a76] A[DONT_GENERATE, DONT_INLINE]
      0x0cbc: PHI (r4v178 rg9) = 
      (r4v150 rg9)
      (r4v151 rg9)
      (r4v152 rg9)
      (r4v153 rg9)
      (r4v154 rg9)
      (r4v155 rg9)
      (r4v156 rg9)
      (r4v157 rg9)
      (r4v159 rg9)
      (r4v165 rg9)
      (r4v167 rg9)
      (r43v0 rg9 A[IMMUTABLE_TYPE, METHOD_ARGUMENT])
     binds: [B:542:0x0ca5, B:539:0x0c84, B:536:0x0c67, B:533:0x0c4b, B:530:0x0c2e, B:527:0x0c10, B:520:0x0be9, B:506:0x0ba9, B:504:0x0b96, B:483:0x0b03, B:479:0x0add, B:468:0x0a76] A[DONT_GENERATE, DONT_INLINE]
      0x0cbc: PHI (r8v80 int) = 
      (r8v58 int)
      (r8v59 int)
      (r8v60 int)
      (r8v61 int)
      (r8v62 int)
      (r8v63 int)
      (r8v64 int)
      (r8v65 int)
      (r8v66 int)
      (r8v70 int)
      (r8v71 int)
      (r28v37 int)
     binds: [B:542:0x0ca5, B:539:0x0c84, B:536:0x0c67, B:533:0x0c4b, B:530:0x0c2e, B:527:0x0c10, B:520:0x0be9, B:506:0x0ba9, B:504:0x0b96, B:483:0x0b03, B:479:0x0add, B:468:0x0a76] A[DONT_GENERATE, DONT_INLINE]
      0x0cbc: PHI (r10v54 int) = 
      (r10v31 int)
      (r10v32 int)
      (r10v33 int)
      (r10v34 int)
      (r10v35 int)
      (r10v36 int)
      (r10v37 int)
      (r10v38 int)
      (r10v39 int)
      (r10v43 int)
      (r10v44 int)
      (r10v55 int)
     binds: [B:542:0x0ca5, B:539:0x0c84, B:536:0x0c67, B:533:0x0c4b, B:530:0x0c2e, B:527:0x0c10, B:520:0x0be9, B:506:0x0ba9, B:504:0x0b96, B:483:0x0b03, B:479:0x0add, B:468:0x0a76] A[DONT_GENERATE, DONT_INLINE]
      0x0cbc: PHI (r11v55 mn9) = 
      (r11v43 mn9)
      (r11v43 mn9)
      (r11v43 mn9)
      (r11v43 mn9)
      (r11v43 mn9)
      (r11v43 mn9)
      (r11v43 mn9)
      (r11v43 mn9)
      (r11v43 mn9)
      (r11v50 mn9)
      (r11v51 mn9)
      (r11v43 mn9)
     binds: [B:542:0x0ca5, B:539:0x0c84, B:536:0x0c67, B:533:0x0c4b, B:530:0x0c2e, B:527:0x0c10, B:520:0x0be9, B:506:0x0ba9, B:504:0x0b96, B:483:0x0b03, B:479:0x0add, B:468:0x0a76] A[DONT_GENERATE, DONT_INLINE]
      0x0cbc: PHI (r28v56 int) = 
      (r28v38 int)
      (r28v39 int)
      (r28v40 int)
      (r28v41 int)
      (r28v42 int)
      (r28v43 int)
      (r28v44 int)
      (r28v45 int)
      (r28v46 int)
      (r28v49 int)
      (r28v50 int)
      (r28v57 int)
     binds: [B:542:0x0ca5, B:539:0x0c84, B:536:0x0c67, B:533:0x0c4b, B:530:0x0c2e, B:527:0x0c10, B:520:0x0be9, B:506:0x0ba9, B:504:0x0b96, B:483:0x0b03, B:479:0x0add, B:468:0x0a76] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:549:0x0cdd A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:554:0x0cef  */
    /* JADX WARN: Code duplicated, block: B:591:0x02ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:594:0x0302 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:595:0x02fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:596:0x02fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:597:0x02fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:598:0x02fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:599:0x0367 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:600:0x0362 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:636:0x09ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:650:0x0cbf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:674:0x0cd4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:725:0x027a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:726:0x02b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:727:0x0264 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:728:0x0280 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x025c  */
    /* JADX WARN: Multi-variable type inference failed */
    public final int q(Object obj, byte[] bArr, int i, int i2, int i3, rg9 rg9Var) {
        int i4;
        int[] iArr;
        Object[] objArr;
        Object obj2;
        int iT;
        mn9 mn9Var;
        int i5;
        int i6;
        byte[] bArr2;
        xi9 xi9Var;
        mn9 mn9VarB;
        Unsafe unsafe;
        Object obj3;
        int i7;
        byte[] bArr3;
        rg9 rg9Var2;
        int i8;
        int i9;
        int iR0;
        int i10;
        int i11;
        int i12;
        byte b;
        int i13;
        byte b2;
        int i14;
        byte b3;
        int i15;
        byte b4;
        int i16;
        byte b5;
        byte[] bArr4;
        Unsafe unsafe2;
        rg9 rg9Var3;
        Object obj4;
        Unsafe unsafe3;
        byte[] bArr5;
        rg9 rg9Var4;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int iP0;
        int i22;
        int i23;
        int iR1;
        int i24;
        int iP1;
        int i25;
        mn9 mn9VarB2;
        int i26;
        xk9 xk9Var;
        int i27;
        int i28;
        int iU0;
        rg9 rg9Var5;
        int i29;
        int iL0;
        mn9 mn9Var2;
        int iR2;
        pl9 pl9Var = this;
        Object obj5 = obj;
        byte[] bArr6 = bArr;
        i2 = i2;
        rg9Var = rg9Var;
        if (!o(obj5)) {
            c6.f("Mutating immutable message: ".concat(String.valueOf(obj5)));
            return 0;
        }
        Unsafe unsafe4 = k;
        int iR3 = i;
        int i30 = -1;
        int i31 = 0;
        int i32 = 1048575;
        int i33 = 0;
        int i34 = 0;
        while (true) {
            int i35 = 1048575;
            while (true) {
                Object[] objArr2 = pl9Var.b;
                int[] iArr2 = pl9Var.a;
                if (iR3 < i2) {
                    int iS0 = iR3 + 1;
                    int i36 = bArr6[iR3];
                    if (i36 < 0) {
                        iS0 = sz8.s0(i36, bArr6, iS0, rg9Var);
                        i36 = rg9Var.a;
                    }
                    int i37 = iS0;
                    i34 = i36;
                    int i38 = (i34 == true ? 1 : 0) >>> 3;
                    int i39 = pl9Var.d;
                    int i40 = pl9Var.c;
                    if (i38 > i30) {
                        int i41 = i31 / 3;
                        if (i38 < i40 || i38 > i39) {
                            iT = -1;
                        } else {
                            iT = pl9Var.t(i38, i41);
                        }
                    } else if (i38 < i40 || i38 > i39) {
                        iT = -1;
                    } else {
                        iT = pl9Var.t(i38, 0);
                    }
                    mn9 mn9Var3 = mn9.f;
                    if (iT == -1) {
                        mn9Var = mn9Var3;
                        i5 = i38;
                        rg9Var = rg9Var;
                        i4 = i32;
                        iArr = iArr2;
                        objArr = objArr2;
                        i6 = i37;
                        i31 = 0;
                        unsafe4 = unsafe4;
                        obj2 = obj5;
                    } else {
                        boolean z = (i34 == true ? 1 : 0) & 7;
                        int i42 = iArr2[iT + 1];
                        int iU = u(i42);
                        iArr = iArr2;
                        objArr = objArr2;
                        long j2 = i42 & i35;
                        if (iU <= 17) {
                            int i43 = iArr[iT + 2];
                            int i44 = 1 << (i43 >>> 20);
                            int i45 = i43 & i35;
                            if (i45 != i32) {
                                int i46 = i35;
                                if (i32 != i46) {
                                    unsafe4.putInt(obj5, i32, i33);
                                }
                                i33 = i45 == i46 ? 0 : unsafe4.getInt(obj5, i45);
                            } else {
                                i45 = i32;
                            }
                            switch (iU) {
                                case 0:
                                    bArr4 = bArr;
                                    unsafe2 = unsafe4;
                                    i31 = iT;
                                    i7 = i33;
                                    i6 = i37;
                                    i8 = i34 == true ? 1 : 0;
                                    rg9Var3 = rg9Var;
                                    if (z == 1) {
                                        i33 = i7 | i44;
                                        un9.c.f(obj5, j2, Double.longBitsToDouble(sz8.x0(bArr4, i6)));
                                        iR3 = i6 + 8;
                                        unsafe4 = unsafe2;
                                        i31 = i31;
                                        i30 = i38;
                                        i32 = i45;
                                        bArr6 = bArr4;
                                        rg9Var = rg9Var3;
                                        i34 = i8;
                                    }
                                    obj4 = obj5;
                                    mn9Var = mn9Var3;
                                    i5 = i38;
                                    i3 = i3;
                                    i4 = i45;
                                    rg9Var = rg9Var3;
                                    i34 = i8;
                                    i33 = i7;
                                    unsafe4 = unsafe2;
                                    obj2 = obj4;
                                    bArr2 = bArr4;
                                    if (i34 == i3 || i3 == 0) {
                                        xi9Var = (xi9) obj2;
                                        mn9VarB = xi9Var.zzc;
                                        if (mn9VarB == mn9Var) {
                                            mn9VarB = mn9.b();
                                            xi9Var.zzc = mn9VarB;
                                        }
                                        int i47 = i34;
                                        int iQ0 = sz8.q0(i47 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                                        pl9Var = this;
                                        rg9Var = rg9Var;
                                        i34 = i47 == true ? 1 : 0;
                                        i2 = i2;
                                        i30 = i5;
                                        obj5 = obj2;
                                        i31 = i31;
                                        unsafe4 = unsafe4;
                                        i32 = i4;
                                        i35 = 1048575;
                                        iR3 = iQ0;
                                        bArr6 = bArr;
                                    } else {
                                        i2 = i2;
                                        iR3 = i6;
                                    }
                                    break;
                                case 1:
                                    bArr4 = bArr;
                                    unsafe2 = unsafe4;
                                    i31 = iT;
                                    i7 = i33;
                                    i6 = i37;
                                    i8 = i34 == true ? 1 : 0;
                                    rg9Var3 = rg9Var;
                                    if (z == 5) {
                                        iR3 = i6 + 4;
                                        i33 = i7 | i44;
                                        un9.c.h(obj5, j2, Float.intBitsToFloat(sz8.n0(bArr4, i6)));
                                        unsafe4 = unsafe2;
                                        i31 = i31;
                                        i30 = i38;
                                        i32 = i45;
                                        bArr6 = bArr4;
                                        rg9Var = rg9Var3;
                                        i34 = i8;
                                    }
                                    obj4 = obj5;
                                    mn9Var = mn9Var3;
                                    i5 = i38;
                                    i3 = i3;
                                    i4 = i45;
                                    rg9Var = rg9Var3;
                                    i34 = i8;
                                    i33 = i7;
                                    unsafe4 = unsafe2;
                                    obj2 = obj4;
                                    bArr2 = bArr4;
                                    if (i34 == i3) {
                                    }
                                    xi9Var = (xi9) obj2;
                                    mn9VarB = xi9Var.zzc;
                                    if (mn9VarB == mn9Var) {
                                        mn9VarB = mn9.b();
                                        xi9Var.zzc = mn9VarB;
                                    }
                                    int i48 = i34;
                                    int iQ1 = sz8.q0(i48 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                                    pl9Var = this;
                                    rg9Var = rg9Var;
                                    i34 = i48 == true ? 1 : 0;
                                    i2 = i2;
                                    i30 = i5;
                                    obj5 = obj2;
                                    i31 = i31;
                                    unsafe4 = unsafe4;
                                    i32 = i4;
                                    i35 = 1048575;
                                    iR3 = iQ1;
                                    bArr6 = bArr;
                                    break;
                                case 2:
                                case 3:
                                    bArr4 = bArr;
                                    i31 = iT;
                                    i7 = i33;
                                    i6 = i37;
                                    i8 = i34 == true ? 1 : 0;
                                    rg9Var3 = rg9Var;
                                    if (z == 0) {
                                        i33 = i7 | i44;
                                        int iU1 = sz8.u0(bArr4, i6, rg9Var3);
                                        unsafe4.putLong(obj5, j2, rg9Var3.b);
                                        i2 = i2;
                                        iR3 = iU1;
                                        i31 = i31;
                                        i30 = i38;
                                        i32 = i45;
                                        bArr6 = bArr4;
                                        rg9Var = rg9Var3;
                                        i34 = i8;
                                    }
                                    unsafe2 = unsafe4;
                                    obj4 = obj5;
                                    mn9Var = mn9Var3;
                                    i5 = i38;
                                    i3 = i3;
                                    i4 = i45;
                                    rg9Var = rg9Var3;
                                    i34 = i8;
                                    i33 = i7;
                                    unsafe4 = unsafe2;
                                    obj2 = obj4;
                                    bArr2 = bArr4;
                                    if (i34 == i3) {
                                    }
                                    xi9Var = (xi9) obj2;
                                    mn9VarB = xi9Var.zzc;
                                    if (mn9VarB == mn9Var) {
                                        mn9VarB = mn9.b();
                                        xi9Var.zzc = mn9VarB;
                                    }
                                    int i49 = i34;
                                    int iQ2 = sz8.q0(i49 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                                    pl9Var = this;
                                    rg9Var = rg9Var;
                                    i34 = i49 == true ? 1 : 0;
                                    i2 = i2;
                                    i30 = i5;
                                    obj5 = obj2;
                                    i31 = i31;
                                    unsafe4 = unsafe4;
                                    i32 = i4;
                                    i35 = 1048575;
                                    iR3 = iQ2;
                                    bArr6 = bArr;
                                    break;
                                case 4:
                                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                    bArr4 = bArr;
                                    i31 = iT;
                                    i7 = i33;
                                    i6 = i37;
                                    i8 = i34 == true ? 1 : 0;
                                    rg9Var3 = rg9Var;
                                    if (z == 0) {
                                        i33 = i7 | i44;
                                        iR3 = sz8.r0(bArr4, i6, rg9Var3);
                                        unsafe4.putInt(obj5, j2, rg9Var3.a);
                                        i2 = i2;
                                        i31 = i31;
                                        i30 = i38;
                                        i32 = i45;
                                        bArr6 = bArr4;
                                        rg9Var = rg9Var3;
                                        i34 = i8;
                                    }
                                    unsafe2 = unsafe4;
                                    obj4 = obj5;
                                    mn9Var = mn9Var3;
                                    i5 = i38;
                                    i3 = i3;
                                    i4 = i45;
                                    rg9Var = rg9Var3;
                                    i34 = i8;
                                    i33 = i7;
                                    unsafe4 = unsafe2;
                                    obj2 = obj4;
                                    bArr2 = bArr4;
                                    if (i34 == i3) {
                                    }
                                    xi9Var = (xi9) obj2;
                                    mn9VarB = xi9Var.zzc;
                                    if (mn9VarB == mn9Var) {
                                        mn9VarB = mn9.b();
                                        xi9Var.zzc = mn9VarB;
                                    }
                                    int i410 = i34;
                                    int iQ3 = sz8.q0(i410 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                                    pl9Var = this;
                                    rg9Var = rg9Var;
                                    i34 = i410 == true ? 1 : 0;
                                    i2 = i2;
                                    i30 = i5;
                                    obj5 = obj2;
                                    i31 = i31;
                                    unsafe4 = unsafe4;
                                    i32 = i4;
                                    i35 = 1048575;
                                    iR3 = iQ3;
                                    bArr6 = bArr;
                                    break;
                                case 5:
                                case 14:
                                    Unsafe unsafe5 = unsafe4;
                                    Object obj6 = obj5;
                                    i31 = iT;
                                    i7 = i33;
                                    i6 = i37;
                                    i8 = i34 == true ? 1 : 0;
                                    if (z == 1) {
                                        bArr4 = bArr;
                                        unsafe4 = unsafe5;
                                        rg9Var3 = rg9Var;
                                        obj5 = obj6;
                                        unsafe4.putLong(obj5, j2, sz8.x0(bArr, i6));
                                        i2 = i2;
                                        iR3 = i6 + 8;
                                        i33 = i7 | i44;
                                        i31 = i31;
                                        i30 = i38;
                                        i32 = i45;
                                        bArr6 = bArr4;
                                        rg9Var = rg9Var3;
                                        i34 = i8;
                                    } else {
                                        bArr4 = bArr;
                                        rg9Var3 = rg9Var;
                                        unsafe2 = unsafe5;
                                        obj4 = obj6;
                                        mn9Var = mn9Var3;
                                        i5 = i38;
                                        i3 = i3;
                                        i4 = i45;
                                        rg9Var = rg9Var3;
                                        i34 = i8;
                                        i33 = i7;
                                        unsafe4 = unsafe2;
                                        obj2 = obj4;
                                        bArr2 = bArr4;
                                        if (i34 == i3) {
                                        }
                                        xi9Var = (xi9) obj2;
                                        mn9VarB = xi9Var.zzc;
                                        if (mn9VarB == mn9Var) {
                                            mn9VarB = mn9.b();
                                            xi9Var.zzc = mn9VarB;
                                        }
                                        int i411 = i34;
                                        int iQ4 = sz8.q0(i411 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                                        pl9Var = this;
                                        rg9Var = rg9Var;
                                        i34 = i411 == true ? 1 : 0;
                                        i2 = i2;
                                        i30 = i5;
                                        obj5 = obj2;
                                        i31 = i31;
                                        unsafe4 = unsafe4;
                                        i32 = i4;
                                        i35 = 1048575;
                                        iR3 = iQ4;
                                        bArr6 = bArr;
                                    }
                                    break;
                                case 6:
                                case 13:
                                    unsafe = unsafe4;
                                    obj3 = obj5;
                                    i31 = iT;
                                    i7 = i33;
                                    i6 = i37;
                                    bArr3 = bArr;
                                    rg9Var2 = rg9Var;
                                    i8 = i34 == true ? 1 : 0;
                                    if (z == 5) {
                                        iR3 = i6 + 4;
                                        i9 = i7 | i44;
                                        unsafe.putInt(obj3, j2, sz8.n0(bArr3, i6));
                                        bArr6 = bArr3;
                                        rg9Var = rg9Var2;
                                        i33 = i9;
                                        obj5 = obj3;
                                        i31 = i31;
                                        i30 = i38;
                                        i32 = i45;
                                        unsafe4 = unsafe;
                                        i34 = i8;
                                        i35 = 1048575;
                                        i2 = i2;
                                    } else {
                                        Unsafe unsafe6 = unsafe;
                                        bArr4 = bArr3;
                                        obj4 = obj3;
                                        unsafe2 = unsafe6;
                                        rg9Var3 = rg9Var2;
                                        mn9Var = mn9Var3;
                                        i5 = i38;
                                        i3 = i3;
                                        i4 = i45;
                                        rg9Var = rg9Var3;
                                        i34 = i8;
                                        i33 = i7;
                                        unsafe4 = unsafe2;
                                        obj2 = obj4;
                                        bArr2 = bArr4;
                                        if (i34 == i3) {
                                        }
                                        xi9Var = (xi9) obj2;
                                        mn9VarB = xi9Var.zzc;
                                        if (mn9VarB == mn9Var) {
                                            mn9VarB = mn9.b();
                                            xi9Var.zzc = mn9VarB;
                                        }
                                        int i412 = i34;
                                        int iQ5 = sz8.q0(i412 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                                        pl9Var = this;
                                        rg9Var = rg9Var;
                                        i34 = i412 == true ? 1 : 0;
                                        i2 = i2;
                                        i30 = i5;
                                        obj5 = obj2;
                                        i31 = i31;
                                        unsafe4 = unsafe4;
                                        i32 = i4;
                                        i35 = 1048575;
                                        iR3 = iQ5;
                                        bArr6 = bArr;
                                    }
                                    break;
                                case 7:
                                    unsafe = unsafe4;
                                    obj3 = obj5;
                                    i31 = iT;
                                    i7 = i33;
                                    i6 = i37;
                                    bArr3 = bArr;
                                    rg9Var2 = rg9Var;
                                    i8 = i34 == true ? 1 : 0;
                                    if (z == 0) {
                                        int i50 = i7 | i44;
                                        int iU2 = sz8.u0(bArr3, i6, rg9Var2);
                                        un9.c.c(obj3, j2, rg9Var2.b != 0);
                                        i2 = i2;
                                        rg9Var = rg9Var2;
                                        i33 = i50;
                                        obj5 = obj3;
                                        i31 = i31;
                                        i30 = i38;
                                        i32 = i45;
                                        i34 = i8 == true ? 1 : 0;
                                        i35 = 1048575;
                                        iR3 = iU2;
                                        bArr6 = bArr3;
                                        unsafe4 = unsafe;
                                    } else {
                                        Unsafe unsafe7 = unsafe;
                                        bArr4 = bArr3;
                                        obj4 = obj3;
                                        unsafe2 = unsafe7;
                                        rg9Var3 = rg9Var2;
                                        mn9Var = mn9Var3;
                                        i5 = i38;
                                        i3 = i3;
                                        i4 = i45;
                                        rg9Var = rg9Var3;
                                        i34 = i8;
                                        i33 = i7;
                                        unsafe4 = unsafe2;
                                        obj2 = obj4;
                                        bArr2 = bArr4;
                                        if (i34 == i3) {
                                        }
                                        xi9Var = (xi9) obj2;
                                        mn9VarB = xi9Var.zzc;
                                        if (mn9VarB == mn9Var) {
                                            mn9VarB = mn9.b();
                                            xi9Var.zzc = mn9VarB;
                                        }
                                        int i413 = i34;
                                        int iQ6 = sz8.q0(i413 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                                        pl9Var = this;
                                        rg9Var = rg9Var;
                                        i34 = i413 == true ? 1 : 0;
                                        i2 = i2;
                                        i30 = i5;
                                        obj5 = obj2;
                                        i31 = i31;
                                        unsafe4 = unsafe4;
                                        i32 = i4;
                                        i35 = 1048575;
                                        iR3 = iQ6;
                                        bArr6 = bArr;
                                    }
                                    break;
                                case 8:
                                    unsafe = unsafe4;
                                    obj3 = obj5;
                                    i31 = iT;
                                    i7 = i33;
                                    i6 = i37;
                                    bArr3 = bArr;
                                    rg9Var2 = rg9Var;
                                    i8 = i34 == true ? 1 : 0;
                                    if (z == 2) {
                                        if ((i42 & 536870912) != 0) {
                                            int i51 = i7 | i44;
                                            iR0 = sz8.r0(bArr3, i6, rg9Var2);
                                            int i52 = rg9Var2.a;
                                            if (i52 < 0) {
                                                b6.f("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                return 0;
                                            }
                                            if (i52 == 0) {
                                                rg9Var2.c = "";
                                                i10 = i51;
                                            } else {
                                                int i53 = xn9.a;
                                                int length = bArr3.length;
                                                if ((((length - iR0) - i52) | iR0 | i52) < 0) {
                                                    throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(iR0), Integer.valueOf(i52)));
                                                }
                                                int i54 = iR0 + i52;
                                                char[] cArr = new char[i52];
                                                int i55 = 0;
                                                while (iR0 < i54) {
                                                    byte b6 = bArr3[iR0];
                                                    if (b6 >= 0) {
                                                        iR0++;
                                                        cArr[i55] = (char) b6;
                                                        i55++;
                                                    } else {
                                                        while (iR0 < i54) {
                                                            i11 = iR0 + 1;
                                                            i12 = iR0;
                                                            b = bArr3[i12];
                                                            if (b >= 0) {
                                                                i13 = i55 + 1;
                                                                cArr[i55] = (char) b;
                                                                iR0 = i11;
                                                                while (true) {
                                                                    i55 = i13;
                                                                    if (iR0 >= i54 || (b2 = bArr3[iR0]) < 0) {
                                                                    }
                                                                    iR0++;
                                                                    i13 = i55 + 1;
                                                                    cArr[i55] = (char) b2;
                                                                    break;
                                                                }
                                                            } else {
                                                                i51 = i51;
                                                                if (b >= -32) {
                                                                    if (b < -16) {
                                                                        i14 = i54;
                                                                        if (i11 < i14 - 2) {
                                                                            b6.f("Protocol message had invalid UTF-8.");
                                                                            return 0;
                                                                        }
                                                                        b3 = bArr3[i11];
                                                                        int i56 = i12 + 3;
                                                                        byte b7 = bArr3[i12 + 2];
                                                                        int i57 = i12 + 4;
                                                                        byte b8 = bArr3[i56];
                                                                        if (!od2.B(b3)) {
                                                                            if ((((b3 + 112) + (b << 28)) >> 30) != 0 && !od2.B(b7) && !od2.B(b8)) {
                                                                                int i58 = ((b & 7) << 18) | ((b3 & 63) << 12) | ((b7 & 63) << 6) | (b8 & 63);
                                                                                cArr[i55] = (char) ((i58 >>> 10) + 55232);
                                                                                cArr[i55 + 1] = (char) ((i58 & 1023) + 56320);
                                                                                i55 += 2;
                                                                                iR0 = i57;
                                                                            }
                                                                        }
                                                                        b6.f("Protocol message had invalid UTF-8.");
                                                                        return 0;
                                                                    }
                                                                    if (i11 < i54 - 1) {
                                                                        b6.f("Protocol message had invalid UTF-8.");
                                                                        return 0;
                                                                    }
                                                                    i15 = i55 + 1;
                                                                    int i59 = i12 + 2;
                                                                    b4 = bArr3[i11];
                                                                    i16 = i12 + 3;
                                                                    b5 = bArr3[i59];
                                                                    if (!od2.B(b4)) {
                                                                        i14 = i54;
                                                                        if (b != -32) {
                                                                            if (b != -19) {
                                                                                if (!od2.B(b5)) {
                                                                                    cArr[i55] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                                    iR0 = i16;
                                                                                    i55 = i15;
                                                                                }
                                                                            } else if (b4 < -96) {
                                                                                b = -19;
                                                                                if (!od2.B(b5)) {
                                                                                    cArr[i55] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                                    iR0 = i16;
                                                                                    i55 = i15;
                                                                                }
                                                                            }
                                                                        } else if (b4 >= -96) {
                                                                            b = -32;
                                                                            if (b != -19) {
                                                                                if (!od2.B(b5)) {
                                                                                    cArr[i55] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                                    iR0 = i16;
                                                                                    i55 = i15;
                                                                                }
                                                                            } else if (b4 < -96) {
                                                                                b = -19;
                                                                                if (!od2.B(b5)) {
                                                                                    cArr[i55] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                                    iR0 = i16;
                                                                                    i55 = i15;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    b6.f("Protocol message had invalid UTF-8.");
                                                                    return 0;
                                                                    i54 = i14;
                                                                } else {
                                                                    if (i11 < i54) {
                                                                        b6.f("Protocol message had invalid UTF-8.");
                                                                        return 0;
                                                                    }
                                                                    int i60 = i55 + 1;
                                                                    int i61 = i12 + 2;
                                                                    byte b9 = bArr3[i11];
                                                                    if (b >= -62 || od2.B(b9)) {
                                                                        b6.f("Protocol message had invalid UTF-8.");
                                                                        return 0;
                                                                    }
                                                                    cArr[i55] = (char) (((b & 31) << 6) | (b9 & 63));
                                                                    i51 = i51;
                                                                    iR0 = i61;
                                                                    i55 = i60;
                                                                }
                                                            }
                                                        }
                                                        i10 = i51;
                                                        rg9Var2.c = new String(cArr, 0, i55);
                                                        iR0 = i54;
                                                    }
                                                }
                                                while (iR0 < i54) {
                                                    i11 = iR0 + 1;
                                                    i12 = iR0;
                                                    b = bArr3[i12];
                                                    if (b >= 0) {
                                                        i13 = i55 + 1;
                                                        cArr[i55] = (char) b;
                                                        iR0 = i11;
                                                        while (true) {
                                                            i55 = i13;
                                                            if (iR0 >= i54) {
                                                            }
                                                            break;
                                                            iR0++;
                                                            i13 = i55 + 1;
                                                            cArr[i55] = (char) b2;
                                                        }
                                                    } else {
                                                        i51 = i51;
                                                        if (b >= -32) {
                                                            if (i11 < i54) {
                                                                b6.f("Protocol message had invalid UTF-8.");
                                                                return 0;
                                                            }
                                                            int i62 = i55 + 1;
                                                            int i63 = i12 + 2;
                                                            byte b10 = bArr3[i11];
                                                            if (b >= -62) {
                                                            }
                                                            b6.f("Protocol message had invalid UTF-8.");
                                                            return 0;
                                                        }
                                                        if (b < -16) {
                                                            i14 = i54;
                                                            if (i11 < i14 - 2) {
                                                                b6.f("Protocol message had invalid UTF-8.");
                                                                return 0;
                                                            }
                                                            b3 = bArr3[i11];
                                                            int i510 = i12 + 3;
                                                            byte b11 = bArr3[i12 + 2];
                                                            int i511 = i12 + 4;
                                                            byte b12 = bArr3[i510];
                                                            if (!od2.B(b3)) {
                                                                if ((((b3 + 112) + (b << 28)) >> 30) != 0) {
                                                                }
                                                            }
                                                            b6.f("Protocol message had invalid UTF-8.");
                                                            return 0;
                                                        }
                                                        if (i11 < i54 - 1) {
                                                            b6.f("Protocol message had invalid UTF-8.");
                                                            return 0;
                                                        }
                                                        i15 = i55 + 1;
                                                        int i512 = i12 + 2;
                                                        b4 = bArr3[i11];
                                                        i16 = i12 + 3;
                                                        b5 = bArr3[i512];
                                                        if (!od2.B(b4)) {
                                                            i14 = i54;
                                                            if (b != -32) {
                                                                if (b != -19) {
                                                                    if (!od2.B(b5)) {
                                                                        cArr[i55] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                        iR0 = i16;
                                                                        i55 = i15;
                                                                    }
                                                                } else if (b4 < -96) {
                                                                    b = -19;
                                                                    if (!od2.B(b5)) {
                                                                        cArr[i55] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                        iR0 = i16;
                                                                        i55 = i15;
                                                                    }
                                                                }
                                                            } else if (b4 >= -96) {
                                                                b = -32;
                                                                if (b != -19) {
                                                                    if (!od2.B(b5)) {
                                                                        cArr[i55] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                        iR0 = i16;
                                                                        i55 = i15;
                                                                    }
                                                                } else if (b4 < -96) {
                                                                    b = -19;
                                                                    if (!od2.B(b5)) {
                                                                        cArr[i55] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                        iR0 = i16;
                                                                        i55 = i15;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        b6.f("Protocol message had invalid UTF-8.");
                                                        return 0;
                                                        i54 = i14;
                                                    }
                                                }
                                                i10 = i51;
                                                rg9Var2.c = new String(cArr, 0, i55);
                                                iR0 = i54;
                                            }
                                            i9 = i10;
                                        } else {
                                            iR0 = sz8.r0(bArr3, i6, rg9Var2);
                                            int i64 = rg9Var2.a;
                                            if (i64 < 0) {
                                                b6.f("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                return 0;
                                            }
                                            i9 = i7 | i44;
                                            if (i64 == 0) {
                                                rg9Var2.c = "";
                                            } else {
                                                rg9Var2.c = new String(bArr3, iR0, i64, nj9.a);
                                                iR0 += i64;
                                            }
                                        }
                                        iR3 = iR0;
                                        unsafe.putObject(obj3, j2, rg9Var2.c);
                                        bArr6 = bArr3;
                                        rg9Var = rg9Var2;
                                        i33 = i9;
                                        obj5 = obj3;
                                        i31 = i31;
                                        i30 = i38;
                                        i32 = i45;
                                        unsafe4 = unsafe;
                                        i34 = i8;
                                        i35 = 1048575;
                                        i2 = i2;
                                    } else {
                                        Unsafe unsafe8 = unsafe;
                                        bArr4 = bArr3;
                                        obj4 = obj3;
                                        unsafe2 = unsafe8;
                                        rg9Var3 = rg9Var2;
                                        mn9Var = mn9Var3;
                                        i5 = i38;
                                        i3 = i3;
                                        i4 = i45;
                                        rg9Var = rg9Var3;
                                        i34 = i8;
                                        i33 = i7;
                                        unsafe4 = unsafe2;
                                        obj2 = obj4;
                                        bArr2 = bArr4;
                                        if (i34 == i3) {
                                        }
                                        xi9Var = (xi9) obj2;
                                        mn9VarB = xi9Var.zzc;
                                        if (mn9VarB == mn9Var) {
                                            mn9VarB = mn9.b();
                                            xi9Var.zzc = mn9VarB;
                                        }
                                        int i414 = i34;
                                        int iQ7 = sz8.q0(i414 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                                        pl9Var = this;
                                        rg9Var = rg9Var;
                                        i34 = i414 == true ? 1 : 0;
                                        i2 = i2;
                                        i30 = i5;
                                        obj5 = obj2;
                                        i31 = i31;
                                        unsafe4 = unsafe4;
                                        i32 = i4;
                                        i35 = 1048575;
                                        iR3 = iQ7;
                                        bArr6 = bArr;
                                    }
                                    break;
                                case XmlPullParser.COMMENT /* 9 */:
                                    Object obj7 = obj5;
                                    Unsafe unsafe9 = unsafe4;
                                    i31 = iT;
                                    i6 = i37;
                                    if (z == 2) {
                                        i33 |= i44;
                                        Object objZ = pl9Var.z(i31, obj7);
                                        rg9Var = rg9Var;
                                        i2 = i2;
                                        iR3 = sz8.w0(objZ, pl9Var.y(i31), bArr, i6, i2, rg9Var);
                                        pl9Var.j(i31, obj7, objZ);
                                        bArr6 = bArr;
                                        obj5 = obj7;
                                        i31 = i31;
                                        i30 = i38;
                                        i32 = i45;
                                        unsafe4 = unsafe9;
                                    } else {
                                        rg9Var2 = rg9Var;
                                        bArr4 = bArr;
                                        obj4 = obj7;
                                        unsafe2 = unsafe9;
                                        i7 = i33;
                                        i8 = i34 == true ? 1 : 0;
                                        rg9Var3 = rg9Var2;
                                        mn9Var = mn9Var3;
                                        i5 = i38;
                                        i3 = i3;
                                        i4 = i45;
                                        rg9Var = rg9Var3;
                                        i34 = i8;
                                        i33 = i7;
                                        unsafe4 = unsafe2;
                                        obj2 = obj4;
                                        bArr2 = bArr4;
                                        if (i34 == i3) {
                                        }
                                        xi9Var = (xi9) obj2;
                                        mn9VarB = xi9Var.zzc;
                                        if (mn9VarB == mn9Var) {
                                            mn9VarB = mn9.b();
                                            xi9Var.zzc = mn9VarB;
                                        }
                                        int i415 = i34;
                                        int iQ8 = sz8.q0(i415 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                                        pl9Var = this;
                                        rg9Var = rg9Var;
                                        i34 = i415 == true ? 1 : 0;
                                        i2 = i2;
                                        i30 = i5;
                                        obj5 = obj2;
                                        i31 = i31;
                                        unsafe4 = unsafe4;
                                        i32 = i4;
                                        i35 = 1048575;
                                        iR3 = iQ8;
                                        bArr6 = bArr;
                                    }
                                    break;
                                case 10:
                                    Object obj8 = obj5;
                                    unsafe3 = unsafe4;
                                    obj4 = obj8;
                                    bArr5 = bArr;
                                    rg9Var4 = rg9Var;
                                    i31 = iT;
                                    i6 = i37;
                                    if (z == 2) {
                                        i33 |= i44;
                                        iR3 = sz8.l0(bArr5, i6, rg9Var4);
                                        unsafe3.putObject(obj4, j2, rg9Var4.c);
                                        Unsafe unsafe10 = unsafe3;
                                        obj5 = obj4;
                                        unsafe4 = unsafe10;
                                        bArr6 = bArr5;
                                        i31 = i31;
                                        i30 = i38;
                                        i32 = i45;
                                        rg9Var = rg9Var4;
                                    }
                                    i7 = i33;
                                    i8 = i34 == true ? 1 : 0;
                                    rg9Var3 = rg9Var4;
                                    bArr4 = bArr5;
                                    unsafe2 = unsafe3;
                                    mn9Var = mn9Var3;
                                    i5 = i38;
                                    i3 = i3;
                                    i4 = i45;
                                    rg9Var = rg9Var3;
                                    i34 = i8;
                                    i33 = i7;
                                    unsafe4 = unsafe2;
                                    obj2 = obj4;
                                    bArr2 = bArr4;
                                    if (i34 == i3) {
                                    }
                                    xi9Var = (xi9) obj2;
                                    mn9VarB = xi9Var.zzc;
                                    if (mn9VarB == mn9Var) {
                                        mn9VarB = mn9.b();
                                        xi9Var.zzc = mn9VarB;
                                    }
                                    int i416 = i34;
                                    int iQ9 = sz8.q0(i416 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                                    pl9Var = this;
                                    rg9Var = rg9Var;
                                    i34 = i416 == true ? 1 : 0;
                                    i2 = i2;
                                    i30 = i5;
                                    obj5 = obj2;
                                    i31 = i31;
                                    unsafe4 = unsafe4;
                                    i32 = i4;
                                    i35 = 1048575;
                                    iR3 = iQ9;
                                    bArr6 = bArr;
                                    break;
                                case 12:
                                    Object obj9 = obj5;
                                    unsafe3 = unsafe4;
                                    obj4 = obj9;
                                    bArr5 = bArr;
                                    rg9Var4 = rg9Var;
                                    i31 = iT;
                                    i6 = i37;
                                    if (z == 0) {
                                        int iR4 = sz8.r0(bArr5, i6, rg9Var4);
                                        int i65 = rg9Var4.a;
                                        bj9 bj9VarX = pl9Var.x(i31);
                                        if ((i42 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) == 0 || bj9VarX == null || bj9VarX.zza(i65)) {
                                            i33 |= i44;
                                            unsafe3.putInt(obj4, j2, i65);
                                        } else {
                                            xi9 xi9Var2 = (xi9) obj4;
                                            mn9 mn9VarB3 = xi9Var2.zzc;
                                            if (mn9VarB3 == mn9Var3) {
                                                mn9VarB3 = mn9.b();
                                                xi9Var2.zzc = mn9VarB3;
                                            }
                                            mn9VarB3.c(i34 == true ? 1 : 0, Long.valueOf(i65));
                                        }
                                        obj5 = obj4;
                                        unsafe4 = unsafe3;
                                        iR3 = iR4;
                                        bArr6 = bArr5;
                                        i31 = i31;
                                        i30 = i38;
                                        i32 = i45;
                                        rg9Var = rg9Var4;
                                    }
                                    i7 = i33;
                                    i8 = i34 == true ? 1 : 0;
                                    rg9Var3 = rg9Var4;
                                    bArr4 = bArr5;
                                    unsafe2 = unsafe3;
                                    mn9Var = mn9Var3;
                                    i5 = i38;
                                    i3 = i3;
                                    i4 = i45;
                                    rg9Var = rg9Var3;
                                    i34 = i8;
                                    i33 = i7;
                                    unsafe4 = unsafe2;
                                    obj2 = obj4;
                                    bArr2 = bArr4;
                                    if (i34 == i3) {
                                    }
                                    xi9Var = (xi9) obj2;
                                    mn9VarB = xi9Var.zzc;
                                    if (mn9VarB == mn9Var) {
                                        mn9VarB = mn9.b();
                                        xi9Var.zzc = mn9VarB;
                                    }
                                    int i417 = i34;
                                    int iQ10 = sz8.q0(i417 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                                    pl9Var = this;
                                    rg9Var = rg9Var;
                                    i34 = i417 == true ? 1 : 0;
                                    i2 = i2;
                                    i30 = i5;
                                    obj5 = obj2;
                                    i31 = i31;
                                    unsafe4 = unsafe4;
                                    i32 = i4;
                                    i35 = 1048575;
                                    iR3 = iQ10;
                                    bArr6 = bArr;
                                    break;
                                case 15:
                                    Object obj10 = obj5;
                                    unsafe3 = unsafe4;
                                    obj4 = obj10;
                                    bArr5 = bArr;
                                    rg9Var4 = rg9Var;
                                    i31 = iT;
                                    i6 = i37;
                                    if (z == 0) {
                                        i33 |= i44;
                                        iR3 = sz8.r0(bArr5, i6, rg9Var4);
                                        unsafe3.putInt(obj4, j2, bb9.Q(rg9Var4.a));
                                        Unsafe unsafe11 = unsafe3;
                                        obj5 = obj4;
                                        unsafe4 = unsafe11;
                                        bArr6 = bArr5;
                                        i31 = i31;
                                        i30 = i38;
                                        i32 = i45;
                                        rg9Var = rg9Var4;
                                    }
                                    i7 = i33;
                                    i8 = i34 == true ? 1 : 0;
                                    rg9Var3 = rg9Var4;
                                    bArr4 = bArr5;
                                    unsafe2 = unsafe3;
                                    mn9Var = mn9Var3;
                                    i5 = i38;
                                    i3 = i3;
                                    i4 = i45;
                                    rg9Var = rg9Var3;
                                    i34 = i8;
                                    i33 = i7;
                                    unsafe4 = unsafe2;
                                    obj2 = obj4;
                                    bArr2 = bArr4;
                                    if (i34 == i3) {
                                    }
                                    xi9Var = (xi9) obj2;
                                    mn9VarB = xi9Var.zzc;
                                    if (mn9VarB == mn9Var) {
                                        mn9VarB = mn9.b();
                                        xi9Var.zzc = mn9VarB;
                                    }
                                    int i418 = i34;
                                    int iQ11 = sz8.q0(i418 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                                    pl9Var = this;
                                    rg9Var = rg9Var;
                                    i34 = i418 == true ? 1 : 0;
                                    i2 = i2;
                                    i30 = i5;
                                    obj5 = obj2;
                                    i31 = i31;
                                    unsafe4 = unsafe4;
                                    i32 = i4;
                                    i35 = 1048575;
                                    iR3 = iQ11;
                                    bArr6 = bArr;
                                    break;
                                case Argon2.V10 /* 16 */:
                                    bArr5 = bArr;
                                    rg9Var4 = rg9Var;
                                    i31 = iT;
                                    i6 = i37;
                                    if (z == 0) {
                                        i33 |= i44;
                                        int iU3 = sz8.u0(bArr5, i6, rg9Var4);
                                        long j3 = rg9Var4.b;
                                        unsafe4.putLong(obj5, j2, (-(j3 & 1)) ^ (j3 >>> 1));
                                        obj5 = obj5;
                                        unsafe4 = unsafe4;
                                        iR3 = iU3;
                                        bArr6 = bArr5;
                                        i31 = i31;
                                        i30 = i38;
                                        i32 = i45;
                                        rg9Var = rg9Var4;
                                    } else {
                                        Object obj11 = obj5;
                                        unsafe3 = unsafe4;
                                        obj4 = obj11;
                                        i7 = i33;
                                        i8 = i34 == true ? 1 : 0;
                                        rg9Var3 = rg9Var4;
                                        bArr4 = bArr5;
                                        unsafe2 = unsafe3;
                                        mn9Var = mn9Var3;
                                        i5 = i38;
                                        i3 = i3;
                                        i4 = i45;
                                        rg9Var = rg9Var3;
                                        i34 = i8;
                                        i33 = i7;
                                        unsafe4 = unsafe2;
                                        obj2 = obj4;
                                        bArr2 = bArr4;
                                        if (i34 == i3) {
                                        }
                                        xi9Var = (xi9) obj2;
                                        mn9VarB = xi9Var.zzc;
                                        if (mn9VarB == mn9Var) {
                                            mn9VarB = mn9.b();
                                            xi9Var.zzc = mn9VarB;
                                        }
                                        int i419 = i34;
                                        int iQ12 = sz8.q0(i419 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                                        pl9Var = this;
                                        rg9Var = rg9Var;
                                        i34 = i419 == true ? 1 : 0;
                                        i2 = i2;
                                        i30 = i5;
                                        obj5 = obj2;
                                        i31 = i31;
                                        unsafe4 = unsafe4;
                                        i32 = i4;
                                        i35 = 1048575;
                                        iR3 = iQ12;
                                        bArr6 = bArr;
                                    }
                                    break;
                                default:
                                    if (z == 3) {
                                        i33 |= i44;
                                        Object objZ2 = pl9Var.z(iT, obj5);
                                        i31 = iT;
                                        iR3 = sz8.v0(objZ2, pl9Var.y(iT), bArr, i37, i2, (i38 << 3) | 4, rg9Var);
                                        rg9Var4 = rg9Var;
                                        bArr5 = bArr;
                                        pl9Var.j(i31, obj5, objZ2);
                                        bArr6 = bArr5;
                                        i31 = i31;
                                        i30 = i38;
                                        i32 = i45;
                                        rg9Var = rg9Var4;
                                    } else {
                                        i31 = iT;
                                        bArr4 = bArr;
                                        unsafe2 = unsafe4;
                                        obj4 = obj5;
                                        i7 = i33;
                                        i6 = i37;
                                        i8 = i34 == true ? 1 : 0;
                                        rg9Var3 = rg9Var;
                                        mn9Var = mn9Var3;
                                        i5 = i38;
                                        i3 = i3;
                                        i4 = i45;
                                        rg9Var = rg9Var3;
                                        i34 = i8;
                                        i33 = i7;
                                        unsafe4 = unsafe2;
                                        obj2 = obj4;
                                        bArr2 = bArr4;
                                        if (i34 == i3) {
                                        }
                                        xi9Var = (xi9) obj2;
                                        mn9VarB = xi9Var.zzc;
                                        if (mn9VarB == mn9Var) {
                                            mn9VarB = mn9.b();
                                            xi9Var.zzc = mn9VarB;
                                        }
                                        int i4110 = i34;
                                        int iQ13 = sz8.q0(i4110 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                                        pl9Var = this;
                                        rg9Var = rg9Var;
                                        i34 = i4110 == true ? 1 : 0;
                                        i2 = i2;
                                        i30 = i5;
                                        obj5 = obj2;
                                        i31 = i31;
                                        unsafe4 = unsafe4;
                                        i32 = i4;
                                        i35 = 1048575;
                                        iR3 = iQ13;
                                        bArr6 = bArr;
                                    }
                                    break;
                            }
                        } else {
                            unsafe4 = unsafe4;
                            Object obj12 = obj5;
                            i31 = iT;
                            i4 = i32;
                            if (iU != 27) {
                                int i66 = i34 == true ? 1 : 0;
                                if (iU <= 49) {
                                    i34 = i66;
                                    int i67 = i33;
                                    long j4 = i42;
                                    ej9 ej9VarZzd = (ej9) unsafe4.getObject(obj12, j2);
                                    if (!((og9) ej9VarZzd).a) {
                                        int size = ej9VarZzd.size();
                                        ej9VarZzd = ej9VarZzd.zzd(size + size);
                                        unsafe4.putObject(obj12, j2, ej9VarZzd);
                                    }
                                    switch (iU) {
                                        case 18:
                                        case 35:
                                            i19 = i37;
                                            i38 = i38;
                                            mn9Var = mn9Var3;
                                            if (z == 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 1) {
                                                e6.d();
                                                return 0;
                                            }
                                            iR3 = i19;
                                            if (iR3 != i19) {
                                                obj5 = obj;
                                                bArr6 = bArr;
                                                i2 = i2;
                                                i33 = i67;
                                                i30 = i38;
                                                i32 = i4;
                                            } else {
                                                obj2 = obj;
                                                bArr2 = bArr;
                                                i3 = i3;
                                                i6 = iR3;
                                                i33 = i67;
                                                i5 = i38;
                                                rg9Var = rg9Var;
                                            }
                                            break;
                                            break;
                                        case Argon2.V13 /* 19 */:
                                        case 36:
                                            i19 = i37;
                                            i38 = i38;
                                            mn9Var = mn9Var3;
                                            if (z == 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 5) {
                                                e6.d();
                                                return 0;
                                            }
                                            iR3 = i19;
                                            if (iR3 != i19) {
                                                obj5 = obj;
                                                bArr6 = bArr;
                                                i2 = i2;
                                                i33 = i67;
                                                i30 = i38;
                                                i32 = i4;
                                            } else {
                                                obj2 = obj;
                                                bArr2 = bArr;
                                                i3 = i3;
                                                i6 = iR3;
                                                i33 = i67;
                                                i5 = i38;
                                                rg9Var = rg9Var;
                                            }
                                            break;
                                            break;
                                        case 20:
                                        case 21:
                                        case 37:
                                        case 38:
                                            i19 = i37;
                                            i38 = i38;
                                            mn9Var = mn9Var3;
                                            if (z == 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 0) {
                                                e6.d();
                                                return 0;
                                            }
                                            iR3 = i19;
                                            if (iR3 != i19) {
                                                obj5 = obj;
                                                bArr6 = bArr;
                                                i2 = i2;
                                                i33 = i67;
                                                i30 = i38;
                                                i32 = i4;
                                            } else {
                                                obj2 = obj;
                                                bArr2 = bArr;
                                                i3 = i3;
                                                i6 = iR3;
                                                i33 = i67;
                                                i5 = i38;
                                                rg9Var = rg9Var;
                                            }
                                            break;
                                            break;
                                        case 22:
                                        case 29:
                                        case 39:
                                        case 43:
                                            ej9 ej9Var = ej9VarZzd;
                                            i20 = i37;
                                            i38 = i38;
                                            mn9Var = mn9Var3;
                                            i21 = i34 == true ? 1 : 0;
                                            if (z != 2) {
                                                if (z == 0) {
                                                    int iT0 = sz8.t0(i21 == true ? 1 : 0, bArr, i20, i2, ej9Var, rg9Var);
                                                    i34 = i21 == true ? 1 : 0;
                                                    i19 = i20;
                                                    iR3 = iT0;
                                                }
                                                i34 = i21;
                                                i19 = i20;
                                                iR3 = i19;
                                                if (iR3 != i19) {
                                                    obj5 = obj;
                                                    bArr6 = bArr;
                                                    i2 = i2;
                                                    i33 = i67;
                                                    i30 = i38;
                                                    i32 = i4;
                                                } else {
                                                    obj2 = obj;
                                                    bArr2 = bArr;
                                                    i3 = i3;
                                                    i6 = iR3;
                                                    i33 = i67;
                                                    i5 = i38;
                                                    rg9Var = rg9Var;
                                                }
                                            } else {
                                                iP0 = sz8.p0(bArr, i20, ej9Var, rg9Var);
                                                int i68 = i20;
                                                iR3 = iP0;
                                                i19 = i68;
                                                i34 = i21;
                                            }
                                            if (iR3 != i19) {
                                                obj5 = obj;
                                                bArr6 = bArr;
                                                i2 = i2;
                                                i33 = i67;
                                                i30 = i38;
                                                i32 = i4;
                                            } else {
                                                obj2 = obj;
                                                bArr2 = bArr;
                                                i3 = i3;
                                                i6 = iR3;
                                                i33 = i67;
                                                i5 = i38;
                                                rg9Var = rg9Var;
                                            }
                                            break;
                                        case 23:
                                        case 32:
                                        case 40:
                                        case 46:
                                            i21 = i34 == true ? 1 : 0;
                                            i20 = i37;
                                            i38 = i38;
                                            mn9Var = mn9Var3;
                                            if (z == 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 1) {
                                                e6.d();
                                                return 0;
                                            }
                                            i34 = i21;
                                            i19 = i20;
                                            iR3 = i19;
                                            if (iR3 != i19) {
                                                obj5 = obj;
                                                bArr6 = bArr;
                                                i2 = i2;
                                                i33 = i67;
                                                i30 = i38;
                                                i32 = i4;
                                            } else {
                                                obj2 = obj;
                                                bArr2 = bArr;
                                                i3 = i3;
                                                i6 = iR3;
                                                i33 = i67;
                                                i5 = i38;
                                                rg9Var = rg9Var;
                                            }
                                            break;
                                            break;
                                        case 24:
                                        case 31:
                                        case 41:
                                        case 45:
                                            ej9 ej9Var2 = ej9VarZzd;
                                            i20 = i37;
                                            i38 = i38;
                                            mn9Var = mn9Var3;
                                            i21 = i34 == true ? 1 : 0;
                                            if (z != 2) {
                                                if (z == 5) {
                                                    iP0 = i20 + 4;
                                                    yi9 yi9Var = (yi9) ej9Var2;
                                                    yi9Var.e(sz8.n0(bArr, i20));
                                                    while (iP0 < i2) {
                                                        int iR5 = sz8.r0(bArr, iP0, rg9Var);
                                                        if (i21 == rg9Var.a) {
                                                            yi9Var.e(sz8.n0(bArr, iR5));
                                                            iP0 = iR5 + 4;
                                                        } else {
                                                            int i69 = i20;
                                                            iR3 = iP0;
                                                            i19 = i69;
                                                            i34 = i21;
                                                        }
                                                    }
                                                    int i610 = i20;
                                                    iR3 = iP0;
                                                    i19 = i610;
                                                    i34 = i21;
                                                }
                                                i34 = i21;
                                                i19 = i20;
                                                iR3 = i19;
                                                if (iR3 != i19) {
                                                    obj5 = obj;
                                                    bArr6 = bArr;
                                                    i2 = i2;
                                                    i33 = i67;
                                                    i30 = i38;
                                                    i32 = i4;
                                                } else {
                                                    obj2 = obj;
                                                    bArr2 = bArr;
                                                    i3 = i3;
                                                    i6 = iR3;
                                                    i33 = i67;
                                                    i5 = i38;
                                                    rg9Var = rg9Var;
                                                }
                                            } else {
                                                yi9 yi9Var2 = (yi9) ej9Var2;
                                                int iR6 = sz8.r0(bArr, i20, rg9Var);
                                                int i70 = rg9Var.a;
                                                int i71 = iR6 + i70;
                                                if (i71 > bArr.length) {
                                                    b6.f("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                    return 0;
                                                }
                                                int i72 = (i70 / 4) + yi9Var2.c;
                                                int length2 = yi9Var2.b.length;
                                                if (i72 > length2) {
                                                    if (length2 != 0) {
                                                        while (length2 < i72) {
                                                            length2 = Math.max(((length2 * 3) / 2) + 1, 10);
                                                        }
                                                        yi9Var2.b = Arrays.copyOf(yi9Var2.b, length2);
                                                    } else {
                                                        yi9Var2.b = new int[Math.max(i72, 10)];
                                                    }
                                                }
                                                while (iR6 < i71) {
                                                    yi9Var2.e(sz8.n0(bArr, iR6));
                                                    iR6 += 4;
                                                }
                                                if (iR6 != i71) {
                                                    b6.f("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                    return 0;
                                                }
                                                i34 = i21 == true ? 1 : 0;
                                                i19 = i20;
                                                iR3 = iR6;
                                            }
                                            if (iR3 != i19) {
                                                obj5 = obj;
                                                bArr6 = bArr;
                                                i2 = i2;
                                                i33 = i67;
                                                i30 = i38;
                                                i32 = i4;
                                            } else {
                                                obj2 = obj;
                                                bArr2 = bArr;
                                                i3 = i3;
                                                i6 = iR3;
                                                i33 = i67;
                                                i5 = i38;
                                                rg9Var = rg9Var;
                                            }
                                            break;
                                        case 25:
                                        case 42:
                                            i22 = i34 == true ? 1 : 0;
                                            i23 = i37;
                                            i38 = i38;
                                            mn9Var = mn9Var3;
                                            if (z == 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 0) {
                                                e6.d();
                                                return 0;
                                            }
                                            i34 = i22;
                                            i19 = i23;
                                            iR3 = i19;
                                            if (iR3 != i19) {
                                                obj5 = obj;
                                                bArr6 = bArr;
                                                i2 = i2;
                                                i33 = i67;
                                                i30 = i38;
                                                i32 = i4;
                                            } else {
                                                obj2 = obj;
                                                bArr2 = bArr;
                                                i3 = i3;
                                                i6 = iR3;
                                                i33 = i67;
                                                i5 = i38;
                                                rg9Var = rg9Var;
                                            }
                                            break;
                                            break;
                                        case 26:
                                            ej9 ej9Var3 = ej9VarZzd;
                                            i23 = i37;
                                            i38 = i38;
                                            mn9Var = mn9Var3;
                                            i22 = i34 == true ? 1 : 0;
                                            if (z == 2) {
                                                if ((j4 & 536870912) == 0) {
                                                    iR1 = sz8.r0(bArr, i23, rg9Var);
                                                    int i73 = rg9Var.a;
                                                    if (i73 < 0) {
                                                        b6.f("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                        return 0;
                                                    }
                                                    if (i73 == 0) {
                                                        ej9Var3.add("");
                                                    } else {
                                                        ej9Var3.add(new String(bArr, iR1, i73, nj9.a));
                                                        iR1 += i73;
                                                    }
                                                    while (iR1 < i2) {
                                                        int iR7 = sz8.r0(bArr, iR1, rg9Var);
                                                        if (i22 == rg9Var.a) {
                                                            iR1 = sz8.r0(bArr, iR7, rg9Var);
                                                            int i74 = rg9Var.a;
                                                            if (i74 < 0) {
                                                                b6.f("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                                return 0;
                                                            }
                                                            if (i74 == 0) {
                                                                ej9Var3.add("");
                                                            } else {
                                                                ej9Var3.add(new String(bArr, iR1, i74, nj9.a));
                                                                iR1 += i74;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    iR1 = sz8.r0(bArr, i23, rg9Var);
                                                    int i75 = rg9Var.a;
                                                    if (i75 < 0) {
                                                        b6.f("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                        return 0;
                                                    }
                                                    if (i75 == 0) {
                                                        ej9Var3.add("");
                                                    } else {
                                                        int i76 = iR1 + i75;
                                                        if (!xn9.c(bArr, iR1, i76)) {
                                                            b6.f("Protocol message had invalid UTF-8.");
                                                            return 0;
                                                        }
                                                        ej9Var3.add(new String(bArr, iR1, i75, nj9.a));
                                                        iR1 = i76;
                                                    }
                                                    while (iR1 < i2) {
                                                        int iR8 = sz8.r0(bArr, iR1, rg9Var);
                                                        if (i22 == rg9Var.a) {
                                                            iR1 = sz8.r0(bArr, iR8, rg9Var);
                                                            int i77 = rg9Var.a;
                                                            if (i77 < 0) {
                                                                b6.f("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                                return 0;
                                                            }
                                                            if (i77 == 0) {
                                                                ej9Var3.add("");
                                                            } else {
                                                                int i78 = iR1 + i77;
                                                                if (!xn9.c(bArr, iR1, i78)) {
                                                                    b6.f("Protocol message had invalid UTF-8.");
                                                                    return 0;
                                                                }
                                                                ej9Var3.add(new String(bArr, iR1, i77, nj9.a));
                                                                iR1 = i78;
                                                            }
                                                        }
                                                    }
                                                }
                                                iR3 = iR1;
                                                i19 = i23;
                                                i34 = i22 == true ? 1 : 0;
                                            } else {
                                                i34 = i22;
                                                i19 = i23;
                                                iR3 = i19;
                                            }
                                            if (iR3 != i19) {
                                                obj5 = obj;
                                                bArr6 = bArr;
                                                i2 = i2;
                                                i33 = i67;
                                                i30 = i38;
                                                i32 = i4;
                                            } else {
                                                obj2 = obj;
                                                bArr2 = bArr;
                                                i3 = i3;
                                                i6 = iR3;
                                                i33 = i67;
                                                i5 = i38;
                                                rg9Var = rg9Var;
                                            }
                                            break;
                                        case 27:
                                            ej9 ej9Var4 = ej9VarZzd;
                                            i21 = i34 == true ? 1 : 0;
                                            i20 = i37;
                                            i38 = i38;
                                            mn9Var = mn9Var3;
                                            if (z == 2) {
                                                iP0 = sz8.o0(pl9Var.y(i31), i21 == true ? 1 : 0, bArr, i20, i2, ej9Var4, rg9Var);
                                                int i611 = i20;
                                                iR3 = iP0;
                                                i19 = i611;
                                                i34 = i21;
                                                if (iR3 != i19) {
                                                    obj5 = obj;
                                                    bArr6 = bArr;
                                                    i2 = i2;
                                                    i33 = i67;
                                                    i30 = i38;
                                                    i32 = i4;
                                                } else {
                                                    obj2 = obj;
                                                    bArr2 = bArr;
                                                    i3 = i3;
                                                    i6 = iR3;
                                                    i33 = i67;
                                                    i5 = i38;
                                                    rg9Var = rg9Var;
                                                }
                                            } else {
                                                i34 = i21;
                                                i19 = i20;
                                                iR3 = i19;
                                                if (iR3 != i19) {
                                                    obj5 = obj;
                                                    bArr6 = bArr;
                                                    i2 = i2;
                                                    i33 = i67;
                                                    i30 = i38;
                                                    i32 = i4;
                                                } else {
                                                    obj2 = obj;
                                                    bArr2 = bArr;
                                                    i3 = i3;
                                                    i6 = iR3;
                                                    i33 = i67;
                                                    i5 = i38;
                                                    rg9Var = rg9Var;
                                                }
                                            }
                                            break;
                                        case 28:
                                            ej9 ej9Var5 = ej9VarZzd;
                                            i21 = i34 == true ? 1 : 0;
                                            i20 = i37;
                                            i38 = i38;
                                            mn9Var = mn9Var3;
                                            if (z == 2) {
                                                int iR9 = sz8.r0(bArr, i20, rg9Var);
                                                int i79 = rg9Var.a;
                                                if (i79 < 0) {
                                                    b6.f("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    return 0;
                                                }
                                                if (i79 > bArr.length - iR9) {
                                                    b6.f("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                    return 0;
                                                }
                                                if (i79 == 0) {
                                                    ej9Var5.add(dh9.b);
                                                } else {
                                                    ej9Var5.add(dh9.o(bArr, iR9, i79));
                                                    iR9 += i79;
                                                }
                                                while (iR9 < i2) {
                                                    int iR10 = sz8.r0(bArr, iR9, rg9Var);
                                                    if (i21 == rg9Var.a) {
                                                        iR9 = sz8.r0(bArr, iR10, rg9Var);
                                                        int i80 = rg9Var.a;
                                                        if (i80 < 0) {
                                                            b6.f("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                            return 0;
                                                        }
                                                        if (i80 > bArr.length - iR9) {
                                                            b6.f("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                            return 0;
                                                        }
                                                        if (i80 == 0) {
                                                            ej9Var5.add(dh9.b);
                                                        } else {
                                                            ej9Var5.add(dh9.o(bArr, iR9, i80));
                                                            iR9 += i80;
                                                        }
                                                    } else {
                                                        i34 = i21 == true ? 1 : 0;
                                                        i19 = i20;
                                                        iR3 = iR9;
                                                    }
                                                }
                                                i34 = i21 == true ? 1 : 0;
                                                i19 = i20;
                                                iR3 = iR9;
                                            } else {
                                                i34 = i21;
                                                i19 = i20;
                                                iR3 = i19;
                                            }
                                            if (iR3 != i19) {
                                                obj5 = obj;
                                                bArr6 = bArr;
                                                i2 = i2;
                                                i33 = i67;
                                                i30 = i38;
                                                i32 = i4;
                                            } else {
                                                obj2 = obj;
                                                bArr2 = bArr;
                                                i3 = i3;
                                                i6 = iR3;
                                                i33 = i67;
                                                i5 = i38;
                                                rg9Var = rg9Var;
                                            }
                                            break;
                                        case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                                        case 44:
                                            ej9 ej9Var6 = ej9VarZzd;
                                            i20 = i37;
                                            if (z == 2) {
                                                iP1 = sz8.p0(bArr, i20, ej9Var6, rg9Var);
                                                i24 = i34 == true ? 1 : 0;
                                            } else if (z != 0) {
                                                i38 = i38;
                                                mn9Var = mn9Var3;
                                                i19 = i20;
                                                iR3 = i19;
                                                if (iR3 != i19) {
                                                    obj5 = obj;
                                                    bArr6 = bArr;
                                                    i2 = i2;
                                                    i33 = i67;
                                                    i30 = i38;
                                                    i32 = i4;
                                                } else {
                                                    obj2 = obj;
                                                    bArr2 = bArr;
                                                    i3 = i3;
                                                    i6 = iR3;
                                                    i33 = i67;
                                                    i5 = i38;
                                                    rg9Var = rg9Var;
                                                }
                                            } else {
                                                int iT1 = sz8.t0(i34 == true ? 1 : 0, bArr, i20, i2, ej9Var6, rg9Var);
                                                i20 = i20;
                                                i24 = i34 == true ? 1 : 0;
                                                iP1 = iT1;
                                            }
                                            bj9 bj9VarX2 = pl9Var.x(i31);
                                            ns0 ns0Var = nm9.a;
                                            if (bj9VarX2 != null) {
                                                int size2 = ej9Var6.size();
                                                i25 = iP1;
                                                mn9 mn9Var4 = null;
                                                int i81 = 0;
                                                int i82 = 0;
                                                while (i81 < size2) {
                                                    int i83 = i38;
                                                    Integer num = (Integer) ej9Var6.get(i81);
                                                    int iIntValue = num.intValue();
                                                    if (bj9VarX2.zza(iIntValue)) {
                                                        if (i81 != i82) {
                                                            ej9Var6.set(i82, num);
                                                        }
                                                        i82++;
                                                        i81 = i81;
                                                        mn9Var3 = mn9Var3;
                                                        mn9VarB2 = mn9Var4;
                                                        bj9VarX2 = bj9VarX2;
                                                    } else {
                                                        if (mn9Var4 == null) {
                                                            pl9Var.i.getClass();
                                                            xi9 xi9Var3 = (xi9) obj;
                                                            mn9VarB2 = xi9Var3.zzc;
                                                            if (mn9VarB2 == mn9Var3) {
                                                                mn9VarB2 = mn9.b();
                                                                xi9Var3.zzc = mn9VarB2;
                                                            }
                                                        } else {
                                                            mn9VarB2 = mn9Var4;
                                                        }
                                                        mn9VarB2.c(i83 << 3, Long.valueOf(iIntValue));
                                                    }
                                                    bj9 bj9Var = bj9VarX2;
                                                    mn9Var4 = mn9VarB2;
                                                    i81++;
                                                    bj9VarX2 = bj9Var;
                                                    mn9Var3 = mn9Var3;
                                                    i38 = i83;
                                                }
                                                i38 = i38;
                                                mn9Var = mn9Var3;
                                                if (i82 != size2) {
                                                    ej9Var6.subList(i82, size2).clear();
                                                }
                                            } else {
                                                i25 = iP1;
                                                i38 = i38;
                                                mn9Var = mn9Var3;
                                            }
                                            i34 = i24;
                                            i19 = i20;
                                            iR3 = i25;
                                            if (iR3 != i19) {
                                                obj5 = obj;
                                                bArr6 = bArr;
                                                i2 = i2;
                                                i33 = i67;
                                                i30 = i38;
                                                i32 = i4;
                                            } else {
                                                obj2 = obj;
                                                bArr2 = bArr;
                                                i3 = i3;
                                                i6 = iR3;
                                                i33 = i67;
                                                i5 = i38;
                                                rg9Var = rg9Var;
                                            }
                                            break;
                                        case 33:
                                        case 47:
                                            ej9 ej9Var7 = ej9VarZzd;
                                            i26 = i37;
                                            if (z != 2) {
                                                if (z == 0) {
                                                    yi9 yi9Var3 = (yi9) ej9Var7;
                                                    int iR11 = sz8.r0(bArr, i26, rg9Var);
                                                    yi9Var3.e(bb9.Q(rg9Var.a));
                                                    while (iR11 < i2) {
                                                        int iR12 = sz8.r0(bArr, iR11, rg9Var);
                                                        if (i34 == rg9Var.a) {
                                                            iR11 = sz8.r0(bArr, iR12, rg9Var);
                                                            yi9Var3.e(bb9.Q(rg9Var.a));
                                                        } else {
                                                            i19 = i26;
                                                            i38 = i38;
                                                            iR3 = iR11;
                                                        }
                                                    }
                                                    i19 = i26;
                                                    i38 = i38;
                                                    iR3 = iR11;
                                                }
                                                i19 = i26;
                                                mn9Var = mn9Var3;
                                                iR3 = i19;
                                                if (iR3 != i19) {
                                                    obj5 = obj;
                                                    bArr6 = bArr;
                                                    i2 = i2;
                                                    i33 = i67;
                                                    i30 = i38;
                                                    i32 = i4;
                                                } else {
                                                    obj2 = obj;
                                                    bArr2 = bArr;
                                                    i3 = i3;
                                                    i6 = iR3;
                                                    i33 = i67;
                                                    i5 = i38;
                                                    rg9Var = rg9Var;
                                                }
                                            } else {
                                                yi9 yi9Var4 = (yi9) ej9Var7;
                                                int iR13 = sz8.r0(bArr, i26, rg9Var);
                                                int i84 = rg9Var.a + iR13;
                                                while (iR13 < i84) {
                                                    iR13 = sz8.r0(bArr, iR13, rg9Var);
                                                    yi9Var4.e(bb9.Q(rg9Var.a));
                                                }
                                                if (iR13 != i84) {
                                                    b6.f("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                    return 0;
                                                }
                                                i19 = i26;
                                                iR3 = iR13;
                                            }
                                            mn9Var = mn9Var3;
                                            if (iR3 != i19) {
                                                obj5 = obj;
                                                bArr6 = bArr;
                                                i2 = i2;
                                                i33 = i67;
                                                i30 = i38;
                                                i32 = i4;
                                            } else {
                                                obj2 = obj;
                                                bArr2 = bArr;
                                                i3 = i3;
                                                i6 = iR3;
                                                i33 = i67;
                                                i5 = i38;
                                                rg9Var = rg9Var;
                                            }
                                            break;
                                        case 34:
                                        case 48:
                                            i26 = i37;
                                            if (z == 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 0) {
                                                e6.d();
                                                return 0;
                                            }
                                            i19 = i26;
                                            mn9Var = mn9Var3;
                                            iR3 = i19;
                                            if (iR3 != i19) {
                                                obj5 = obj;
                                                bArr6 = bArr;
                                                i2 = i2;
                                                i33 = i67;
                                                i30 = i38;
                                                i32 = i4;
                                            } else {
                                                obj2 = obj;
                                                bArr2 = bArr;
                                                i3 = i3;
                                                i6 = iR3;
                                                i33 = i67;
                                                i5 = i38;
                                                rg9Var = rg9Var;
                                            }
                                            break;
                                            break;
                                        default:
                                            if (z == 3) {
                                                int i85 = ((i34 == true ? 1 : 0) & (-8)) | 4;
                                                jm9 jm9VarY = pl9Var.y(i31);
                                                xi9 xi9VarZze = jm9VarY.zze();
                                                ej9 ej9Var8 = ej9VarZzd;
                                                int i86 = i37;
                                                int iV0 = sz8.v0(xi9VarZze, jm9VarY, bArr, i86, i2, i85, rg9Var);
                                                int i87 = i85;
                                                rg9 rg9Var6 = rg9Var;
                                                jm9VarY.zzf(xi9VarZze);
                                                rg9Var6.c = xi9VarZze;
                                                ej9Var8.add(xi9VarZze);
                                                while (iV0 < i2) {
                                                    int i88 = i86;
                                                    int iR14 = sz8.r0(bArr, iV0, rg9Var6);
                                                    if (i34 != rg9Var6.a) {
                                                        i86 = i88;
                                                        i19 = i86;
                                                        iR3 = iV0;
                                                        mn9Var = mn9Var3;
                                                        if (iR3 != i19) {
                                                            obj5 = obj;
                                                            bArr6 = bArr;
                                                            i2 = i2;
                                                            i33 = i67;
                                                            i30 = i38;
                                                            i32 = i4;
                                                        } else {
                                                            obj2 = obj;
                                                            bArr2 = bArr;
                                                            i3 = i3;
                                                            i6 = iR3;
                                                            i33 = i67;
                                                            i5 = i38;
                                                            rg9Var = rg9Var;
                                                        }
                                                    } else {
                                                        int i89 = i87;
                                                        xi9 xi9VarZze2 = jm9VarY.zze();
                                                        iV0 = sz8.v0(xi9VarZze2, jm9VarY, bArr, iR14, i2, i89, rg9Var);
                                                        i87 = i89;
                                                        rg9Var6 = rg9Var;
                                                        jm9VarY.zzf(xi9VarZze2);
                                                        rg9Var6.c = xi9VarZze2;
                                                        ej9Var8.add(xi9VarZze2);
                                                        i86 = i88;
                                                    }
                                                    break;
                                                }
                                                i19 = i86;
                                                iR3 = iV0;
                                                mn9Var = mn9Var3;
                                                if (iR3 != i19) {
                                                    obj5 = obj;
                                                    bArr6 = bArr;
                                                    i2 = i2;
                                                    i33 = i67;
                                                    i30 = i38;
                                                    i32 = i4;
                                                } else {
                                                    obj2 = obj;
                                                    bArr2 = bArr;
                                                    i3 = i3;
                                                    i6 = iR3;
                                                    i33 = i67;
                                                    i5 = i38;
                                                    rg9Var = rg9Var;
                                                }
                                            } else {
                                                i19 = i37;
                                                mn9Var = mn9Var3;
                                                iR3 = i19;
                                                if (iR3 != i19) {
                                                    obj5 = obj;
                                                    bArr6 = bArr;
                                                    i2 = i2;
                                                    i33 = i67;
                                                    i30 = i38;
                                                    i32 = i4;
                                                } else {
                                                    obj2 = obj;
                                                    bArr2 = bArr;
                                                    i3 = i3;
                                                    i6 = iR3;
                                                    i33 = i67;
                                                    i5 = i38;
                                                    rg9Var = rg9Var;
                                                }
                                            }
                                            break;
                                    }
                                } else {
                                    i18 = i33;
                                    i17 = i37;
                                    i5 = i38;
                                    mn9Var = mn9Var3;
                                    if (iU != 50) {
                                        i34 = i66;
                                        obj2 = obj;
                                        long j5 = iArr[i31 + 2] & 1048575;
                                        switch (iU) {
                                            case 51:
                                                rg9Var = rg9Var;
                                                i5 = i5;
                                                i27 = i31;
                                                i28 = i17;
                                                bArr2 = bArr;
                                                if (z == 1) {
                                                    iU0 = i28 + 8;
                                                    unsafe4.putObject(obj2, j2, Double.valueOf(Double.longBitsToDouble(sz8.x0(bArr2, i28))));
                                                    unsafe4.putInt(obj2, j5, i5);
                                                } else {
                                                    iU0 = i28;
                                                }
                                                if (iU0 != i28) {
                                                    i2 = i2;
                                                    bArr6 = bArr2;
                                                    rg9Var = rg9Var;
                                                    i30 = i5;
                                                    obj5 = obj2;
                                                    unsafe4 = unsafe4;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i32 = i4;
                                                    i35 = 1048575;
                                                    iR3 = iU0;
                                                    pl9Var = this;
                                                } else {
                                                    i6 = iU0;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i3 = i3;
                                                }
                                                break;
                                            case 52:
                                                rg9Var = rg9Var;
                                                i5 = i5;
                                                i27 = i31;
                                                i28 = i17;
                                                bArr2 = bArr;
                                                if (z == 5) {
                                                    iU0 = i28 + 4;
                                                    unsafe4.putObject(obj2, j2, Float.valueOf(Float.intBitsToFloat(sz8.n0(bArr2, i28))));
                                                    unsafe4.putInt(obj2, j5, i5);
                                                } else {
                                                    iU0 = i28;
                                                }
                                                if (iU0 != i28) {
                                                    i2 = i2;
                                                    bArr6 = bArr2;
                                                    rg9Var = rg9Var;
                                                    i30 = i5;
                                                    obj5 = obj2;
                                                    unsafe4 = unsafe4;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i32 = i4;
                                                    i35 = 1048575;
                                                    iR3 = iU0;
                                                    pl9Var = this;
                                                } else {
                                                    i6 = iU0;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i3 = i3;
                                                }
                                                break;
                                            case 53:
                                            case 54:
                                                rg9Var = rg9Var;
                                                i5 = i5;
                                                i27 = i31;
                                                i28 = i17;
                                                bArr2 = bArr;
                                                if (z == 0) {
                                                    iU0 = sz8.u0(bArr2, i28, rg9Var);
                                                    unsafe4.putObject(obj2, j2, Long.valueOf(rg9Var.b));
                                                    unsafe4.putInt(obj2, j5, i5);
                                                } else {
                                                    iU0 = i28;
                                                }
                                                if (iU0 != i28) {
                                                    i2 = i2;
                                                    bArr6 = bArr2;
                                                    rg9Var = rg9Var;
                                                    i30 = i5;
                                                    obj5 = obj2;
                                                    unsafe4 = unsafe4;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i32 = i4;
                                                    i35 = 1048575;
                                                    iR3 = iU0;
                                                    pl9Var = this;
                                                } else {
                                                    i6 = iU0;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i3 = i3;
                                                }
                                                break;
                                            case 55:
                                            case 62:
                                                rg9Var = rg9Var;
                                                i5 = i5;
                                                i27 = i31;
                                                i28 = i17;
                                                bArr2 = bArr;
                                                if (z == 0) {
                                                    iU0 = sz8.r0(bArr2, i28, rg9Var);
                                                    unsafe4.putObject(obj2, j2, Integer.valueOf(rg9Var.a));
                                                    unsafe4.putInt(obj2, j5, i5);
                                                } else {
                                                    iU0 = i28;
                                                }
                                                if (iU0 != i28) {
                                                    i2 = i2;
                                                    bArr6 = bArr2;
                                                    rg9Var = rg9Var;
                                                    i30 = i5;
                                                    obj5 = obj2;
                                                    unsafe4 = unsafe4;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i32 = i4;
                                                    i35 = 1048575;
                                                    iR3 = iU0;
                                                    pl9Var = this;
                                                } else {
                                                    i6 = iU0;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i3 = i3;
                                                }
                                                break;
                                            case 56:
                                            case 65:
                                                rg9Var = rg9Var;
                                                i5 = i5;
                                                i27 = i31;
                                                i28 = i17;
                                                bArr2 = bArr;
                                                if (z == 1) {
                                                    iU0 = i28 + 8;
                                                    unsafe4.putObject(obj2, j2, Long.valueOf(sz8.x0(bArr2, i28)));
                                                    unsafe4.putInt(obj2, j5, i5);
                                                } else {
                                                    iU0 = i28;
                                                }
                                                if (iU0 != i28) {
                                                    i2 = i2;
                                                    bArr6 = bArr2;
                                                    rg9Var = rg9Var;
                                                    i30 = i5;
                                                    obj5 = obj2;
                                                    unsafe4 = unsafe4;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i32 = i4;
                                                    i35 = 1048575;
                                                    iR3 = iU0;
                                                    pl9Var = this;
                                                } else {
                                                    i6 = iU0;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i3 = i3;
                                                }
                                                break;
                                            case 57:
                                            case 64:
                                                rg9Var = rg9Var;
                                                i5 = i5;
                                                i27 = i31;
                                                i28 = i17;
                                                bArr2 = bArr;
                                                if (z == 5) {
                                                    iU0 = i28 + 4;
                                                    unsafe4.putObject(obj2, j2, Integer.valueOf(sz8.n0(bArr2, i28)));
                                                    unsafe4.putInt(obj2, j5, i5);
                                                } else {
                                                    iU0 = i28;
                                                }
                                                if (iU0 != i28) {
                                                    i2 = i2;
                                                    bArr6 = bArr2;
                                                    rg9Var = rg9Var;
                                                    i30 = i5;
                                                    obj5 = obj2;
                                                    unsafe4 = unsafe4;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i32 = i4;
                                                    i35 = 1048575;
                                                    iR3 = iU0;
                                                    pl9Var = this;
                                                } else {
                                                    i6 = iU0;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i3 = i3;
                                                }
                                                break;
                                            case 58:
                                                rg9Var = rg9Var;
                                                i5 = i5;
                                                i27 = i31;
                                                i28 = i17;
                                                bArr2 = bArr;
                                                if (z == 0) {
                                                    iU0 = sz8.u0(bArr2, i28, rg9Var);
                                                    unsafe4.putObject(obj2, j2, Boolean.valueOf(rg9Var.b != 0));
                                                    unsafe4.putInt(obj2, j5, i5);
                                                } else {
                                                    iU0 = i28;
                                                }
                                                if (iU0 != i28) {
                                                    i2 = i2;
                                                    bArr6 = bArr2;
                                                    rg9Var = rg9Var;
                                                    i30 = i5;
                                                    obj5 = obj2;
                                                    unsafe4 = unsafe4;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i32 = i4;
                                                    i35 = 1048575;
                                                    iR3 = iU0;
                                                    pl9Var = this;
                                                } else {
                                                    i6 = iU0;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i3 = i3;
                                                }
                                                break;
                                            case 59:
                                                i5 = i5;
                                                rg9Var = rg9Var;
                                                i27 = i31;
                                                i28 = i17;
                                                bArr2 = bArr;
                                                if (z == 2) {
                                                    int iR15 = sz8.r0(bArr2, i28, rg9Var);
                                                    int i90 = rg9Var.a;
                                                    if (i90 == 0) {
                                                        unsafe4.putObject(obj2, j2, "");
                                                    } else {
                                                        int i91 = iR15 + i90;
                                                        if ((i42 & 536870912) != 0 && !xn9.c(bArr2, iR15, i91)) {
                                                            b6.f("Protocol message had invalid UTF-8.");
                                                            return 0;
                                                        }
                                                        unsafe4.putObject(obj2, j2, new String(bArr2, iR15, i90, nj9.a));
                                                        iR15 = i91;
                                                    }
                                                    unsafe4.putInt(obj2, j5, i5);
                                                    iU0 = iR15;
                                                } else {
                                                    iU0 = i28;
                                                }
                                                if (iU0 != i28) {
                                                    i2 = i2;
                                                    bArr6 = bArr2;
                                                    rg9Var = rg9Var;
                                                    i30 = i5;
                                                    obj5 = obj2;
                                                    unsafe4 = unsafe4;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i32 = i4;
                                                    i35 = 1048575;
                                                    iR3 = iU0;
                                                    pl9Var = this;
                                                } else {
                                                    i6 = iU0;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i3 = i3;
                                                }
                                                break;
                                            case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                                                i5 = i5;
                                                bArr2 = bArr;
                                                if (z == 2) {
                                                    Object objA = pl9Var.A(obj2, i5, i31);
                                                    int iW0 = sz8.w0(objA, pl9Var.y(i31), bArr, i17, i2, rg9Var);
                                                    bArr2 = bArr;
                                                    pl9Var.k(obj2, i5, i31, objA);
                                                    iU0 = iW0;
                                                    i27 = i31;
                                                    i28 = i17;
                                                    rg9Var = rg9Var;
                                                } else {
                                                    i27 = i31;
                                                    i28 = i17;
                                                    rg9Var = rg9Var;
                                                    iU0 = i28;
                                                }
                                                if (iU0 != i28) {
                                                    i2 = i2;
                                                    bArr6 = bArr2;
                                                    rg9Var = rg9Var;
                                                    i30 = i5;
                                                    obj5 = obj2;
                                                    unsafe4 = unsafe4;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i32 = i4;
                                                    i35 = 1048575;
                                                    iR3 = iU0;
                                                    pl9Var = this;
                                                } else {
                                                    i6 = iU0;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i3 = i3;
                                                }
                                                break;
                                            case 61:
                                                rg9Var5 = rg9Var;
                                                i29 = i17;
                                                i5 = i5;
                                                bArr2 = bArr;
                                                if (z == 2) {
                                                    iL0 = sz8.l0(bArr2, i29, rg9Var5);
                                                    unsafe4.putObject(obj2, j2, rg9Var5.c);
                                                    unsafe4.putInt(obj2, j5, i5);
                                                    iU0 = iL0;
                                                    i27 = i31;
                                                    i28 = i29;
                                                    rg9Var = rg9Var5;
                                                    if (iU0 != i28) {
                                                        i2 = i2;
                                                        bArr6 = bArr2;
                                                        rg9Var = rg9Var;
                                                        i30 = i5;
                                                        obj5 = obj2;
                                                        unsafe4 = unsafe4;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i32 = i4;
                                                        i35 = 1048575;
                                                        iR3 = iU0;
                                                        pl9Var = this;
                                                    } else {
                                                        i6 = iU0;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i3 = i3;
                                                    }
                                                }
                                                i27 = i31;
                                                i28 = i29;
                                                rg9Var = rg9Var5;
                                                iU0 = i28;
                                                if (iU0 != i28) {
                                                    i2 = i2;
                                                    bArr6 = bArr2;
                                                    rg9Var = rg9Var;
                                                    i30 = i5;
                                                    obj5 = obj2;
                                                    unsafe4 = unsafe4;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i32 = i4;
                                                    i35 = 1048575;
                                                    iR3 = iU0;
                                                    pl9Var = this;
                                                } else {
                                                    i6 = iU0;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i3 = i3;
                                                }
                                                break;
                                            case 63:
                                                rg9Var5 = rg9Var;
                                                i29 = i17;
                                                i5 = i5;
                                                bArr2 = bArr;
                                                i27 = i31;
                                                if (z == 0) {
                                                    iL0 = sz8.r0(bArr2, i29, rg9Var5);
                                                    int i92 = rg9Var5.a;
                                                    i31 = i27;
                                                    bj9 bj9VarX3 = pl9Var.x(i31);
                                                    if (bj9VarX3 == null || bj9VarX3.zza(i92)) {
                                                        mn9Var = mn9Var;
                                                        unsafe4.putObject(obj2, j2, Integer.valueOf(i92));
                                                        unsafe4.putInt(obj2, j5, i5);
                                                    } else {
                                                        xi9 xi9Var4 = (xi9) obj2;
                                                        mn9 mn9VarB4 = xi9Var4.zzc;
                                                        if (mn9VarB4 == mn9Var) {
                                                            mn9Var = mn9Var;
                                                            mn9VarB4 = mn9.b();
                                                            xi9Var4.zzc = mn9VarB4;
                                                        }
                                                        mn9Var = mn9Var;
                                                        mn9VarB4.c(i34 == true ? 1 : 0, Long.valueOf(i92));
                                                    }
                                                    iU0 = iL0;
                                                    i27 = i31;
                                                    i28 = i29;
                                                    rg9Var = rg9Var5;
                                                    if (iU0 != i28) {
                                                        i2 = i2;
                                                        bArr6 = bArr2;
                                                        rg9Var = rg9Var;
                                                        i30 = i5;
                                                        obj5 = obj2;
                                                        unsafe4 = unsafe4;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i32 = i4;
                                                        i35 = 1048575;
                                                        iR3 = iU0;
                                                        pl9Var = this;
                                                    } else {
                                                        i6 = iU0;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i3 = i3;
                                                    }
                                                } else {
                                                    mn9Var = mn9Var;
                                                    i28 = i29;
                                                    rg9Var = rg9Var5;
                                                    iU0 = i28;
                                                    if (iU0 != i28) {
                                                        i2 = i2;
                                                        bArr6 = bArr2;
                                                        rg9Var = rg9Var;
                                                        i30 = i5;
                                                        obj5 = obj2;
                                                        unsafe4 = unsafe4;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i32 = i4;
                                                        i35 = 1048575;
                                                        iR3 = iU0;
                                                        pl9Var = this;
                                                    } else {
                                                        i6 = iU0;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i3 = i3;
                                                    }
                                                }
                                                break;
                                            case 66:
                                                rg9Var5 = rg9Var;
                                                i29 = i17;
                                                mn9Var2 = mn9Var;
                                                i5 = i5;
                                                bArr2 = bArr;
                                                i27 = i31;
                                                if (z == 0) {
                                                    iR2 = sz8.r0(bArr2, i29, rg9Var5);
                                                    unsafe4.putObject(obj2, j2, Integer.valueOf(bb9.Q(rg9Var5.a)));
                                                    unsafe4.putInt(obj2, j5, i5);
                                                    i28 = i29;
                                                    iU0 = iR2;
                                                    rg9Var = rg9Var5;
                                                    mn9Var = mn9Var2;
                                                    if (iU0 != i28) {
                                                        i2 = i2;
                                                        bArr6 = bArr2;
                                                        rg9Var = rg9Var;
                                                        i30 = i5;
                                                        obj5 = obj2;
                                                        unsafe4 = unsafe4;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i32 = i4;
                                                        i35 = 1048575;
                                                        iR3 = iU0;
                                                        pl9Var = this;
                                                    } else {
                                                        i6 = iU0;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i3 = i3;
                                                    }
                                                } else {
                                                    i28 = i29;
                                                    rg9Var = rg9Var5;
                                                    mn9Var = mn9Var2;
                                                    iU0 = i28;
                                                    if (iU0 != i28) {
                                                        i2 = i2;
                                                        bArr6 = bArr2;
                                                        rg9Var = rg9Var;
                                                        i30 = i5;
                                                        obj5 = obj2;
                                                        unsafe4 = unsafe4;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i32 = i4;
                                                        i35 = 1048575;
                                                        iR3 = iU0;
                                                        pl9Var = this;
                                                    } else {
                                                        i6 = iU0;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i3 = i3;
                                                    }
                                                }
                                                break;
                                            case 67:
                                                rg9Var5 = rg9Var;
                                                i29 = i17;
                                                i5 = i5;
                                                bArr2 = bArr;
                                                if (z == 0) {
                                                    iR2 = sz8.u0(bArr2, i29, rg9Var5);
                                                    i27 = i31;
                                                    mn9Var2 = mn9Var;
                                                    long j6 = rg9Var5.b;
                                                    unsafe4.putObject(obj2, j2, Long.valueOf((j6 >>> 1) ^ (-(j6 & 1))));
                                                    unsafe4.putInt(obj2, j5, i5);
                                                    i28 = i29;
                                                    iU0 = iR2;
                                                    rg9Var = rg9Var5;
                                                    mn9Var = mn9Var2;
                                                    if (iU0 != i28) {
                                                        i2 = i2;
                                                        bArr6 = bArr2;
                                                        rg9Var = rg9Var;
                                                        i30 = i5;
                                                        obj5 = obj2;
                                                        unsafe4 = unsafe4;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i32 = i4;
                                                        i35 = 1048575;
                                                        iR3 = iU0;
                                                        pl9Var = this;
                                                    } else {
                                                        i6 = iU0;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i3 = i3;
                                                    }
                                                }
                                                i27 = i31;
                                                i28 = i29;
                                                rg9Var = rg9Var5;
                                                iU0 = i28;
                                                if (iU0 != i28) {
                                                    i2 = i2;
                                                    bArr6 = bArr2;
                                                    rg9Var = rg9Var;
                                                    i30 = i5;
                                                    obj5 = obj2;
                                                    unsafe4 = unsafe4;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i32 = i4;
                                                    i35 = 1048575;
                                                    iR3 = iU0;
                                                    pl9Var = this;
                                                } else {
                                                    i6 = iU0;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i3 = i3;
                                                }
                                                break;
                                            case 68:
                                                if (z == 3) {
                                                    int i93 = ((i34 == true ? 1 : 0) & (-8)) | 4;
                                                    i29 = i17;
                                                    i5 = i5;
                                                    Object objA2 = pl9Var.A(obj2, i5, i31);
                                                    int iV1 = sz8.v0(objA2, pl9Var.y(i31), bArr, i29, i2, i93, rg9Var);
                                                    bArr2 = bArr;
                                                    rg9Var5 = rg9Var;
                                                    pl9Var.k(obj2, i5, i31, objA2);
                                                    iU0 = iV1;
                                                    i27 = i31;
                                                    i28 = i29;
                                                    rg9Var = rg9Var5;
                                                    if (iU0 != i28) {
                                                        i2 = i2;
                                                        bArr6 = bArr2;
                                                        rg9Var = rg9Var;
                                                        i30 = i5;
                                                        obj5 = obj2;
                                                        unsafe4 = unsafe4;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i32 = i4;
                                                        i35 = 1048575;
                                                        iR3 = iU0;
                                                        pl9Var = this;
                                                    } else {
                                                        i6 = iU0;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i3 = i3;
                                                    }
                                                } else {
                                                    i27 = i31;
                                                    i28 = i17;
                                                    bArr2 = bArr;
                                                    iU0 = i28;
                                                    if (iU0 != i28) {
                                                        i2 = i2;
                                                        bArr6 = bArr2;
                                                        rg9Var = rg9Var;
                                                        i30 = i5;
                                                        obj5 = obj2;
                                                        unsafe4 = unsafe4;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i32 = i4;
                                                        i35 = 1048575;
                                                        iR3 = iU0;
                                                        pl9Var = this;
                                                    } else {
                                                        i6 = iU0;
                                                        i33 = i18;
                                                        i31 = i27;
                                                        i3 = i3;
                                                    }
                                                }
                                                break;
                                            default:
                                                i27 = i31;
                                                i28 = i17;
                                                bArr2 = bArr;
                                                iU0 = i28;
                                                if (iU0 != i28) {
                                                    i2 = i2;
                                                    bArr6 = bArr2;
                                                    rg9Var = rg9Var;
                                                    i30 = i5;
                                                    obj5 = obj2;
                                                    unsafe4 = unsafe4;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i32 = i4;
                                                    i35 = 1048575;
                                                    iR3 = iU0;
                                                    pl9Var = this;
                                                } else {
                                                    i6 = iU0;
                                                    i33 = i18;
                                                    i31 = i27;
                                                    i3 = i3;
                                                }
                                                break;
                                        }
                                    } else {
                                        i34 = i66;
                                        if (z == 2) {
                                            int i94 = i31 / 3;
                                            Object obj13 = objArr[i94 + i94];
                                            Object object = unsafe4.getObject(obj, j2);
                                            if (!((xk9) object).a) {
                                                xk9 xk9Var2 = xk9.b;
                                                if (xk9Var2.isEmpty()) {
                                                    xk9Var = new xk9();
                                                } else {
                                                    xk9 xk9Var3 = new xk9(xk9Var2);
                                                    xk9Var3.a = true;
                                                    xk9Var = xk9Var3;
                                                }
                                                q34.u(xk9Var, object);
                                                unsafe4.putObject(obj, j2, xk9Var);
                                            }
                                            throw eq3.g(obj13);
                                        }
                                        obj2 = obj;
                                        rg9Var = rg9Var;
                                        i6 = i17;
                                        i33 = i18;
                                        i5 = i5;
                                    }
                                }
                            } else if (z == 2) {
                                ej9 ej9VarZzd2 = (ej9) unsafe4.getObject(obj12, j2);
                                if (!((og9) ej9VarZzd2).a) {
                                    int size3 = ej9VarZzd2.size();
                                    ej9VarZzd2 = ej9VarZzd2.zzd(size3 == 0 ? 10 : size3 + size3);
                                    unsafe4.putObject(obj12, j2, ej9VarZzd2);
                                }
                                bArr6 = bArr;
                                i2 = i2;
                                iR3 = sz8.o0(pl9Var.y(i31), i34 == true ? 1 : 0, bArr6, i37, i2, ej9VarZzd2, rg9Var);
                                i34 = i34 == true ? 1 : 0;
                                obj5 = obj;
                                i30 = i38;
                                i32 = i4;
                            } else {
                                obj2 = obj12;
                                i34 = i34 == true ? 1 : 0;
                                i17 = i37;
                                i5 = i38;
                                i18 = i33;
                                mn9Var = mn9Var3;
                                rg9Var = rg9Var;
                                i6 = i17;
                                i33 = i18;
                                i5 = i5;
                            }
                            if (i34 == i3) {
                            }
                            xi9Var = (xi9) obj2;
                            mn9VarB = xi9Var.zzc;
                            if (mn9VarB == mn9Var) {
                                mn9VarB = mn9.b();
                                xi9Var.zzc = mn9VarB;
                            }
                            int i4111 = i34;
                            int iQ14 = sz8.q0(i4111 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                            pl9Var = this;
                            rg9Var = rg9Var;
                            i34 = i4111 == true ? 1 : 0;
                            i2 = i2;
                            i30 = i5;
                            obj5 = obj2;
                            i31 = i31;
                            unsafe4 = unsafe4;
                            i32 = i4;
                            i35 = 1048575;
                            iR3 = iQ14;
                            bArr6 = bArr;
                        }
                    }
                    bArr2 = bArr;
                    if (i34 == i3) {
                    }
                    xi9Var = (xi9) obj2;
                    mn9VarB = xi9Var.zzc;
                    if (mn9VarB == mn9Var) {
                        mn9VarB = mn9.b();
                        xi9Var.zzc = mn9VarB;
                    }
                    int i4112 = i34;
                    int iQ15 = sz8.q0(i4112 == true ? 1 : 0, bArr2, i6, i2, mn9VarB, rg9Var);
                    pl9Var = this;
                    rg9Var = rg9Var;
                    i34 = i4112 == true ? 1 : 0;
                    i2 = i2;
                    i30 = i5;
                    obj5 = obj2;
                    i31 = i31;
                    unsafe4 = unsafe4;
                    i32 = i4;
                    i35 = 1048575;
                    iR3 = iQ15;
                    bArr6 = bArr;
                } else {
                    i3 = i3;
                    i4 = i32;
                    iArr = iArr2;
                    objArr = objArr2;
                    unsafe4 = unsafe4;
                    obj2 = obj5;
                }
            }
        }
        int i95 = i4;
        if (i95 != 1048575) {
            unsafe4.putInt(obj2, i95, i33);
        }
        for (int i96 = this.g; i96 < this.h; i96++) {
            int i97 = this.f[i96];
            int i98 = iArr[i97];
            Object objH = un9.h(obj2, v(i97) & 1048575);
            if (objH != null && x(i97) != null) {
                int i99 = i97 / 3;
                throw eq3.g(objArr[i99 + i99]);
            }
        }
        if (i3 == 0) {
            if (iR3 != i2) {
                b6.f("Failed to parse the message.");
                return 0;
            }
        } else if (iR3 > i2 || i34 != i3) {
            b6.f("Failed to parse the message.");
            return 0;
        }
        return iR3;
    }

    public final int t(int i, int i2) {
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

    public final int v(int i) {
        return this.a[i + 1];
    }

    public final bj9 x(int i) {
        int i2 = i / 3;
        return (bj9) this.b[i2 + i2 + 1];
    }

    public final jm9 y(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.b;
        jm9 jm9Var = (jm9) objArr[i3];
        if (jm9Var != null) {
            return jm9Var;
        }
        jm9 jm9VarA = bm9.c.a((Class) objArr[i3 + 1]);
        objArr[i3] = jm9VarA;
        return jm9VarA;
    }

    public final Object z(int i, Object obj) {
        jm9 jm9VarY = y(i);
        int iV = v(i) & 1048575;
        if (!m(i, obj)) {
            return jm9VarY.zze();
        }
        Object object = k.getObject(obj, iV);
        if (o(object)) {
            return object;
        }
        xi9 xi9VarZze = jm9VarY.zze();
        if (object != null) {
            jm9VarY.zzg(xi9VarZze, object);
        }
        return xi9VarZze;
    }

    @Override // defpackage.jm9
    public final xi9 zze() {
        return ((xi9) this.e).n();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0071  */
    /* JADX WARN: Code duplicated, block: B:30:0x0077  */
    /* JADX WARN: Code duplicated, block: B:44:0x0084 A[SYNTHETIC] */
    @Override // defpackage.jm9
    public final void zzf(Object obj) {
        if (!o(obj)) {
            return;
        }
        if (obj instanceof xi9) {
            xi9 xi9Var = (xi9) obj;
            xi9Var.g();
            xi9Var.zza = 0;
            xi9Var.e();
        }
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                this.i.getClass();
                mn9 mn9Var = ((xi9) obj).zzc;
                if (mn9Var.e) {
                    mn9Var.e = false;
                    return;
                }
                return;
            }
            int iV = v(i);
            int i2 = 1048575 & iV;
            int iU = u(iV);
            long j2 = i2;
            if (iU != 9) {
                if (iU != 60 && iU != 68) {
                    switch (iU) {
                        case 17:
                            if (m(i, obj)) {
                                y(i).zzf(k.getObject(obj, j2));
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
                            og9 og9Var = (og9) ((ej9) un9.h(obj, j2));
                            if (og9Var.a) {
                                og9Var.a = false;
                            }
                            break;
                        case 50:
                            Unsafe unsafe = k;
                            Object object = unsafe.getObject(obj, j2);
                            if (object != null) {
                                ((xk9) object).a = false;
                                unsafe.putObject(obj, j2, object);
                            }
                            break;
                    }
                } else if (p(obj, iArr[i], i)) {
                    y(i).zzf(k.getObject(obj, j2));
                }
            } else if (m(i, obj)) {
                y(i).zzf(k.getObject(obj, j2));
            }
            i += 3;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:9:0x0022  */
    @Override // defpackage.jm9
    public final void zzg(Object obj, Object obj2) {
        Object obj3;
        if (!o(obj)) {
            c6.f("Mutating immutable message: ".concat(String.valueOf(obj)));
            return;
        }
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                nm9.p(obj, obj2);
                return;
            }
            int iV = v(i);
            int i2 = iV & 1048575;
            int iU = u(iV);
            int i3 = iArr[i];
            long j2 = i2;
            switch (iU) {
                case 0:
                    if (!m(i, obj2)) {
                        obj3 = obj;
                    } else {
                        cm9 cm9Var = un9.c;
                        obj3 = obj;
                        cm9Var.f(obj3, j2, cm9Var.a(obj2, j2));
                        i(i, obj3);
                    }
                    break;
                case 1:
                    if (m(i, obj2)) {
                        cm9 cm9Var2 = un9.c;
                        cm9Var2.h(obj, j2, cm9Var2.b(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 2:
                    if (m(i, obj2)) {
                        un9.k(obj, j2, un9.f(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 3:
                    if (m(i, obj2)) {
                        un9.k(obj, j2, un9.f(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 4:
                    if (m(i, obj2)) {
                        un9.j(obj, j2, un9.e(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 5:
                    if (m(i, obj2)) {
                        un9.k(obj, j2, un9.f(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 6:
                    if (m(i, obj2)) {
                        un9.j(obj, j2, un9.e(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 7:
                    if (m(i, obj2)) {
                        cm9 cm9Var3 = un9.c;
                        cm9Var3.c(obj, j2, cm9Var3.j(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 8:
                    if (m(i, obj2)) {
                        un9.l(obj, j2, un9.h(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    g(i, obj, obj2);
                    obj3 = obj;
                    break;
                case 10:
                    if (m(i, obj2)) {
                        un9.l(obj, j2, un9.h(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    if (m(i, obj2)) {
                        un9.j(obj, j2, un9.e(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 12:
                    if (m(i, obj2)) {
                        un9.j(obj, j2, un9.e(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 13:
                    if (m(i, obj2)) {
                        un9.j(obj, j2, un9.e(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 14:
                    if (m(i, obj2)) {
                        un9.k(obj, j2, un9.f(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 15:
                    if (m(i, obj2)) {
                        un9.j(obj, j2, un9.e(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case Argon2.V10 /* 16 */:
                    if (m(i, obj2)) {
                        un9.k(obj, j2, un9.f(obj2, j2));
                        i(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 17:
                    g(i, obj, obj2);
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
                    ej9 ej9VarZzd = (ej9) un9.h(obj, j2);
                    ej9 ej9Var = (ej9) un9.h(obj2, j2);
                    int size = ej9VarZzd.size();
                    int size2 = ej9Var.size();
                    if (size > 0 && size2 > 0) {
                        if (!((og9) ej9VarZzd).a) {
                            ej9VarZzd = ej9VarZzd.zzd(size2 + size);
                        }
                        ej9VarZzd.addAll(ej9Var);
                    }
                    if (size > 0) {
                        ej9Var = ej9VarZzd;
                    }
                    un9.l(obj, j2, ej9Var);
                    obj3 = obj;
                    break;
                case 50:
                    ns0 ns0Var = nm9.a;
                    un9.l(obj, j2, q34.u(un9.h(obj, j2), un9.h(obj2, j2)));
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
                    if (p(obj2, i3, i)) {
                        un9.l(obj, j2, un9.h(obj2, j2));
                        un9.j(obj, iArr[i + 2] & 1048575, i3);
                    }
                    obj3 = obj;
                    break;
                case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                    h(i, obj, obj2);
                    obj3 = obj;
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (p(obj2, i3, i)) {
                        un9.l(obj, j2, un9.h(obj2, j2));
                        un9.j(obj, iArr[i + 2] & 1048575, i3);
                    }
                    obj3 = obj;
                    break;
                case 68:
                    h(i, obj, obj2);
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
}
