package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import com.nimbusds.jwt.proc.DefaultJWTClaimsVerifier;
import java.io.IOException;
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
public final class sd5 implements k57 {
    public static final int[] n = new int[0];
    public static final Unsafe o = ef8.i();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final s4 e;
    public final boolean f;
    public final int[] g;
    public final int h;
    public final int i;
    public final pm5 j;
    public final yw4 k;
    public final ke8 l;
    public final l65 m;

    public sd5(int[] iArr, Object[] objArr, int i, int i2, s4 s4Var, int[] iArr2, int i3, int i4, pm5 pm5Var, yw4 yw4Var, ke8 ke8Var, d13 d13Var, l65 l65Var) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.f = s4Var instanceof av3;
        this.g = iArr2;
        this.h = i3;
        this.i = i4;
        this.j = pm5Var;
        this.k = yw4Var;
        this.l = ke8Var;
        this.e = s4Var;
        this.m = l65Var;
    }

    public static Field F(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder sbU = dj7.u("Field ", str, " for ");
            sbU.append(cls.getName());
            sbU.append(" not found. Known fields are ");
            sbU.append(Arrays.toString(declaredFields));
            throw new RuntimeException(sbU.toString());
        }
    }

    public static int K(int i) {
        return (i & 267386880) >>> 20;
    }

    public static boolean p(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof av3) {
            return ((av3) obj).g();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:120:0x025b  */
    /* JADX WARN: Code duplicated, block: B:121:0x025e  */
    /* JADX WARN: Code duplicated, block: B:124:0x0275  */
    /* JADX WARN: Code duplicated, block: B:125:0x0278  */
    /* JADX WARN: Code duplicated, block: B:162:0x0334  */
    /* JADX WARN: Code duplicated, block: B:177:0x037e  */
    /* JADX WARN: Code duplicated, block: B:180:0x0388  */
    /* JADX WARN: Code duplicated, block: B:183:0x0398  */
    public static sd5 w(hf6 hf6Var, pm5 pm5Var, yw4 yw4Var, ke8 ke8Var, d13 d13Var, l65 l65Var) {
        int i;
        int iCharAt;
        int i2;
        int i3;
        int i4;
        int[] iArr;
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
        int i18;
        int i19;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i20;
        int i21;
        int i22;
        int i23;
        Field fieldF;
        char cCharAt9;
        int i24;
        int i25;
        int i26;
        Object obj;
        Field fieldF2;
        int i27;
        Object obj2;
        Field fieldF3;
        int i28;
        char cCharAt10;
        int i29;
        char cCharAt11;
        int i30;
        char cCharAt12;
        int i31;
        char cCharAt13;
        String str = hf6Var.b;
        int length = str.length();
        int i32 = 55296;
        if (str.charAt(0) >= 55296) {
            int i33 = 1;
            while (true) {
                i = i33 + 1;
                if (str.charAt(i33) < 55296) {
                    break;
                }
                i33 = i;
            }
        } else {
            i = 1;
        }
        int i34 = i + 1;
        int iCharAt2 = str.charAt(i);
        if (iCharAt2 >= 55296) {
            int i35 = iCharAt2 & 8191;
            int i36 = 13;
            while (true) {
                i31 = i34 + 1;
                cCharAt13 = str.charAt(i34);
                if (cCharAt13 < 55296) {
                    break;
                }
                i35 |= (cCharAt13 & 8191) << i36;
                i36 += 13;
                i34 = i31;
            }
            iCharAt2 = i35 | (cCharAt13 << i36);
            i34 = i31;
        }
        if (iCharAt2 == 0) {
            i3 = 0;
            i6 = 0;
            iCharAt = 0;
            i2 = 0;
            i5 = 0;
            i7 = 0;
            iArr = n;
            i4 = 0;
        } else {
            int i37 = i34 + 1;
            int iCharAt3 = str.charAt(i34);
            if (iCharAt3 >= 55296) {
                int i38 = iCharAt3 & 8191;
                int i39 = 13;
                while (true) {
                    i15 = i37 + 1;
                    cCharAt8 = str.charAt(i37);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i38 |= (cCharAt8 & 8191) << i39;
                    i39 += 13;
                    i37 = i15;
                }
                iCharAt3 = i38 | (cCharAt8 << i39);
                i37 = i15;
            }
            int i40 = i37 + 1;
            int iCharAt4 = str.charAt(i37);
            if (iCharAt4 >= 55296) {
                int i41 = iCharAt4 & 8191;
                int i42 = 13;
                while (true) {
                    i14 = i40 + 1;
                    cCharAt7 = str.charAt(i40);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i41 |= (cCharAt7 & 8191) << i42;
                    i42 += 13;
                    i40 = i14;
                }
                iCharAt4 = i41 | (cCharAt7 << i42);
                i40 = i14;
            }
            int i43 = i40 + 1;
            int iCharAt5 = str.charAt(i40);
            if (iCharAt5 >= 55296) {
                int i44 = iCharAt5 & 8191;
                int i45 = 13;
                while (true) {
                    i13 = i43 + 1;
                    cCharAt6 = str.charAt(i43);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt6 & 8191) << i45;
                    i45 += 13;
                    i43 = i13;
                }
                iCharAt5 = i44 | (cCharAt6 << i45);
                i43 = i13;
            }
            int i46 = i43 + 1;
            int iCharAt6 = str.charAt(i43);
            if (iCharAt6 >= 55296) {
                int i47 = iCharAt6 & 8191;
                int i48 = 13;
                while (true) {
                    i12 = i46 + 1;
                    cCharAt5 = str.charAt(i46);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt5 & 8191) << i48;
                    i48 += 13;
                    i46 = i12;
                }
                iCharAt6 = i47 | (cCharAt5 << i48);
                i46 = i12;
            }
            int i49 = i46 + 1;
            iCharAt = str.charAt(i46);
            if (iCharAt >= 55296) {
                int i50 = iCharAt & 8191;
                int i51 = 13;
                while (true) {
                    i11 = i49 + 1;
                    cCharAt4 = str.charAt(i49);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt4 & 8191) << i51;
                    i51 += 13;
                    i49 = i11;
                }
                iCharAt = i50 | (cCharAt4 << i51);
                i49 = i11;
            }
            int i52 = i49 + 1;
            int iCharAt7 = str.charAt(i49);
            if (iCharAt7 >= 55296) {
                int i53 = iCharAt7 & 8191;
                int i54 = 13;
                while (true) {
                    i10 = i52 + 1;
                    cCharAt3 = str.charAt(i52);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt3 & 8191) << i54;
                    i54 += 13;
                    i52 = i10;
                }
                iCharAt7 = i53 | (cCharAt3 << i54);
                i52 = i10;
            }
            int i55 = i52 + 1;
            int iCharAt8 = str.charAt(i52);
            if (iCharAt8 >= 55296) {
                int i56 = iCharAt8 & 8191;
                int i57 = 13;
                while (true) {
                    i9 = i55 + 1;
                    cCharAt2 = str.charAt(i55);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i56 |= (cCharAt2 & 8191) << i57;
                    i57 += 13;
                    i55 = i9;
                }
                iCharAt8 = i56 | (cCharAt2 << i57);
                i55 = i9;
            }
            int i58 = i55 + 1;
            int iCharAt9 = str.charAt(i55);
            if (iCharAt9 >= 55296) {
                int i59 = iCharAt9 & 8191;
                int i60 = 13;
                while (true) {
                    i8 = i58 + 1;
                    cCharAt = str.charAt(i58);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i59 |= (cCharAt & 8191) << i60;
                    i60 += 13;
                    i58 = i8;
                }
                iCharAt9 = i59 | (cCharAt << i60);
                i58 = i8;
            }
            int[] iArr2 = new int[iCharAt9 + iCharAt7 + iCharAt8];
            int i61 = (iCharAt3 * 2) + iCharAt4;
            int i62 = iCharAt7;
            i2 = iCharAt5;
            i3 = i62;
            i4 = iCharAt3;
            i34 = i58;
            iArr = iArr2;
            i5 = iCharAt6;
            i6 = i61;
            i7 = iCharAt9;
        }
        Unsafe unsafe = o;
        Object[] objArr = hf6Var.c;
        Class<?> cls = hf6Var.a.getClass();
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr2 = new Object[iCharAt * 2];
        int i63 = i7 + i3;
        int i64 = i63;
        int i65 = i7;
        int i66 = 0;
        int i67 = 0;
        while (i34 < length) {
            int i68 = i34 + 1;
            int iCharAt10 = str.charAt(i34);
            if (iCharAt10 >= i32) {
                int i69 = iCharAt10 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i30 = i70 + 1;
                    cCharAt12 = str.charAt(i70);
                    i16 = length;
                    if (cCharAt12 < 55296) {
                        break;
                    }
                    i69 |= (cCharAt12 & 8191) << i71;
                    i71 += 13;
                    i70 = i30;
                    length = i16;
                }
                iCharAt10 = i69 | (cCharAt12 << i71);
                i17 = i30;
            } else {
                i16 = length;
                i17 = i68;
            }
            int i72 = i17 + 1;
            int iCharAt11 = str.charAt(i17);
            Object[] objArr3 = objArr;
            char c = 55296;
            if (iCharAt11 >= 55296) {
                int i73 = iCharAt11 & 8191;
                int i74 = 13;
                while (true) {
                    i29 = i72 + 1;
                    cCharAt11 = str.charAt(i72);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i73 |= (cCharAt11 & 8191) << i74;
                    i74 += 13;
                    i72 = i29;
                    c = 55296;
                }
                iCharAt11 = i73 | (cCharAt11 << i74);
                i72 = i29;
            }
            int i75 = iCharAt11 & 255;
            int i76 = iCharAt10;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i66] = i67;
                i66++;
            }
            int[] iArr4 = iArr3;
            if (i75 >= 51) {
                int i77 = i72 + 1;
                int iCharAt12 = str.charAt(i72);
                char c2 = 55296;
                if (iCharAt12 >= 55296) {
                    int i78 = iCharAt12 & 8191;
                    int i79 = 13;
                    while (true) {
                        i28 = i77 + 1;
                        cCharAt10 = str.charAt(i77);
                        if (cCharAt10 < c2) {
                            break;
                        }
                        i78 |= (cCharAt10 & 8191) << i79;
                        i79 += 13;
                        i77 = i28;
                        c2 = 55296;
                    }
                    iCharAt12 = i78 | (cCharAt10 << i79);
                    i77 = i28;
                }
                int i80 = i75 - 51;
                int i81 = i77;
                if (i80 == 9 || i80 == 17) {
                    i25 = i6 + 1;
                    objArr2[((i67 / 3) * 2) + 1] = objArr3[i6];
                } else {
                    if (i80 == 12 && (dj7.a(hf6Var.a(), 1) || (iCharAt11 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0)) {
                        i25 = i6 + 1;
                        objArr2[((i67 / 3) * 2) + 1] = objArr3[i6];
                    }
                    i26 = iCharAt12 * 2;
                    obj = objArr3[i26];
                    if (obj instanceof Field) {
                        fieldF2 = (Field) obj;
                    } else {
                        fieldF2 = F(cls, (String) obj);
                        objArr3[i26] = fieldF2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldF2);
                    i27 = i26 + 1;
                    obj2 = objArr3[i27];
                    if (obj2 instanceof Field) {
                        fieldF3 = (Field) obj2;
                    } else {
                        fieldF3 = F(cls, (String) obj2);
                        objArr3[i27] = fieldF3;
                    }
                    int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldF3);
                    int i82 = i4;
                    iObjectFieldOffset2 = iObjectFieldOffset4;
                    i23 = iObjectFieldOffset3;
                    i18 = i82;
                    i22 = i6;
                    i20 = i81;
                    i21 = 0;
                    cls = cls;
                }
                i6 = i25;
                i26 = iCharAt12 * 2;
                obj = objArr3[i26];
                if (obj instanceof Field) {
                    fieldF2 = (Field) obj;
                } else {
                    fieldF2 = F(cls, (String) obj);
                    objArr3[i26] = fieldF2;
                }
                int iObjectFieldOffset5 = (int) unsafe.objectFieldOffset(fieldF2);
                i27 = i26 + 1;
                obj2 = objArr3[i27];
                if (obj2 instanceof Field) {
                    fieldF3 = (Field) obj2;
                } else {
                    fieldF3 = F(cls, (String) obj2);
                    objArr3[i27] = fieldF3;
                }
                int iObjectFieldOffset6 = (int) unsafe.objectFieldOffset(fieldF3);
                int i83 = i4;
                iObjectFieldOffset2 = iObjectFieldOffset6;
                i23 = iObjectFieldOffset5;
                i18 = i83;
                i22 = i6;
                i20 = i81;
                i21 = 0;
                cls = cls;
            } else {
                int i84 = i6 + 1;
                Field fieldF4 = F(cls, (String) objArr3[i6]);
                if (i75 == 9 || i75 == 17) {
                    i18 = i4;
                    objArr2[((i67 / 3) * 2) + 1] = fieldF4.getType();
                } else {
                    if (i75 == 27 || i75 == 49) {
                        i18 = i4;
                        i24 = i6 + 2;
                        objArr2[((i67 / 3) * 2) + 1] = objArr3[i84];
                    } else if (i75 == 12 || i75 == 30 || i75 == 44) {
                        i18 = i4;
                        if (hf6Var.a() == 1 || (iCharAt11 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
                            i24 = i6 + 2;
                            objArr2[((i67 / 3) * 2) + 1] = objArr3[i84];
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldF4);
                        if ((iCharAt11 & 4096) != 0 || i75 > 17) {
                            iObjectFieldOffset2 = 1048575;
                            i20 = i72;
                            i21 = 0;
                        } else {
                            int i85 = i72 + 1;
                            int iCharAt13 = str.charAt(i72);
                            if (iCharAt13 >= 55296) {
                                int i86 = iCharAt13 & 8191;
                                int i87 = 13;
                                while (true) {
                                    i20 = i85 + 1;
                                    cCharAt9 = str.charAt(i85);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i86 |= (cCharAt9 & 8191) << i87;
                                    i87 += 13;
                                    i85 = i20;
                                }
                                iCharAt13 = i86 | (cCharAt9 << i87);
                            } else {
                                i20 = i85;
                            }
                            int i88 = (iCharAt13 / 32) + (i18 * 2);
                            Object obj3 = objArr3[i88];
                            if (obj3 instanceof Field) {
                                fieldF = (Field) obj3;
                            } else {
                                fieldF = F(cls, (String) obj3);
                                objArr3[i88] = fieldF;
                            }
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldF);
                            i21 = iCharAt13 % 32;
                        }
                        if (i75 >= 18 || i75 > 49) {
                            i22 = i19;
                            i23 = iObjectFieldOffset;
                        } else {
                            iArr[i64] = iObjectFieldOffset;
                            i22 = i19;
                            i23 = iObjectFieldOffset;
                            i64++;
                        }
                    } else {
                        if (i75 == 50) {
                            int i89 = i65 + 1;
                            iArr[i65] = i67;
                            int i90 = (i67 / 3) * 2;
                            int i91 = i6 + 2;
                            objArr2[i90] = objArr3[i84];
                            if ((iCharAt11 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
                                i19 = i6 + 3;
                                objArr2[i90 + 1] = objArr3[i91];
                                i18 = i4;
                                i65 = i89;
                            } else {
                                i19 = i91;
                                i65 = i89;
                                i18 = i4;
                            }
                        } else {
                            i18 = i4;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldF4);
                        if ((iCharAt11 & 4096) != 0) {
                            iObjectFieldOffset2 = 1048575;
                            i20 = i72;
                            i21 = 0;
                        } else {
                            iObjectFieldOffset2 = 1048575;
                            i20 = i72;
                            i21 = 0;
                        }
                        if (i75 >= 18) {
                            i22 = i19;
                            i23 = iObjectFieldOffset;
                        } else {
                            i22 = i19;
                            i23 = iObjectFieldOffset;
                        }
                    }
                    i19 = i24;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldF4);
                    if ((iCharAt11 & 4096) != 0) {
                        iObjectFieldOffset2 = 1048575;
                        i20 = i72;
                        i21 = 0;
                    } else {
                        iObjectFieldOffset2 = 1048575;
                        i20 = i72;
                        i21 = 0;
                    }
                    if (i75 >= 18) {
                        i22 = i19;
                        i23 = iObjectFieldOffset;
                    } else {
                        i22 = i19;
                        i23 = iObjectFieldOffset;
                    }
                }
                i19 = i84;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldF4);
                if ((iCharAt11 & 4096) != 0) {
                    iObjectFieldOffset2 = 1048575;
                    i20 = i72;
                    i21 = 0;
                } else {
                    iObjectFieldOffset2 = 1048575;
                    i20 = i72;
                    i21 = 0;
                }
                if (i75 >= 18) {
                    i22 = i19;
                    i23 = iObjectFieldOffset;
                } else {
                    i22 = i19;
                    i23 = iObjectFieldOffset;
                }
            }
            int i92 = i67 + 1;
            iArr4[i67] = i76;
            int i93 = i67 + 2;
            String str2 = str;
            iArr4[i92] = ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED : 0) | (i75 << 20) | i23;
            i67 += 3;
            iArr4[i93] = (i21 << 20) | iObjectFieldOffset2;
            cls = cls;
            objArr = objArr3;
            str = str2;
            length = i16;
            i4 = i18;
            i34 = i20;
            i32 = 55296;
            i6 = i22;
            iArr3 = iArr4;
        }
        return new sd5(iArr3, objArr2, i2, i5, hf6Var.a, iArr, i7, i63, pm5Var, yw4Var, ke8Var, d13Var, l65Var);
    }

    public static long x(int i) {
        return i & 1048575;
    }

    public static int y(Object obj, long j) {
        return ((Integer) ef8.c.h(obj, j)).intValue();
    }

    public static long z(Object obj, long j) {
        return ((Long) ef8.c.h(obj, j)).longValue();
    }

    public final int A(int i) {
        if (i < this.c || i > this.d) {
            return -1;
        }
        int[] iArr = this.a;
        int length = (iArr.length / 3) - 1;
        int i2 = 0;
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

    public final void B(Object obj, long j, hk1 hk1Var, k57 k57Var, c13 c13Var) throws eg4 {
        int iV;
        this.k.getClass();
        xd4 xd4VarA = yw4.a(obj, j);
        gk1 gk1Var = hk1Var.a;
        int i = hk1Var.b;
        if ((i & 7) != 3) {
            throw fg4.b();
        }
        do {
            av3 av3VarI = k57Var.i();
            hk1Var.b(av3VarI, k57Var, c13Var);
            k57Var.c(av3VarI);
            ((t96) xd4VarA).add(av3VarI);
            if (gk1Var.c() || hk1Var.d != 0) {
                return;
            } else {
                iV = gk1Var.v();
            }
        } while (iV == i);
        hk1Var.d = iV;
    }

    public final void C(Object obj, int i, hk1 hk1Var, k57 k57Var, c13 c13Var) throws fg4 {
        int iV;
        this.k.getClass();
        xd4 xd4VarA = yw4.a(obj, i & 1048575);
        gk1 gk1Var = hk1Var.a;
        int i2 = hk1Var.b;
        if ((i2 & 7) != 2) {
            throw fg4.b();
        }
        do {
            av3 av3VarI = k57Var.i();
            hk1Var.c(av3VarI, k57Var, c13Var);
            k57Var.c(av3VarI);
            ((t96) xd4VarA).add(av3VarI);
            if (gk1Var.c() || hk1Var.d != 0) {
                return;
            } else {
                iV = gk1Var.v();
            }
        } while (iV == i2);
        hk1Var.d = iV;
    }

    public final void D(int i, hk1 hk1Var, Object obj) throws eg4 {
        if ((536870912 & i) != 0) {
            hk1Var.w(2);
            ef8.o(obj, i & 1048575, hk1Var.a.u());
        } else if (!this.f) {
            ef8.o(obj, i & 1048575, hk1Var.e());
        } else {
            hk1Var.w(2);
            ef8.o(obj, i & 1048575, hk1Var.a.t());
        }
    }

    public final void E(int i, hk1 hk1Var, Object obj) throws eg4 {
        boolean z = (536870912 & i) != 0;
        yw4 yw4Var = this.k;
        if (z) {
            yw4Var.getClass();
            hk1Var.s(yw4.a(obj, i & 1048575), true);
        } else {
            yw4Var.getClass();
            hk1Var.s(yw4.a(obj, i & 1048575), false);
        }
    }

    public final void G(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        ef8.m(obj, j, (1 << (i2 >>> 20)) | ef8.c.f(obj, j));
    }

    public final void H(Object obj, int i, int i2) {
        ef8.m(obj, this.a[i2 + 2] & 1048575, i);
    }

    public final void I(Object obj, int i, s4 s4Var) {
        o.putObject(obj, L(i) & 1048575, s4Var);
        G(i, obj);
    }

    public final void J(Object obj, int i, int i2, s4 s4Var) {
        o.putObject(obj, L(i2) & 1048575, s4Var);
        H(obj, i, i2);
    }

    public final int L(int i) {
        return this.a[i + 1];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:117:0x035a  */
    /* JADX WARN: Code duplicated, block: B:122:0x0367  */
    /* JADX WARN: Code duplicated, block: B:124:0x037a  */
    /* JADX WARN: Code duplicated, block: B:125:0x038a  */
    /* JADX WARN: Code duplicated, block: B:127:0x0394  */
    /* JADX WARN: Code duplicated, block: B:129:0x039e  */
    /* JADX WARN: Code duplicated, block: B:130:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:131:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:133:0x03be  */
    /* JADX WARN: Code duplicated, block: B:135:0x03cb  */
    /* JADX WARN: Code duplicated, block: B:136:0x03d3  */
    /* JADX WARN: Code duplicated, block: B:137:0x03e2  */
    /* JADX WARN: Code duplicated, block: B:138:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:140:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:141:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:142:0x0405  */
    /* JADX WARN: Code duplicated, block: B:143:0x040e  */
    /* JADX WARN: Code duplicated, block: B:144:0x0415  */
    /* JADX WARN: Code duplicated, block: B:145:0x041d  */
    /* JADX WARN: Code duplicated, block: B:146:0x042a  */
    /* JADX WARN: Code duplicated, block: B:147:0x0436  */
    /* JADX WARN: Code duplicated, block: B:148:0x0442  */
    /* JADX WARN: Code duplicated, block: B:149:0x044a  */
    /* JADX WARN: Code duplicated, block: B:278:0x0363 A[SYNTHETIC] */
    public final void M(Object obj, fu fuVar) throws IOException {
        int i;
        int i2;
        int i3;
        boolean z;
        int iJ;
        int size;
        int i4;
        int iA;
        int i5;
        int i6;
        int iH;
        int iJ2;
        int size2;
        int i7;
        sd5 sd5Var = this;
        int[] iArr = sd5Var.a;
        int length = iArr.length;
        Unsafe unsafe = o;
        int i8 = 1048575;
        int i9 = 1048575;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int iL = sd5Var.L(i10);
            int i12 = iArr[i10];
            int iK = K(iL);
            int i13 = 1;
            if (iK <= 17) {
                int i14 = iArr[i10 + 2];
                int i15 = i14 & i8;
                if (i15 != i9) {
                    i11 = i15 == i8 ? 0 : unsafe.getInt(obj, i15);
                    i9 = i15;
                }
                i = 1 << (i14 >>> 20);
            } else {
                i = 0;
            }
            long j = iL & i8;
            switch (iK) {
                case 0:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        double d = ef8.c.d(obj, j);
                        jk1 jk1Var = (jk1) fuVar.a;
                        jk1Var.getClass();
                        jk1Var.t(i12, Double.doubleToRawLongBits(d));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 1:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        float fE = ef8.c.e(obj, j);
                        jk1 jk1Var2 = (jk1) fuVar.a;
                        jk1Var2.getClass();
                        jk1Var2.r(i12, Float.floatToRawIntBits(fE));
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 2:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        ((jk1) fuVar.a).E(i12, unsafe.getLong(obj, j));
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 3:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        ((jk1) fuVar.a).E(i12, unsafe.getLong(obj, j));
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 4:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        ((jk1) fuVar.a).v(i12, unsafe.getInt(obj, j));
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 5:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        ((jk1) fuVar.a).t(i12, unsafe.getLong(obj, j));
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 6:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        ((jk1) fuVar.a).r(i12, unsafe.getInt(obj, j));
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 7:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        ((jk1) fuVar.a).o(i12, ef8.c.c(obj, j));
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 8:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof String) {
                            ((jk1) fuVar.a).z(i12, (String) object);
                        } else {
                            ((jk1) fuVar.a).p(i12, (gy0) object);
                        }
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        ((jk1) fuVar.a).y(i12, (s4) unsafe.getObject(obj, j), sd5Var.m(i10));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 10:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        ((jk1) fuVar.a).p(i12, (gy0) unsafe.getObject(obj, j));
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        ((jk1) fuVar.a).C(i12, unsafe.getInt(obj, j));
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 12:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        ((jk1) fuVar.a).v(i12, unsafe.getInt(obj, j));
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 13:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        ((jk1) fuVar.a).r(i12, unsafe.getInt(obj, j));
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 14:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        ((jk1) fuVar.a).t(i12, unsafe.getLong(obj, j));
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 15:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        int i16 = unsafe.getInt(obj, j);
                        ((jk1) fuVar.a).C(i12, (i16 >> 31) ^ (i16 << 1));
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case Argon2.V10 /* 16 */:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        long j2 = unsafe.getLong(obj, j);
                        ((jk1) fuVar.a).E(i12, (j2 >> 63) ^ (j2 << 1));
                    }
                    sd5Var = this;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 17:
                    if (sd5Var.o(obj, i10, i9, i11, i)) {
                        fuVar.f(i12, unsafe.getObject(obj, j), sd5Var.m(i10));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 18:
                    i9 = i9;
                    i11 = i11;
                    u57.n(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, false);
                    i9 = i9;
                    i11 = i11;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case Argon2.V13 /* 19 */:
                    i9 = i9;
                    i11 = i11;
                    u57.r(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, false);
                    i9 = i9;
                    i11 = i11;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 20:
                    i9 = i9;
                    i11 = i11;
                    u57.t(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, false);
                    i9 = i9;
                    i11 = i11;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 21:
                    i9 = i9;
                    i11 = i11;
                    u57.z(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, false);
                    i9 = i9;
                    i11 = i11;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 22:
                    i9 = i9;
                    i11 = i11;
                    u57.s(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, false);
                    i9 = i9;
                    i11 = i11;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 23:
                    i9 = i9;
                    i11 = i11;
                    u57.q(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, false);
                    i9 = i9;
                    i11 = i11;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 24:
                    i9 = i9;
                    i11 = i11;
                    u57.p(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, false);
                    i9 = i9;
                    i11 = i11;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 25:
                    i9 = i9;
                    i11 = i11;
                    u57.m(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, false);
                    i9 = i9;
                    i11 = i11;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 26:
                    i2 = i9;
                    i3 = i11;
                    int i17 = iArr[i10];
                    List list = (List) unsafe.getObject(obj, j);
                    Class cls = u57.a;
                    if (list != null && !list.isEmpty()) {
                        fuVar.getClass();
                        for (int i18 = 0; i18 < list.size(); i18++) {
                            ((jk1) fuVar.a).z(i17, (String) list.get(i18));
                        }
                    }
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 27:
                    i2 = i9;
                    i3 = i11;
                    int i19 = iArr[i10];
                    List list2 = (List) unsafe.getObject(obj, j);
                    k57 k57VarM = sd5Var.m(i10);
                    Class cls2 = u57.a;
                    if (list2 != null && !list2.isEmpty()) {
                        fuVar.getClass();
                        for (int i20 = 0; i20 < list2.size(); i20++) {
                            ((jk1) fuVar.a).y(i19, (s4) list2.get(i20), k57VarM);
                        }
                    }
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 28:
                    i2 = i9;
                    i3 = i11;
                    int i21 = iArr[i10];
                    List list3 = (List) unsafe.getObject(obj, j);
                    Class cls3 = u57.a;
                    if (list3 != null && !list3.isEmpty()) {
                        fuVar.getClass();
                        for (int i22 = 0; i22 < list3.size(); i22++) {
                            ((jk1) fuVar.a).p(i21, (gy0) list3.get(i22));
                        }
                    }
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 29:
                    z = false;
                    u57.y(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, false);
                    i9 = i9;
                    i11 = i11;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                    z = false;
                    u57.o(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, false);
                    i9 = i9;
                    i11 = i11;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 31:
                    z = false;
                    u57.u(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, false);
                    i9 = i9;
                    i11 = i11;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 32:
                    z = false;
                    u57.v(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, false);
                    i9 = i9;
                    i11 = i11;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 33:
                    z = false;
                    u57.w(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, false);
                    i9 = i9;
                    i11 = i11;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 34:
                    z = false;
                    u57.x(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, false);
                    i9 = i9;
                    i11 = i11;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 35:
                    i2 = i9;
                    i3 = i11;
                    u57.n(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, true);
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 36:
                    i2 = i9;
                    i3 = i11;
                    u57.r(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, true);
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 37:
                    i2 = i9;
                    i3 = i11;
                    u57.t(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, true);
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 38:
                    i2 = i9;
                    i3 = i11;
                    u57.z(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, true);
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 39:
                    i2 = i9;
                    i3 = i11;
                    u57.s(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, true);
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 40:
                    i2 = i9;
                    i3 = i11;
                    u57.q(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, true);
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 41:
                    i2 = i9;
                    i3 = i11;
                    u57.p(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, true);
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 42:
                    i2 = i9;
                    i3 = i11;
                    u57.m(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, true);
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 43:
                    i2 = i9;
                    i3 = i11;
                    u57.y(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, true);
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 44:
                    i2 = i9;
                    i3 = i11;
                    u57.o(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, true);
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 45:
                    i2 = i9;
                    i3 = i11;
                    u57.u(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, true);
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 46:
                    i2 = i9;
                    i3 = i11;
                    u57.v(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, true);
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 47:
                    i2 = i9;
                    i3 = i11;
                    u57.w(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, true);
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 48:
                    i2 = i9;
                    i3 = i11;
                    u57.x(iArr[i10], (List) unsafe.getObject(obj, j), fuVar, true);
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 49:
                    i2 = i9;
                    i3 = i11;
                    int i23 = iArr[i10];
                    List list4 = (List) unsafe.getObject(obj, j);
                    k57 k57VarM2 = sd5Var.m(i10);
                    Class cls4 = u57.a;
                    if (list4 != null && !list4.isEmpty()) {
                        fuVar.getClass();
                        for (int i24 = 0; i24 < list4.size(); i24++) {
                            fuVar.f(i23, list4.get(i24), k57VarM2);
                        }
                    }
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 50:
                    Object object2 = unsafe.getObject(obj, j);
                    if (object2 != null) {
                        int i25 = 2;
                        Object obj2 = sd5Var.b[(i10 / 3) * 2];
                        sd5Var.m.getClass();
                        ka kaVar = ((h65) obj2).a;
                        gw8 gw8Var = (gw8) kaVar.b;
                        gw8 gw8Var2 = (gw8) kaVar.a;
                        jk1 jk1Var3 = (jk1) fuVar.a;
                        jk1Var3.getClass();
                        Iterator it = ((k65) object2).entrySet().iterator();
                        while (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            jk1Var3.B(i12, i25);
                            int i26 = i25;
                            Object key = entry.getKey();
                            int i27 = i13;
                            Object value = entry.getValue();
                            int i28 = l63.c;
                            int iH2 = jk1.h(i27);
                            int i29 = i9;
                            dw8 dw8Var = gw8.d;
                            if (gw8Var2 == dw8Var) {
                                iH2 *= 2;
                            }
                            int i30 = i11;
                            switch (gw8Var2.ordinal()) {
                                case 0:
                                    ((Double) key).getClass();
                                    iJ = 8;
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key2 = entry.getKey();
                                            Object value2 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key2);
                                            l63.b(jk1Var3, gw8Var, i26, value2);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key3 = entry.getKey();
                                            Object value3 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key3);
                                            l63.b(jk1Var3, gw8Var, i26, value3);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key4 = entry.getKey();
                                            Object value4 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key4);
                                            l63.b(jk1Var3, gw8Var, i26, value4);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key5 = entry.getKey();
                                            Object value5 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key5);
                                            l63.b(jk1Var3, gw8Var, i26, value5);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key6 = entry.getKey();
                                            Object value6 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key6);
                                            l63.b(jk1Var3, gw8Var, i26, value6);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key7 = entry.getKey();
                                            Object value7 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key7);
                                            l63.b(jk1Var3, gw8Var, i26, value7);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key8 = entry.getKey();
                                            Object value8 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key8);
                                            l63.b(jk1Var3, gw8Var, i26, value8);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key9 = entry.getKey();
                                            Object value9 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key9);
                                            l63.b(jk1Var3, gw8Var, i26, value9);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key10 = entry.getKey();
                                            Object value10 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key10);
                                            l63.b(jk1Var3, gw8Var, i26, value10);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11 = entry.getKey();
                                            Object value11 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11);
                                            l63.b(jk1Var3, gw8Var, i26, value11);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key12 = entry.getKey();
                                            Object value12 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key12);
                                            l63.b(jk1Var3, gw8Var, i26, value12);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key13 = entry.getKey();
                                            Object value13 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key13);
                                            l63.b(jk1Var3, gw8Var, i26, value13);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key14 = entry.getKey();
                                            Object value14 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key14);
                                            l63.b(jk1Var3, gw8Var, i26, value14);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key15 = entry.getKey();
                                            Object value15 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key15);
                                            l63.b(jk1Var3, gw8Var, i26, value15);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key16 = entry.getKey();
                                            Object value16 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key16);
                                            l63.b(jk1Var3, gw8Var, i26, value16);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key17 = entry.getKey();
                                            Object value17 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key17);
                                            l63.b(jk1Var3, gw8Var, i26, value17);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue >> 31) ^ (iIntValue << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key18 = entry.getKey();
                                            Object value18 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key18);
                                            l63.b(jk1Var3, gw8Var, i26, value18);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue << i27) ^ (jLongValue >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key19 = entry.getKey();
                                            Object value19 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key19);
                                            l63.b(jk1Var3, gw8Var, i26, value19);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 1:
                                    ((Float) key).getClass();
                                    iJ = 4;
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key110 = entry.getKey();
                                            Object value110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key110);
                                            l63.b(jk1Var3, gw8Var, i26, value110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111 = entry.getKey();
                                            Object value111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111);
                                            l63.b(jk1Var3, gw8Var, i26, value111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key112 = entry.getKey();
                                            Object value112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key112);
                                            l63.b(jk1Var3, gw8Var, i26, value112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key113 = entry.getKey();
                                            Object value113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key113);
                                            l63.b(jk1Var3, gw8Var, i26, value113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key114 = entry.getKey();
                                            Object value114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key114);
                                            l63.b(jk1Var3, gw8Var, i26, value114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key115 = entry.getKey();
                                            Object value115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key115);
                                            l63.b(jk1Var3, gw8Var, i26, value115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key116 = entry.getKey();
                                            Object value116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key116);
                                            l63.b(jk1Var3, gw8Var, i26, value116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key117 = entry.getKey();
                                            Object value117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key117);
                                            l63.b(jk1Var3, gw8Var, i26, value117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key118 = entry.getKey();
                                            Object value118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key118);
                                            l63.b(jk1Var3, gw8Var, i26, value118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key119 = entry.getKey();
                                            Object value119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key119);
                                            l63.b(jk1Var3, gw8Var, i26, value119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1110 = entry.getKey();
                                            Object value1110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1110);
                                            l63.b(jk1Var3, gw8Var, i26, value1110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111 = entry.getKey();
                                            Object value1111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111);
                                            l63.b(jk1Var3, gw8Var, i26, value1111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1112 = entry.getKey();
                                            Object value1112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1112);
                                            l63.b(jk1Var3, gw8Var, i26, value1112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1113 = entry.getKey();
                                            Object value1113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1113);
                                            l63.b(jk1Var3, gw8Var, i26, value1113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1114 = entry.getKey();
                                            Object value1114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1114);
                                            l63.b(jk1Var3, gw8Var, i26, value1114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1115 = entry.getKey();
                                            Object value1115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1115);
                                            l63.b(jk1Var3, gw8Var, i26, value1115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue2 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue2 >> 31) ^ (iIntValue2 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1116 = entry.getKey();
                                            Object value1116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1116);
                                            l63.b(jk1Var3, gw8Var, i26, value1116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue2 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue2 << i27) ^ (jLongValue2 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1117 = entry.getKey();
                                            Object value1117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1117);
                                            l63.b(jk1Var3, gw8Var, i26, value1117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 2:
                                    it = it;
                                    iJ = jk1.j(((Long) key).longValue());
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1118 = entry.getKey();
                                            Object value1118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1118);
                                            l63.b(jk1Var3, gw8Var, i26, value1118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1119 = entry.getKey();
                                            Object value1119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1119);
                                            l63.b(jk1Var3, gw8Var, i26, value1119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11110 = entry.getKey();
                                            Object value11110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11110);
                                            l63.b(jk1Var3, gw8Var, i26, value11110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111 = entry.getKey();
                                            Object value11111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111);
                                            l63.b(jk1Var3, gw8Var, i26, value11111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11112 = entry.getKey();
                                            Object value11112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11112);
                                            l63.b(jk1Var3, gw8Var, i26, value11112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11113 = entry.getKey();
                                            Object value11113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11113);
                                            l63.b(jk1Var3, gw8Var, i26, value11113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11114 = entry.getKey();
                                            Object value11114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11114);
                                            l63.b(jk1Var3, gw8Var, i26, value11114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11115 = entry.getKey();
                                            Object value11115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11115);
                                            l63.b(jk1Var3, gw8Var, i26, value11115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11116 = entry.getKey();
                                            Object value11116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11116);
                                            l63.b(jk1Var3, gw8Var, i26, value11116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11117 = entry.getKey();
                                            Object value11117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11117);
                                            l63.b(jk1Var3, gw8Var, i26, value11117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11118 = entry.getKey();
                                            Object value11118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11118);
                                            l63.b(jk1Var3, gw8Var, i26, value11118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11119 = entry.getKey();
                                            Object value11119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11119);
                                            l63.b(jk1Var3, gw8Var, i26, value11119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111110 = entry.getKey();
                                            Object value111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111110);
                                            l63.b(jk1Var3, gw8Var, i26, value111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111 = entry.getKey();
                                            Object value111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111);
                                            l63.b(jk1Var3, gw8Var, i26, value111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111112 = entry.getKey();
                                            Object value111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111112);
                                            l63.b(jk1Var3, gw8Var, i26, value111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111113 = entry.getKey();
                                            Object value111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111113);
                                            l63.b(jk1Var3, gw8Var, i26, value111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue3 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue3 >> 31) ^ (iIntValue3 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111114 = entry.getKey();
                                            Object value111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111114);
                                            l63.b(jk1Var3, gw8Var, i26, value111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue3 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue3 << i27) ^ (jLongValue3 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111115 = entry.getKey();
                                            Object value111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111115);
                                            l63.b(jk1Var3, gw8Var, i26, value111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 3:
                                    it = it;
                                    iJ = jk1.j(((Long) key).longValue());
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111116 = entry.getKey();
                                            Object value111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111116);
                                            l63.b(jk1Var3, gw8Var, i26, value111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111117 = entry.getKey();
                                            Object value111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111117);
                                            l63.b(jk1Var3, gw8Var, i26, value111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111118 = entry.getKey();
                                            Object value111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111118);
                                            l63.b(jk1Var3, gw8Var, i26, value111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111119 = entry.getKey();
                                            Object value111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111119);
                                            l63.b(jk1Var3, gw8Var, i26, value111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111110 = entry.getKey();
                                            Object value1111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111110);
                                            l63.b(jk1Var3, gw8Var, i26, value1111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111 = entry.getKey();
                                            Object value1111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111112 = entry.getKey();
                                            Object value1111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111112);
                                            l63.b(jk1Var3, gw8Var, i26, value1111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111113 = entry.getKey();
                                            Object value1111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111113);
                                            l63.b(jk1Var3, gw8Var, i26, value1111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111114 = entry.getKey();
                                            Object value1111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111114);
                                            l63.b(jk1Var3, gw8Var, i26, value1111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111115 = entry.getKey();
                                            Object value1111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111115);
                                            l63.b(jk1Var3, gw8Var, i26, value1111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111116 = entry.getKey();
                                            Object value1111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111116);
                                            l63.b(jk1Var3, gw8Var, i26, value1111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111117 = entry.getKey();
                                            Object value1111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111117);
                                            l63.b(jk1Var3, gw8Var, i26, value1111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111118 = entry.getKey();
                                            Object value1111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111118);
                                            l63.b(jk1Var3, gw8Var, i26, value1111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111119 = entry.getKey();
                                            Object value1111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111119);
                                            l63.b(jk1Var3, gw8Var, i26, value1111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111110 = entry.getKey();
                                            Object value11111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111110);
                                            l63.b(jk1Var3, gw8Var, i26, value11111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111 = entry.getKey();
                                            Object value11111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue4 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue4 >> 31) ^ (iIntValue4 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111112 = entry.getKey();
                                            Object value11111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111112);
                                            l63.b(jk1Var3, gw8Var, i26, value11111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue4 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue4 << i27) ^ (jLongValue4 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111113 = entry.getKey();
                                            Object value11111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111113);
                                            l63.b(jk1Var3, gw8Var, i26, value11111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 4:
                                    it = it;
                                    iJ = jk1.j(((Integer) key).intValue());
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111114 = entry.getKey();
                                            Object value11111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111114);
                                            l63.b(jk1Var3, gw8Var, i26, value11111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111115 = entry.getKey();
                                            Object value11111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111115);
                                            l63.b(jk1Var3, gw8Var, i26, value11111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111116 = entry.getKey();
                                            Object value11111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111116);
                                            l63.b(jk1Var3, gw8Var, i26, value11111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111117 = entry.getKey();
                                            Object value11111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111117);
                                            l63.b(jk1Var3, gw8Var, i26, value11111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111118 = entry.getKey();
                                            Object value11111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111118);
                                            l63.b(jk1Var3, gw8Var, i26, value11111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111119 = entry.getKey();
                                            Object value11111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111119);
                                            l63.b(jk1Var3, gw8Var, i26, value11111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111110 = entry.getKey();
                                            Object value111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111 = entry.getKey();
                                            Object value111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111112 = entry.getKey();
                                            Object value111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111113 = entry.getKey();
                                            Object value111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111114 = entry.getKey();
                                            Object value111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111115 = entry.getKey();
                                            Object value111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111116 = entry.getKey();
                                            Object value111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111117 = entry.getKey();
                                            Object value111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111118 = entry.getKey();
                                            Object value111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111119 = entry.getKey();
                                            Object value111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue5 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue5 >> 31) ^ (iIntValue5 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111110 = entry.getKey();
                                            Object value1111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue5 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue5 << i27) ^ (jLongValue5 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111 = entry.getKey();
                                            Object value1111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 5:
                                    ((Long) key).getClass();
                                    iJ = 8;
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111112 = entry.getKey();
                                            Object value1111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111113 = entry.getKey();
                                            Object value1111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111114 = entry.getKey();
                                            Object value1111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111115 = entry.getKey();
                                            Object value1111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111116 = entry.getKey();
                                            Object value1111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111117 = entry.getKey();
                                            Object value1111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111118 = entry.getKey();
                                            Object value1111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111119 = entry.getKey();
                                            Object value1111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111110 = entry.getKey();
                                            Object value11111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111 = entry.getKey();
                                            Object value11111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111112 = entry.getKey();
                                            Object value11111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111113 = entry.getKey();
                                            Object value11111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111114 = entry.getKey();
                                            Object value11111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111115 = entry.getKey();
                                            Object value11111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111116 = entry.getKey();
                                            Object value11111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111117 = entry.getKey();
                                            Object value11111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue6 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue6 >> 31) ^ (iIntValue6 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111118 = entry.getKey();
                                            Object value11111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue6 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue6 << i27) ^ (jLongValue6 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111119 = entry.getKey();
                                            Object value11111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 6:
                                    ((Integer) key).getClass();
                                    iJ = 4;
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111110 = entry.getKey();
                                            Object value111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111 = entry.getKey();
                                            Object value111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111112 = entry.getKey();
                                            Object value111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111113 = entry.getKey();
                                            Object value111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111114 = entry.getKey();
                                            Object value111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111115 = entry.getKey();
                                            Object value111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111116 = entry.getKey();
                                            Object value111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111117 = entry.getKey();
                                            Object value111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111118 = entry.getKey();
                                            Object value111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111119 = entry.getKey();
                                            Object value111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111110 = entry.getKey();
                                            Object value1111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111 = entry.getKey();
                                            Object value1111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111112 = entry.getKey();
                                            Object value1111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111113 = entry.getKey();
                                            Object value1111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111114 = entry.getKey();
                                            Object value1111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111115 = entry.getKey();
                                            Object value1111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue7 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue7 >> 31) ^ (iIntValue7 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111116 = entry.getKey();
                                            Object value1111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue7 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue7 << i27) ^ (jLongValue7 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111117 = entry.getKey();
                                            Object value1111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 7:
                                    it = it;
                                    ((Boolean) key).getClass();
                                    iJ = i27;
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111118 = entry.getKey();
                                            Object value1111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111119 = entry.getKey();
                                            Object value1111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111110 = entry.getKey();
                                            Object value11111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111 = entry.getKey();
                                            Object value11111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111112 = entry.getKey();
                                            Object value11111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111113 = entry.getKey();
                                            Object value11111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111114 = entry.getKey();
                                            Object value11111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111115 = entry.getKey();
                                            Object value11111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111116 = entry.getKey();
                                            Object value11111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111117 = entry.getKey();
                                            Object value11111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111118 = entry.getKey();
                                            Object value11111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111119 = entry.getKey();
                                            Object value11111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111110 = entry.getKey();
                                            Object value111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111 = entry.getKey();
                                            Object value111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111112 = entry.getKey();
                                            Object value111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111113 = entry.getKey();
                                            Object value111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue8 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue8 >> 31) ^ (iIntValue8 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111114 = entry.getKey();
                                            Object value111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue8 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue8 << i27) ^ (jLongValue8 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111115 = entry.getKey();
                                            Object value111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 8:
                                    it = it;
                                    if (key instanceof gy0) {
                                        size = ((gy0) key).size();
                                        i4 = jk1.i(size);
                                        iJ = size + i4;
                                    } else {
                                        iJ = jk1.g((String) key);
                                    }
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111116 = entry.getKey();
                                            Object value111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111117 = entry.getKey();
                                            Object value111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111118 = entry.getKey();
                                            Object value111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111119 = entry.getKey();
                                            Object value111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111110 = entry.getKey();
                                            Object value1111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111 = entry.getKey();
                                            Object value1111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111112 = entry.getKey();
                                            Object value1111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111113 = entry.getKey();
                                            Object value1111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111114 = entry.getKey();
                                            Object value1111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111115 = entry.getKey();
                                            Object value1111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111116 = entry.getKey();
                                            Object value1111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111117 = entry.getKey();
                                            Object value1111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111118 = entry.getKey();
                                            Object value1111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111119 = entry.getKey();
                                            Object value1111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111110 = entry.getKey();
                                            Object value11111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111 = entry.getKey();
                                            Object value11111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue9 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue9 >> 31) ^ (iIntValue9 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111112 = entry.getKey();
                                            Object value11111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue9 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue9 << i27) ^ (jLongValue9 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111113 = entry.getKey();
                                            Object value11111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case XmlPullParser.COMMENT /* 9 */:
                                    iA = ((av3) ((s4) key)).a(null);
                                    iJ = iA;
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111114 = entry.getKey();
                                            Object value11111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111115 = entry.getKey();
                                            Object value11111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111116 = entry.getKey();
                                            Object value11111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111117 = entry.getKey();
                                            Object value11111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111118 = entry.getKey();
                                            Object value11111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111119 = entry.getKey();
                                            Object value11111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111110 = entry.getKey();
                                            Object value111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111 = entry.getKey();
                                            Object value111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111112 = entry.getKey();
                                            Object value111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111113 = entry.getKey();
                                            Object value111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111114 = entry.getKey();
                                            Object value111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111115 = entry.getKey();
                                            Object value111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111116 = entry.getKey();
                                            Object value111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111117 = entry.getKey();
                                            Object value111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111118 = entry.getKey();
                                            Object value111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111119 = entry.getKey();
                                            Object value111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue10 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue10 >> 31) ^ (iIntValue10 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111110 = entry.getKey();
                                            Object value1111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue10 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue10 << i27) ^ (jLongValue10 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111 = entry.getKey();
                                            Object value1111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 10:
                                    int iA2 = ((av3) ((s4) key)).a(null);
                                    iA = iA2 + jk1.i(iA2);
                                    iJ = iA;
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111112 = entry.getKey();
                                            Object value1111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111113 = entry.getKey();
                                            Object value1111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111114 = entry.getKey();
                                            Object value1111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111115 = entry.getKey();
                                            Object value1111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111116 = entry.getKey();
                                            Object value1111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111117 = entry.getKey();
                                            Object value1111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111118 = entry.getKey();
                                            Object value1111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111119 = entry.getKey();
                                            Object value1111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111110 = entry.getKey();
                                            Object value11111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111 = entry.getKey();
                                            Object value11111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111112 = entry.getKey();
                                            Object value11111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111113 = entry.getKey();
                                            Object value11111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111114 = entry.getKey();
                                            Object value11111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111115 = entry.getKey();
                                            Object value11111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111116 = entry.getKey();
                                            Object value11111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111117 = entry.getKey();
                                            Object value11111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue11 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue11 >> 31) ^ (iIntValue11 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111118 = entry.getKey();
                                            Object value11111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue11 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue11 << i27) ^ (jLongValue11 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111119 = entry.getKey();
                                            Object value11111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                    it = it;
                                    if (key instanceof gy0) {
                                        size = ((gy0) key).size();
                                        i4 = jk1.i(size);
                                    } else {
                                        size = ((byte[]) key).length;
                                        i4 = jk1.i(size);
                                    }
                                    iJ = size + i4;
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111110 = entry.getKey();
                                            Object value111111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111 = entry.getKey();
                                            Object value111111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111112 = entry.getKey();
                                            Object value111111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111113 = entry.getKey();
                                            Object value111111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111114 = entry.getKey();
                                            Object value111111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111115 = entry.getKey();
                                            Object value111111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111116 = entry.getKey();
                                            Object value111111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111117 = entry.getKey();
                                            Object value111111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111118 = entry.getKey();
                                            Object value111111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111119 = entry.getKey();
                                            Object value111111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111110 = entry.getKey();
                                            Object value1111111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111 = entry.getKey();
                                            Object value1111111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111112 = entry.getKey();
                                            Object value1111111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111113 = entry.getKey();
                                            Object value1111111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111114 = entry.getKey();
                                            Object value1111111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111115 = entry.getKey();
                                            Object value1111111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue12 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue12 >> 31) ^ (iIntValue12 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111116 = entry.getKey();
                                            Object value1111111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue12 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue12 << i27) ^ (jLongValue12 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111117 = entry.getKey();
                                            Object value1111111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 12:
                                    it = it;
                                    iJ = jk1.i(((Integer) key).intValue());
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111118 = entry.getKey();
                                            Object value1111111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111119 = entry.getKey();
                                            Object value1111111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111110 = entry.getKey();
                                            Object value11111111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111 = entry.getKey();
                                            Object value11111111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111112 = entry.getKey();
                                            Object value11111111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111113 = entry.getKey();
                                            Object value11111111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111114 = entry.getKey();
                                            Object value11111111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111115 = entry.getKey();
                                            Object value11111111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111116 = entry.getKey();
                                            Object value11111111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111117 = entry.getKey();
                                            Object value11111111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111118 = entry.getKey();
                                            Object value11111111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111119 = entry.getKey();
                                            Object value11111111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111110 = entry.getKey();
                                            Object value111111111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111 = entry.getKey();
                                            Object value111111111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111112 = entry.getKey();
                                            Object value111111111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111113 = entry.getKey();
                                            Object value111111111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue13 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue13 >> 31) ^ (iIntValue13 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111114 = entry.getKey();
                                            Object value111111111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue13 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue13 << i27) ^ (jLongValue13 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111115 = entry.getKey();
                                            Object value111111111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 13:
                                    it = it;
                                    iJ = jk1.j(((Integer) key).intValue());
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111116 = entry.getKey();
                                            Object value111111111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111117 = entry.getKey();
                                            Object value111111111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111118 = entry.getKey();
                                            Object value111111111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111119 = entry.getKey();
                                            Object value111111111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111110 = entry.getKey();
                                            Object value1111111111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111 = entry.getKey();
                                            Object value1111111111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111112 = entry.getKey();
                                            Object value1111111111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111113 = entry.getKey();
                                            Object value1111111111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111114 = entry.getKey();
                                            Object value1111111111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111115 = entry.getKey();
                                            Object value1111111111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111116 = entry.getKey();
                                            Object value1111111111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111117 = entry.getKey();
                                            Object value1111111111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111118 = entry.getKey();
                                            Object value1111111111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111119 = entry.getKey();
                                            Object value1111111111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111110 = entry.getKey();
                                            Object value11111111111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111 = entry.getKey();
                                            Object value11111111111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue14 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue14 >> 31) ^ (iIntValue14 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111112 = entry.getKey();
                                            Object value11111111111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue14 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue14 << i27) ^ (jLongValue14 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111113 = entry.getKey();
                                            Object value11111111111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 14:
                                    ((Integer) key).getClass();
                                    iJ = 4;
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111114 = entry.getKey();
                                            Object value11111111111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111115 = entry.getKey();
                                            Object value11111111111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111116 = entry.getKey();
                                            Object value11111111111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111117 = entry.getKey();
                                            Object value11111111111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111118 = entry.getKey();
                                            Object value11111111111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111119 = entry.getKey();
                                            Object value11111111111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111110 = entry.getKey();
                                            Object value111111111111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111 = entry.getKey();
                                            Object value111111111111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111112 = entry.getKey();
                                            Object value111111111111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111113 = entry.getKey();
                                            Object value111111111111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111114 = entry.getKey();
                                            Object value111111111111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111115 = entry.getKey();
                                            Object value111111111111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111116 = entry.getKey();
                                            Object value111111111111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111117 = entry.getKey();
                                            Object value111111111111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111118 = entry.getKey();
                                            Object value111111111111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111119 = entry.getKey();
                                            Object value111111111111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue15 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue15 >> 31) ^ (iIntValue15 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111110 = entry.getKey();
                                            Object value1111111111111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue15 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue15 << i27) ^ (jLongValue15 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111111 = entry.getKey();
                                            Object value1111111111111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 15:
                                    ((Long) key).getClass();
                                    iJ = 8;
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111112 = entry.getKey();
                                            Object value1111111111111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111113 = entry.getKey();
                                            Object value1111111111111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111114 = entry.getKey();
                                            Object value1111111111111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111115 = entry.getKey();
                                            Object value1111111111111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111116 = entry.getKey();
                                            Object value1111111111111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111117 = entry.getKey();
                                            Object value1111111111111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111118 = entry.getKey();
                                            Object value1111111111111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111119 = entry.getKey();
                                            Object value1111111111111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111110 = entry.getKey();
                                            Object value11111111111111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111111 = entry.getKey();
                                            Object value11111111111111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111112 = entry.getKey();
                                            Object value11111111111111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111113 = entry.getKey();
                                            Object value11111111111111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111114 = entry.getKey();
                                            Object value11111111111111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111115 = entry.getKey();
                                            Object value11111111111111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111116 = entry.getKey();
                                            Object value11111111111111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111117 = entry.getKey();
                                            Object value11111111111111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue16 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue16 >> 31) ^ (iIntValue16 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111118 = entry.getKey();
                                            Object value11111111111111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue16 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue16 << i27) ^ (jLongValue16 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111119 = entry.getKey();
                                            Object value11111111111111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case Argon2.V10 /* 16 */:
                                    int iIntValue17 = ((Integer) key).intValue();
                                    i5 = jk1.i((iIntValue17 << 1) ^ (iIntValue17 >> 31));
                                    it = it;
                                    iJ = i5;
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111110 = entry.getKey();
                                            Object value111111111111111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111111 = entry.getKey();
                                            Object value111111111111111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111112 = entry.getKey();
                                            Object value111111111111111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111113 = entry.getKey();
                                            Object value111111111111111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111114 = entry.getKey();
                                            Object value111111111111111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111115 = entry.getKey();
                                            Object value111111111111111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111116 = entry.getKey();
                                            Object value111111111111111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111117 = entry.getKey();
                                            Object value111111111111111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111118 = entry.getKey();
                                            Object value111111111111111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111119 = entry.getKey();
                                            Object value111111111111111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111111110 = entry.getKey();
                                            Object value1111111111111111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111111111 = entry.getKey();
                                            Object value1111111111111111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111111112 = entry.getKey();
                                            Object value1111111111111111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111111113 = entry.getKey();
                                            Object value1111111111111111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111111114 = entry.getKey();
                                            Object value1111111111111111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111111115 = entry.getKey();
                                            Object value1111111111111111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue18 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue18 >> 31) ^ (iIntValue18 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111111116 = entry.getKey();
                                            Object value1111111111111111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue17 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue17 << i27) ^ (jLongValue17 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111111117 = entry.getKey();
                                            Object value1111111111111111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 17:
                                    long jLongValue18 = ((Long) key).longValue();
                                    i5 = jk1.j((jLongValue18 << i27) ^ (jLongValue18 >> 63));
                                    it = it;
                                    iJ = i5;
                                    i6 = iJ + iH2;
                                    iH = jk1.h(i26);
                                    if (gw8Var == dw8Var) {
                                        iH *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111111118 = entry.getKey();
                                            Object value1111111111111111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key1111111111111111111111111111119 = entry.getKey();
                                            Object value1111111111111111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key1111111111111111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value1111111111111111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 2:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111111110 = entry.getKey();
                                            Object value11111111111111111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 3:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Long) value).longValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111111111 = entry.getKey();
                                            Object value11111111111111111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 4:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111111112 = entry.getKey();
                                            Object value11111111111111111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111111113 = entry.getKey();
                                            Object value11111111111111111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111111114 = entry.getKey();
                                            Object value11111111111111111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 7:
                                            i6 = i6;
                                            ((Boolean) value).getClass();
                                            iJ2 = i27;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111111115 = entry.getKey();
                                            Object value11111111111111111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 8:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                                iJ2 = size2 + i7;
                                            } else {
                                                iJ2 = jk1.g((String) value);
                                            }
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111111116 = entry.getKey();
                                            Object value11111111111111111111111111111116 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111111116);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111111116);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            i6 = i6;
                                            iJ2 = ((av3) ((s4) value)).a(null);
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111111117 = entry.getKey();
                                            Object value11111111111111111111111111111117 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111111117);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111111117);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 10:
                                            i6 = i6;
                                            size2 = ((av3) ((s4) value)).a(null);
                                            i7 = jk1.i(size2);
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111111118 = entry.getKey();
                                            Object value11111111111111111111111111111118 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111111118);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111111118);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            i6 = i6;
                                            if (value instanceof gy0) {
                                                size2 = ((gy0) value).size();
                                                i7 = jk1.i(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                i7 = jk1.i(size2);
                                            }
                                            iJ2 = size2 + i7;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key11111111111111111111111111111119 = entry.getKey();
                                            Object value11111111111111111111111111111119 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key11111111111111111111111111111119);
                                            l63.b(jk1Var3, gw8Var, i26, value11111111111111111111111111111119);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 12:
                                            i6 = i6;
                                            iJ2 = jk1.i(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111111110 = entry.getKey();
                                            Object value111111111111111111111111111111110 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111111110);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111111110);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 13:
                                            i6 = i6;
                                            iJ2 = jk1.j(((Integer) value).intValue());
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111111111 = entry.getKey();
                                            Object value111111111111111111111111111111111 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111111111);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111111111);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ2 = 4;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111111112 = entry.getKey();
                                            Object value111111111111111111111111111111112 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111111112);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111111112);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ2 = 8;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111111113 = entry.getKey();
                                            Object value111111111111111111111111111111113 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111111113);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111111113);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue19 = ((Integer) value).intValue();
                                            iJ2 = jk1.i((iIntValue19 >> 31) ^ (iIntValue19 << 1));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111111114 = entry.getKey();
                                            Object value111111111111111111111111111111114 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111111114);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111111114);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        case 17:
                                            long jLongValue19 = ((Long) value).longValue();
                                            iJ2 = jk1.j((jLongValue19 << i27) ^ (jLongValue19 >> 63));
                                            i6 = i6;
                                            jk1Var3.D(iJ2 + iH + i6);
                                            Object key111111111111111111111111111111115 = entry.getKey();
                                            Object value111111111111111111111111111111115 = entry.getValue();
                                            l63.b(jk1Var3, gw8Var2, i27, key111111111111111111111111111111115);
                                            l63.b(jk1Var3, gw8Var, i26, value111111111111111111111111111111115);
                                            i25 = i26;
                                            i9 = i29;
                                            it = it;
                                            i11 = i30;
                                            i13 = 1;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                default:
                                    g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                    break;
                            }
                        }
                    }
                    i2 = i9;
                    i3 = i11;
                    i9 = i2;
                    i11 = i3;
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 51:
                    if (sd5Var.q(obj, i12, i10)) {
                        double dDoubleValue = ((Double) ef8.c.h(obj, j)).doubleValue();
                        jk1 jk1Var4 = (jk1) fuVar.a;
                        jk1Var4.getClass();
                        jk1Var4.t(i12, Double.doubleToRawLongBits(dDoubleValue));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 52:
                    if (sd5Var.q(obj, i12, i10)) {
                        float fFloatValue = ((Float) ef8.c.h(obj, j)).floatValue();
                        jk1 jk1Var5 = (jk1) fuVar.a;
                        jk1Var5.getClass();
                        jk1Var5.r(i12, Float.floatToRawIntBits(fFloatValue));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 53:
                    if (sd5Var.q(obj, i12, i10)) {
                        ((jk1) fuVar.a).E(i12, z(obj, j));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 54:
                    if (sd5Var.q(obj, i12, i10)) {
                        ((jk1) fuVar.a).E(i12, z(obj, j));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 55:
                    if (sd5Var.q(obj, i12, i10)) {
                        ((jk1) fuVar.a).v(i12, y(obj, j));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 56:
                    if (sd5Var.q(obj, i12, i10)) {
                        ((jk1) fuVar.a).t(i12, z(obj, j));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 57:
                    if (sd5Var.q(obj, i12, i10)) {
                        ((jk1) fuVar.a).r(i12, y(obj, j));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 58:
                    if (sd5Var.q(obj, i12, i10)) {
                        ((jk1) fuVar.a).o(i12, ((Boolean) ef8.c.h(obj, j)).booleanValue());
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 59:
                    if (sd5Var.q(obj, i12, i10)) {
                        Object object3 = unsafe.getObject(obj, j);
                        if (object3 instanceof String) {
                            ((jk1) fuVar.a).z(i12, (String) object3);
                        } else {
                            ((jk1) fuVar.a).p(i12, (gy0) object3);
                        }
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                    if (sd5Var.q(obj, i12, i10)) {
                        ((jk1) fuVar.a).y(i12, (s4) unsafe.getObject(obj, j), sd5Var.m(i10));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 61:
                    if (sd5Var.q(obj, i12, i10)) {
                        ((jk1) fuVar.a).p(i12, (gy0) unsafe.getObject(obj, j));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 62:
                    if (sd5Var.q(obj, i12, i10)) {
                        ((jk1) fuVar.a).C(i12, y(obj, j));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 63:
                    if (sd5Var.q(obj, i12, i10)) {
                        ((jk1) fuVar.a).v(i12, y(obj, j));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 64:
                    if (sd5Var.q(obj, i12, i10)) {
                        ((jk1) fuVar.a).r(i12, y(obj, j));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 65:
                    if (sd5Var.q(obj, i12, i10)) {
                        ((jk1) fuVar.a).t(i12, z(obj, j));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 66:
                    if (sd5Var.q(obj, i12, i10)) {
                        int iY = y(obj, j);
                        ((jk1) fuVar.a).C(i12, (iY >> 31) ^ (iY << 1));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 67:
                    if (sd5Var.q(obj, i12, i10)) {
                        long jZ = z(obj, j);
                        ((jk1) fuVar.a).E(i12, (jZ << 1) ^ (jZ >> 63));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                case 68:
                    if (sd5Var.q(obj, i12, i10)) {
                        fuVar.f(i12, unsafe.getObject(obj, j), sd5Var.m(i10));
                    }
                    i10 += 3;
                    i8 = 1048575;
                    break;
                default:
                    i10 += 3;
                    i8 = 1048575;
                    break;
            }
            return;
        }
        sd5Var.l.getClass();
        ((av3) obj).unknownFields.d(fuVar);
    }

    @Override // defpackage.k57
    public final void a(Object obj, fu fuVar) throws IOException {
        fuVar.getClass();
        M(obj, fuVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x0025  */
    @Override // defpackage.k57
    public final void b(Object obj, Object obj2) {
        Object obj3;
        if (!p(obj)) {
            g84.k(obj, "Mutating immutable message: ");
            return;
        }
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                u57.k(this.l, obj, obj2);
                return;
            }
            int iL = L(i);
            long j = 1048575 & iL;
            int i2 = iArr[i];
            switch (K(iL)) {
                case 0:
                    if (!n(i, obj2)) {
                        obj3 = obj;
                    } else {
                        df8 df8Var = ef8.c;
                        obj3 = obj;
                        df8Var.l(obj3, j, df8Var.d(obj2, j));
                        G(i, obj3);
                    }
                    break;
                case 1:
                    if (n(i, obj2)) {
                        df8 df8Var2 = ef8.c;
                        df8Var2.m(obj, j, df8Var2.e(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 2:
                    if (n(i, obj2)) {
                        ef8.n(obj, j, ef8.c.g(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 3:
                    if (n(i, obj2)) {
                        ef8.n(obj, j, ef8.c.g(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 4:
                    if (n(i, obj2)) {
                        ef8.m(obj, j, ef8.c.f(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 5:
                    if (n(i, obj2)) {
                        ef8.n(obj, j, ef8.c.g(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 6:
                    if (n(i, obj2)) {
                        ef8.m(obj, j, ef8.c.f(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 7:
                    if (n(i, obj2)) {
                        df8 df8Var3 = ef8.c;
                        df8Var3.j(obj, j, df8Var3.c(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 8:
                    if (n(i, obj2)) {
                        ef8.o(obj, j, ef8.c.h(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    s(i, obj, obj2);
                    obj3 = obj;
                    break;
                case 10:
                    if (n(i, obj2)) {
                        ef8.o(obj, j, ef8.c.h(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    if (n(i, obj2)) {
                        ef8.m(obj, j, ef8.c.f(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 12:
                    if (n(i, obj2)) {
                        ef8.m(obj, j, ef8.c.f(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 13:
                    if (n(i, obj2)) {
                        ef8.m(obj, j, ef8.c.f(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 14:
                    if (n(i, obj2)) {
                        ef8.n(obj, j, ef8.c.g(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 15:
                    if (n(i, obj2)) {
                        ef8.m(obj, j, ef8.c.f(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case Argon2.V10 /* 16 */:
                    if (n(i, obj2)) {
                        ef8.n(obj, j, ef8.c.g(obj2, j));
                        G(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 17:
                    s(i, obj, obj2);
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
                    this.k.getClass();
                    df8 df8Var4 = ef8.c;
                    xd4 xd4VarE = (xd4) df8Var4.h(obj, j);
                    xd4 xd4Var = (xd4) df8Var4.h(obj2, j);
                    int i3 = ((t96) xd4VarE).c;
                    int i4 = ((t96) xd4Var).c;
                    if (i3 > 0 && i4 > 0) {
                        if (!((t96) xd4VarE).a) {
                            xd4VarE = ((t96) xd4VarE).e(i4 + i3);
                        }
                        ((t96) xd4VarE).addAll(xd4Var);
                    }
                    if (i3 > 0) {
                        xd4Var = xd4VarE;
                    }
                    ef8.o(obj, j, xd4Var);
                    obj3 = obj;
                    break;
                case 50:
                    Class cls = u57.a;
                    df8 df8Var5 = ef8.c;
                    Object objH = df8Var5.h(obj, j);
                    Object objH2 = df8Var5.h(obj2, j);
                    this.m.getClass();
                    ef8.o(obj, j, l65.a(objH, objH2));
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
                    if (q(obj2, i2, i)) {
                        ef8.o(obj, j, ef8.c.h(obj2, j));
                        H(obj, i2, i);
                    }
                    obj3 = obj;
                    break;
                case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                    t(i, obj, obj2);
                    obj3 = obj;
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (q(obj2, i2, i)) {
                        ef8.o(obj, j, ef8.c.h(obj2, j));
                        H(obj, i2, i);
                    }
                    obj3 = obj;
                    break;
                case 68:
                    t(i, obj, obj2);
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

    /* JADX WARN: Code duplicated, block: B:27:0x0080  */
    /* JADX WARN: Code duplicated, block: B:29:0x0086  */
    /* JADX WARN: Code duplicated, block: B:43:0x0093 A[SYNTHETIC] */
    @Override // defpackage.k57
    public final void c(Object obj) {
        if (p(obj)) {
            if (obj instanceof av3) {
                av3 av3Var = (av3) obj;
                av3Var.k(Integer.MAX_VALUE);
                av3Var.memoizedHashCode = 0;
                av3Var.h();
            }
            int[] iArr = this.a;
            int length = iArr.length;
            for (int i = 0; i < length; i += 3) {
                int iL = L(i);
                long j = 1048575 & iL;
                int iK = K(iL);
                if (iK != 9) {
                    if (iK != 60 && iK != 68) {
                        switch (iK) {
                            case 17:
                                if (n(i, obj)) {
                                    m(i).c(o.getObject(obj, j));
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
                                this.k.getClass();
                                t96 t96Var = (t96) ((xd4) ef8.c.h(obj, j));
                                if (t96Var.a) {
                                    t96Var.a = false;
                                }
                                break;
                            case 50:
                                Unsafe unsafe = o;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    this.m.getClass();
                                    ((k65) object).a = false;
                                    unsafe.putObject(obj, j, object);
                                }
                                break;
                        }
                    } else if (q(obj, iArr[i], i)) {
                        m(i).c(o.getObject(obj, j));
                    }
                } else if (n(i, obj)) {
                    m(i).c(o.getObject(obj, j));
                }
            }
            this.l.getClass();
            je8 je8Var = ((av3) obj).unknownFields;
            if (je8Var.e) {
                je8Var.e = false;
            }
        }
    }

    @Override // defpackage.k57
    public final boolean d(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.h) {
            int i6 = this.g[i5];
            int[] iArr = this.a;
            int i7 = iArr[i6];
            int iL = L(i6);
            int i8 = iArr[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = o.getInt(obj, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                int i11 = i4;
                i = i3;
                i2 = i11;
            }
            if ((268435456 & iL) == 0 || o(obj, i6, i, i2, i10)) {
                int iK = K(iL);
                if (iK == 9 || iK == 17) {
                    if (o(obj, i6, i, i2, i10)) {
                        if (!m(i6).d(ef8.c.h(obj, iL & 1048575))) {
                        }
                    } else {
                        continue;
                    }
                    i5++;
                    i3 = i;
                    i4 = i2;
                } else {
                    if (iK != 27) {
                        if (iK == 60 || iK == 68) {
                            if (q(obj, i7, i6)) {
                                if (!m(i6).d(ef8.c.h(obj, iL & 1048575))) {
                                }
                            } else {
                                continue;
                            }
                            i5++;
                            i3 = i;
                            i4 = i2;
                        } else if (iK != 49) {
                            if (iK != 50) {
                                continue;
                            } else {
                                Object objH = ef8.c.h(obj, iL & 1048575);
                                this.m.getClass();
                                k65 k65Var = (k65) objH;
                                if (k65Var.isEmpty()) {
                                    continue;
                                } else {
                                    if (((gw8) ((h65) this.b[(i6 / 3) * 2]).a.b).a != hw8.MESSAGE) {
                                        continue;
                                    } else {
                                        k57 k57VarA = null;
                                        for (Object obj2 : k65Var.values()) {
                                            if (k57VarA == null) {
                                                k57VarA = s96.c.a(obj2.getClass());
                                            }
                                            if (!k57VarA.d(obj2)) {
                                            }
                                        }
                                    }
                                }
                            }
                            i5++;
                            i3 = i;
                            i4 = i2;
                        }
                    }
                    List list = (List) ef8.c.h(obj, iL & 1048575);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        k57 k57VarM = m(i6);
                        for (int i12 = 0; i12 < list.size(); i12++) {
                            if (k57VarM.d(list.get(i12))) {
                            }
                        }
                    }
                    i5++;
                    i3 = i;
                    i4 = i2;
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003d  */
    @Override // defpackage.k57
    public final boolean e(av3 av3Var, av3 av3Var2) {
        int[] iArr = this.a;
        int length = iArr.length;
        int i = 0;
        while (true) {
            boolean zL = true;
            if (i < length) {
                int iL = L(i);
                long j = iL & 1048575;
                switch (K(iL)) {
                    case 0:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var = ef8.c;
                            if (Double.doubleToLongBits(df8Var.d(av3Var, j)) != Double.doubleToLongBits(df8Var.d(av3Var2, j))) {
                                zL = false;
                            }
                        }
                        break;
                    case 1:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var2 = ef8.c;
                            if (Float.floatToIntBits(df8Var2.e(av3Var, j)) != Float.floatToIntBits(df8Var2.e(av3Var2, j))) {
                                zL = false;
                            }
                        }
                        break;
                    case 2:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var3 = ef8.c;
                            if (df8Var3.g(av3Var, j) != df8Var3.g(av3Var2, j)) {
                                zL = false;
                            }
                        }
                        break;
                    case 3:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var4 = ef8.c;
                            if (df8Var4.g(av3Var, j) != df8Var4.g(av3Var2, j)) {
                                zL = false;
                            }
                        }
                        break;
                    case 4:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var5 = ef8.c;
                            if (df8Var5.f(av3Var, j) != df8Var5.f(av3Var2, j)) {
                                zL = false;
                            }
                        }
                        break;
                    case 5:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var6 = ef8.c;
                            if (df8Var6.g(av3Var, j) != df8Var6.g(av3Var2, j)) {
                                zL = false;
                            }
                        }
                        break;
                    case 6:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var7 = ef8.c;
                            if (df8Var7.f(av3Var, j) != df8Var7.f(av3Var2, j)) {
                                zL = false;
                            }
                        }
                        break;
                    case 7:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var8 = ef8.c;
                            if (df8Var8.c(av3Var, j) != df8Var8.c(av3Var2, j)) {
                                zL = false;
                            }
                        }
                        break;
                    case 8:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var9 = ef8.c;
                            if (!u57.l(df8Var9.h(av3Var, j), df8Var9.h(av3Var2, j))) {
                                zL = false;
                            }
                        }
                        break;
                    case XmlPullParser.COMMENT /* 9 */:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var10 = ef8.c;
                            if (!u57.l(df8Var10.h(av3Var, j), df8Var10.h(av3Var2, j))) {
                                zL = false;
                            }
                        }
                        break;
                    case 10:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var11 = ef8.c;
                            if (!u57.l(df8Var11.h(av3Var, j), df8Var11.h(av3Var2, j))) {
                                zL = false;
                            }
                        }
                        break;
                    case ModuleDescriptor.MODULE_VERSION /* 11 */:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var12 = ef8.c;
                            if (df8Var12.f(av3Var, j) != df8Var12.f(av3Var2, j)) {
                                zL = false;
                            }
                        }
                        break;
                    case 12:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var13 = ef8.c;
                            if (df8Var13.f(av3Var, j) != df8Var13.f(av3Var2, j)) {
                                zL = false;
                            }
                        }
                        break;
                    case 13:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var14 = ef8.c;
                            if (df8Var14.f(av3Var, j) != df8Var14.f(av3Var2, j)) {
                                zL = false;
                            }
                        }
                        break;
                    case 14:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var15 = ef8.c;
                            if (df8Var15.g(av3Var, j) != df8Var15.g(av3Var2, j)) {
                                zL = false;
                            }
                        }
                        break;
                    case 15:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var16 = ef8.c;
                            if (df8Var16.f(av3Var, j) != df8Var16.f(av3Var2, j)) {
                                zL = false;
                            }
                        }
                        break;
                    case Argon2.V10 /* 16 */:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var17 = ef8.c;
                            if (df8Var17.g(av3Var, j) != df8Var17.g(av3Var2, j)) {
                                zL = false;
                            }
                        }
                        break;
                    case 17:
                        if (!j(av3Var, av3Var2, i)) {
                            zL = false;
                        } else {
                            df8 df8Var18 = ef8.c;
                            if (!u57.l(df8Var18.h(av3Var, j), df8Var18.h(av3Var2, j))) {
                                zL = false;
                            }
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
                        df8 df8Var19 = ef8.c;
                        zL = u57.l(df8Var19.h(av3Var, j), df8Var19.h(av3Var2, j));
                        break;
                    case 50:
                        df8 df8Var20 = ef8.c;
                        zL = u57.l(df8Var20.h(av3Var, j), df8Var20.h(av3Var2, j));
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
                        long j2 = iArr[i + 2] & 1048575;
                        df8 df8Var21 = ef8.c;
                        if (df8Var21.f(av3Var, j2) != df8Var21.f(av3Var2, j2) || !u57.l(df8Var21.h(av3Var, j), df8Var21.h(av3Var2, j))) {
                            zL = false;
                        }
                        break;
                }
                if (zL) {
                    i += 3;
                }
            } else {
                this.l.getClass();
                if (av3Var.unknownFields.equals(av3Var2.unknownFields)) {
                    return true;
                }
            }
        }
        return false;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 18661. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // defpackage.k57
    public final void f(java.lang.Object r19, defpackage.hk1 r20, defpackage.c13 r21) {
        /*
            Method dump skipped, instruction units count: 1866
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sd5.f(java.lang.Object, hk1, c13):void");
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00e1 A[PHI: r3
      0x00e1: PHI (r3v32 int) = (r3v10 int), (r3v33 int) binds: [B:83:0x0216, B:41:0x00df] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.k57
    public final int g(av3 av3Var) {
        int i;
        int iB;
        int i2;
        int[] iArr = this.a;
        int length = iArr.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int iL = L(i4);
            int i5 = iArr[i4];
            long j = 1048575 & iL;
            int i6 = 1237;
            int iHashCode = 37;
            switch (K(iL)) {
                case 0:
                    i = i3 * 53;
                    iB = yd4.b(Double.doubleToLongBits(ef8.c.d(av3Var, j)));
                    i3 = iB + i;
                    break;
                case 1:
                    i = i3 * 53;
                    iB = Float.floatToIntBits(ef8.c.e(av3Var, j));
                    i3 = iB + i;
                    break;
                case 2:
                    i = i3 * 53;
                    iB = yd4.b(ef8.c.g(av3Var, j));
                    i3 = iB + i;
                    break;
                case 3:
                    i = i3 * 53;
                    iB = yd4.b(ef8.c.g(av3Var, j));
                    i3 = iB + i;
                    break;
                case 4:
                    i = i3 * 53;
                    iB = ef8.c.f(av3Var, j);
                    i3 = iB + i;
                    break;
                case 5:
                    i = i3 * 53;
                    iB = yd4.b(ef8.c.g(av3Var, j));
                    i3 = iB + i;
                    break;
                case 6:
                    i = i3 * 53;
                    iB = ef8.c.f(av3Var, j);
                    i3 = iB + i;
                    break;
                case 7:
                    i2 = i3 * 53;
                    boolean zC = ef8.c.c(av3Var, j);
                    Charset charset = yd4.a;
                    if (zC) {
                        i6 = 1231;
                    }
                    i3 = i6 + i2;
                    break;
                case 8:
                    i = i3 * 53;
                    iB = ((String) ef8.c.h(av3Var, j)).hashCode();
                    i3 = iB + i;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    Object objH = ef8.c.h(av3Var, j);
                    if (objH != null) {
                        iHashCode = objH.hashCode();
                    }
                    i3 = (i3 * 53) + iHashCode;
                    break;
                case 10:
                    i = i3 * 53;
                    iB = ef8.c.h(av3Var, j).hashCode();
                    i3 = iB + i;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    i = i3 * 53;
                    iB = ef8.c.f(av3Var, j);
                    i3 = iB + i;
                    break;
                case 12:
                    i = i3 * 53;
                    iB = ef8.c.f(av3Var, j);
                    i3 = iB + i;
                    break;
                case 13:
                    i = i3 * 53;
                    iB = ef8.c.f(av3Var, j);
                    i3 = iB + i;
                    break;
                case 14:
                    i = i3 * 53;
                    iB = yd4.b(ef8.c.g(av3Var, j));
                    i3 = iB + i;
                    break;
                case 15:
                    i = i3 * 53;
                    iB = ef8.c.f(av3Var, j);
                    i3 = iB + i;
                    break;
                case Argon2.V10 /* 16 */:
                    i = i3 * 53;
                    iB = yd4.b(ef8.c.g(av3Var, j));
                    i3 = iB + i;
                    break;
                case 17:
                    Object objH2 = ef8.c.h(av3Var, j);
                    if (objH2 != null) {
                        iHashCode = objH2.hashCode();
                    }
                    i3 = (i3 * 53) + iHashCode;
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
                    i = i3 * 53;
                    iB = ef8.c.h(av3Var, j).hashCode();
                    i3 = iB + i;
                    break;
                case 50:
                    i = i3 * 53;
                    iB = ef8.c.h(av3Var, j).hashCode();
                    i3 = iB + i;
                    break;
                case 51:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = yd4.b(Double.doubleToLongBits(((Double) ef8.c.h(av3Var, j)).doubleValue()));
                        i3 = iB + i;
                    }
                    break;
                case 52:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = Float.floatToIntBits(((Float) ef8.c.h(av3Var, j)).floatValue());
                        i3 = iB + i;
                    }
                    break;
                case 53:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = yd4.b(z(av3Var, j));
                        i3 = iB + i;
                    }
                    break;
                case 54:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = yd4.b(z(av3Var, j));
                        i3 = iB + i;
                    }
                    break;
                case 55:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = y(av3Var, j);
                        i3 = iB + i;
                    }
                    break;
                case 56:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = yd4.b(z(av3Var, j));
                        i3 = iB + i;
                    }
                    break;
                case 57:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = y(av3Var, j);
                        i3 = iB + i;
                    }
                    break;
                case 58:
                    if (q(av3Var, i5, i4)) {
                        i2 = i3 * 53;
                        boolean zBooleanValue = ((Boolean) ef8.c.h(av3Var, j)).booleanValue();
                        Charset charset2 = yd4.a;
                        if (zBooleanValue) {
                            i6 = 1231;
                        }
                        i3 = i6 + i2;
                    }
                    break;
                case 59:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = ((String) ef8.c.h(av3Var, j)).hashCode();
                        i3 = iB + i;
                    }
                    break;
                case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = ef8.c.h(av3Var, j).hashCode();
                        i3 = iB + i;
                    }
                    break;
                case 61:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = ef8.c.h(av3Var, j).hashCode();
                        i3 = iB + i;
                    }
                    break;
                case 62:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = y(av3Var, j);
                        i3 = iB + i;
                    }
                    break;
                case 63:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = y(av3Var, j);
                        i3 = iB + i;
                    }
                    break;
                case 64:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = y(av3Var, j);
                        i3 = iB + i;
                    }
                    break;
                case 65:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = yd4.b(z(av3Var, j));
                        i3 = iB + i;
                    }
                    break;
                case 66:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = y(av3Var, j);
                        i3 = iB + i;
                    }
                    break;
                case 67:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = yd4.b(z(av3Var, j));
                        i3 = iB + i;
                    }
                    break;
                case 68:
                    if (q(av3Var, i5, i4)) {
                        i = i3 * 53;
                        iB = ef8.c.h(av3Var, j).hashCode();
                        i3 = iB + i;
                    }
                    break;
            }
        }
        this.l.getClass();
        return av3Var.unknownFields.hashCode() + (i3 * 53);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:129:0x0320  */
    /* JADX WARN: Code duplicated, block: B:134:0x032d  */
    /* JADX WARN: Code duplicated, block: B:135:0x033f  */
    /* JADX WARN: Code duplicated, block: B:136:0x0350  */
    /* JADX WARN: Code duplicated, block: B:138:0x0359  */
    /* JADX WARN: Code duplicated, block: B:140:0x0362  */
    /* JADX WARN: Code duplicated, block: B:141:0x036f  */
    /* JADX WARN: Code duplicated, block: B:142:0x037b  */
    /* JADX WARN: Code duplicated, block: B:144:0x037f  */
    /* JADX WARN: Code duplicated, block: B:146:0x038c  */
    /* JADX WARN: Code duplicated, block: B:147:0x0394  */
    /* JADX WARN: Code duplicated, block: B:148:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:149:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:151:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:152:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:153:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:154:0x03ca  */
    /* JADX WARN: Code duplicated, block: B:155:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:156:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:157:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:158:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:159:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:160:0x0400  */
    /* JADX WARN: Code duplicated, block: B:217:0x05fe A[PHI: r10 r19 r25
      0x05fe: PHI (r10v25 int) = 
      (r10v9 int)
      (r10v10 int)
      (r10v11 int)
      (r10v15 int)
      (r10v17 int)
      (r10v18 int)
      (r10v19 int)
      (r10v22 int)
      (r10v26 int)
     binds: [B:276:0x07c7, B:272:0x07a8, B:268:0x0789, B:251:0x0706, B:237:0x0698, B:233:0x067b, B:229:0x065e, B:222:0x061f, B:216:0x05fc] A[DONT_GENERATE, DONT_INLINE]
      0x05fe: PHI (r19v35 int) = 
      (r19v21 int)
      (r19v22 int)
      (r19v23 int)
      (r19v27 int)
      (r19v29 int)
      (r19v30 int)
      (r19v31 int)
      (r19v34 int)
      (r19v36 int)
     binds: [B:276:0x07c7, B:272:0x07a8, B:268:0x0789, B:251:0x0706, B:237:0x0698, B:233:0x067b, B:229:0x065e, B:222:0x061f, B:216:0x05fc] A[DONT_GENERATE, DONT_INLINE]
      0x05fe: PHI (r25v19 int) = 
      (r25v2 int)
      (r25v3 int)
      (r25v4 int)
      (r25v8 int)
      (r25v10 int)
      (r25v11 int)
      (r25v12 int)
      (r25v16 int)
      (r25v20 int)
     binds: [B:276:0x07c7, B:272:0x07a8, B:268:0x0789, B:251:0x0706, B:237:0x0698, B:233:0x067b, B:229:0x065e, B:222:0x061f, B:216:0x05fc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:353:0x0329 A[SYNTHETIC] */
    @Override // defpackage.k57
    public final int h(av3 av3Var) {
        int i;
        int iH;
        int iH2;
        int iH3;
        int iJ;
        int iH4;
        int iJ2;
        int iH5;
        int iH6;
        int iF;
        int iC;
        int i2;
        int i3;
        int iH7;
        int size;
        int i4;
        int iH8;
        int iH9;
        int size2;
        int iH10;
        int i5;
        int iA;
        int i6;
        int iJ3;
        int size3;
        int i7;
        int i8;
        gw8 gw8Var;
        int iH11;
        int iJ4;
        int size4;
        int i9;
        int iH12;
        int iH13;
        int iH14;
        int iJ5;
        int iH15;
        int iJ6;
        int iH16;
        int i10;
        sd5 sd5Var = this;
        av3 av3Var2 = av3Var;
        Unsafe unsafe = o;
        int i11 = 1048575;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        int iF2 = 0;
        while (true) {
            int[] iArr = sd5Var.a;
            if (i13 >= iArr.length) {
                sd5Var.l.getClass();
                return av3Var2.unknownFields.b() + iF2;
            }
            int iL = sd5Var.L(i13);
            int iK = K(iL);
            int i15 = iArr[i13];
            int i16 = iArr[i13 + 2];
            int i17 = i16 & i11;
            int i18 = 1;
            if (iK <= 17) {
                if (i17 != i12) {
                    i14 = i17 == i11 ? 0 : unsafe.getInt(av3Var2, i17);
                    i12 = i17;
                }
                i = 1 << (i16 >>> 20);
            } else {
                i = 0;
            }
            long j = iL & i11;
            if (iK >= m63.b.a) {
                int i19 = m63.c.a;
            }
            char c = '?';
            switch (iK) {
                case 0:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        iH = jk1.h(i15) + 8;
                        iF2 += iH;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 1:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        iH2 = jk1.h(i15);
                        iH6 = iH2 + 4;
                        iF2 += iH6;
                    }
                    sd5Var = this;
                    av3Var2 = av3Var;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 2:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        long j2 = unsafe.getLong(av3Var2, j);
                        iH3 = jk1.h(i15);
                        iJ = jk1.j(j2);
                        iF2 += iJ + iH3;
                    }
                    sd5Var = this;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 3:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        long j3 = unsafe.getLong(av3Var2, j);
                        iH3 = jk1.h(i15);
                        iJ = jk1.j(j3);
                        iF2 += iJ + iH3;
                    }
                    sd5Var = this;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 4:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        int i20 = unsafe.getInt(av3Var2, j);
                        iH4 = jk1.h(i15);
                        iJ2 = jk1.j(i20);
                        iF = iJ2 + iH4;
                        iF2 += iF;
                    }
                    sd5Var = this;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 5:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        iH5 = jk1.h(i15);
                        iH6 = iH5 + 8;
                        iF2 += iH6;
                    }
                    sd5Var = this;
                    av3Var2 = av3Var;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 6:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        iH2 = jk1.h(i15);
                        iH6 = iH2 + 4;
                        iF2 += iH6;
                    }
                    sd5Var = this;
                    av3Var2 = av3Var;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 7:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        iH6 = jk1.h(i15) + 1;
                        iF2 += iH6;
                    }
                    sd5Var = this;
                    av3Var2 = av3Var;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 8:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        Object object = unsafe.getObject(av3Var2, j);
                        iF2 = (object instanceof gy0 ? jk1.f(i15, (gy0) object) : jk1.g((String) object) + jk1.h(i15)) + iF2;
                    }
                    sd5Var = this;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        Object object2 = unsafe.getObject(av3Var2, j);
                        k57 k57VarM = sd5Var.m(i13);
                        Class cls = u57.a;
                        int iH17 = jk1.h(i15);
                        int iA2 = ((s4) object2).a(k57VarM);
                        iF2 += jk1.i(iA2) + iA2 + iH17;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 10:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        iF = jk1.f(i15, (gy0) unsafe.getObject(av3Var2, j));
                        iF2 += iF;
                    }
                    sd5Var = this;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        int i21 = unsafe.getInt(av3Var2, j);
                        iH4 = jk1.h(i15);
                        iJ2 = jk1.i(i21);
                        iF = iJ2 + iH4;
                        iF2 += iF;
                    }
                    sd5Var = this;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 12:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        int i22 = unsafe.getInt(av3Var2, j);
                        iH4 = jk1.h(i15);
                        iJ2 = jk1.j(i22);
                        iF = iJ2 + iH4;
                        iF2 += iF;
                    }
                    sd5Var = this;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 13:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        iH2 = jk1.h(i15);
                        iH6 = iH2 + 4;
                        iF2 += iH6;
                    }
                    sd5Var = this;
                    av3Var2 = av3Var;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 14:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        iH5 = jk1.h(i15);
                        iH6 = iH5 + 8;
                        iF2 += iH6;
                    }
                    sd5Var = this;
                    av3Var2 = av3Var;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 15:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        int i23 = unsafe.getInt(av3Var2, j);
                        iH4 = jk1.h(i15);
                        iJ2 = jk1.i((i23 >> 31) ^ (i23 << 1));
                        iF = iJ2 + iH4;
                        iF2 += iF;
                    }
                    sd5Var = this;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case Argon2.V10 /* 16 */:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        long j4 = unsafe.getLong(av3Var2, j);
                        iH3 = jk1.h(i15);
                        iJ = jk1.j((j4 >> 63) ^ (j4 << 1));
                        iF2 += iJ + iH3;
                    }
                    sd5Var = this;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 17:
                    if (sd5Var.o(av3Var2, i13, i12, i14, i)) {
                        iH = ((s4) unsafe.getObject(av3Var2, j)).a(sd5Var.m(i13)) + (jk1.h(i15) * 2);
                        iF2 += iH;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 18:
                    iC = u57.c(i15, (List) unsafe.getObject(av3Var2, j));
                    iF2 += iC;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case Argon2.V13 /* 19 */:
                    iC = u57.b(i15, (List) unsafe.getObject(av3Var2, j));
                    iF2 += iC;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 20:
                    i12 = i12;
                    i2 = i14;
                    i3 = 0;
                    List list = (List) unsafe.getObject(av3Var2, j);
                    Class cls2 = u57.a;
                    if (list.size() == 0) {
                        iH7 = i3;
                    } else {
                        iH7 = (jk1.h(i15) * list.size()) + u57.e(list);
                    }
                    iF2 += iH7;
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 21:
                    i12 = i12;
                    i2 = i14;
                    i3 = 0;
                    List list2 = (List) unsafe.getObject(av3Var2, j);
                    Class cls3 = u57.a;
                    size = list2.size();
                    if (size == 0) {
                        iH7 = i3;
                    } else {
                        i4 = u57.i(list2);
                        iH8 = jk1.h(i15);
                        iH7 = (iH8 * size) + i4;
                    }
                    iF2 += iH7;
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 22:
                    i12 = i12;
                    i2 = i14;
                    i3 = 0;
                    List list3 = (List) unsafe.getObject(av3Var2, j);
                    Class cls4 = u57.a;
                    size = list3.size();
                    if (size == 0) {
                        iH7 = i3;
                    } else {
                        i4 = u57.d(list3);
                        iH8 = jk1.h(i15);
                        iH7 = (iH8 * size) + i4;
                    }
                    iF2 += iH7;
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 23:
                    iC = u57.c(i15, (List) unsafe.getObject(av3Var2, j));
                    iF2 += iC;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 24:
                    iC = u57.b(i15, (List) unsafe.getObject(av3Var2, j));
                    iF2 += iC;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 25:
                    i12 = i12;
                    i2 = i14;
                    List list4 = (List) unsafe.getObject(av3Var2, j);
                    Class cls5 = u57.a;
                    int size5 = list4.size();
                    iF2 += size5 == 0 ? 0 : (jk1.h(i15) + 1) * size5;
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 26:
                    i12 = i12;
                    i2 = i14;
                    i3 = 0;
                    List list5 = (List) unsafe.getObject(av3Var2, j);
                    Class cls6 = u57.a;
                    int size6 = list5.size();
                    if (size6 == 0) {
                        iH7 = i3;
                    } else {
                        iH7 = jk1.h(i15) * size6;
                        for (int i24 = 0; i24 < size6; i24++) {
                            Object obj = list5.get(i24);
                            if (obj instanceof gy0) {
                                int size7 = ((gy0) obj).size();
                                iH7 = jk1.i(size7) + size7 + iH7;
                            } else {
                                iH7 = jk1.g((String) obj) + iH7;
                            }
                        }
                    }
                    iF2 += iH7;
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 27:
                    i12 = i12;
                    i2 = i14;
                    List list6 = (List) unsafe.getObject(av3Var2, j);
                    k57 k57VarM2 = sd5Var.m(i13);
                    Class cls7 = u57.a;
                    int size8 = list6.size();
                    if (size8 == 0) {
                        iH9 = 0;
                    } else {
                        iH9 = jk1.h(i15) * size8;
                        for (int i25 = 0; i25 < size8; i25++) {
                            int iA3 = ((s4) list6.get(i25)).a(k57VarM2);
                            iH9 += jk1.i(iA3) + iA3;
                        }
                    }
                    iF2 += iH9;
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 28:
                    i12 = i12;
                    i2 = i14;
                    i3 = 0;
                    List list7 = (List) unsafe.getObject(av3Var2, j);
                    Class cls8 = u57.a;
                    int size9 = list7.size();
                    if (size9 == 0) {
                        iH7 = i3;
                    } else {
                        iH7 = jk1.h(i15) * size9;
                        for (int i26 = 0; i26 < list7.size(); i26++) {
                            int size10 = ((gy0) list7.get(i26)).size();
                            iH7 += jk1.i(size10) + size10;
                        }
                    }
                    iF2 += iH7;
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 29:
                    i12 = i12;
                    i2 = i14;
                    i3 = 0;
                    List list8 = (List) unsafe.getObject(av3Var2, j);
                    Class cls9 = u57.a;
                    size = list8.size();
                    if (size == 0) {
                        iH7 = i3;
                    } else {
                        i4 = u57.h(list8);
                        iH8 = jk1.h(i15);
                        iH7 = (iH8 * size) + i4;
                    }
                    iF2 += iH7;
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                    i12 = i12;
                    i2 = i14;
                    i3 = 0;
                    List list9 = (List) unsafe.getObject(av3Var2, j);
                    Class cls10 = u57.a;
                    size = list9.size();
                    if (size == 0) {
                        iH7 = i3;
                    } else {
                        i4 = u57.a(list9);
                        iH8 = jk1.h(i15);
                        iH7 = (iH8 * size) + i4;
                    }
                    iF2 += iH7;
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 31:
                    iC = u57.b(i15, (List) unsafe.getObject(av3Var2, j));
                    iF2 += iC;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 32:
                    iC = u57.c(i15, (List) unsafe.getObject(av3Var2, j));
                    iF2 += iC;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 33:
                    i12 = i12;
                    i2 = i14;
                    i3 = 0;
                    List list10 = (List) unsafe.getObject(av3Var2, j);
                    Class cls11 = u57.a;
                    size = list10.size();
                    if (size == 0) {
                        iH7 = i3;
                    } else {
                        i4 = u57.f(list10);
                        iH8 = jk1.h(i15);
                        iH7 = (iH8 * size) + i4;
                    }
                    iF2 += iH7;
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 34:
                    i12 = i12;
                    i2 = i14;
                    i3 = 0;
                    List list11 = (List) unsafe.getObject(av3Var2, j);
                    Class cls12 = u57.a;
                    size = list11.size();
                    if (size == 0) {
                        iH7 = i3;
                    } else {
                        i4 = u57.g(list11);
                        iH8 = jk1.h(i15);
                        iH7 = (iH8 * size) + i4;
                    }
                    iF2 += iH7;
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 35:
                    i12 = i12;
                    i2 = i14;
                    List list12 = (List) unsafe.getObject(av3Var2, j);
                    Class cls13 = u57.a;
                    size2 = list12.size() * 8;
                    if (size2 > 0) {
                        iH10 = jk1.h(i15);
                        i5 = jk1.i(size2);
                        iF2 += i5 + iH10 + size2;
                    }
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 36:
                    i12 = i12;
                    i2 = i14;
                    List list13 = (List) unsafe.getObject(av3Var2, j);
                    Class cls14 = u57.a;
                    size2 = list13.size() * 4;
                    if (size2 > 0) {
                        iH10 = jk1.h(i15);
                        i5 = jk1.i(size2);
                        iF2 += i5 + iH10 + size2;
                    }
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 37:
                    i12 = i12;
                    i2 = i14;
                    size2 = u57.e((List) unsafe.getObject(av3Var2, j));
                    if (size2 > 0) {
                        iH10 = jk1.h(i15);
                        i5 = jk1.i(size2);
                        iF2 += i5 + iH10 + size2;
                    }
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 38:
                    i12 = i12;
                    i2 = i14;
                    size2 = u57.i((List) unsafe.getObject(av3Var2, j));
                    if (size2 > 0) {
                        iH10 = jk1.h(i15);
                        i5 = jk1.i(size2);
                        iF2 += i5 + iH10 + size2;
                    }
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 39:
                    i12 = i12;
                    i2 = i14;
                    size2 = u57.d((List) unsafe.getObject(av3Var2, j));
                    if (size2 > 0) {
                        iH10 = jk1.h(i15);
                        i5 = jk1.i(size2);
                        iF2 += i5 + iH10 + size2;
                    }
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 40:
                    i12 = i12;
                    i2 = i14;
                    List list14 = (List) unsafe.getObject(av3Var2, j);
                    Class cls15 = u57.a;
                    size2 = list14.size() * 8;
                    if (size2 > 0) {
                        iH10 = jk1.h(i15);
                        i5 = jk1.i(size2);
                        iF2 += i5 + iH10 + size2;
                    }
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 41:
                    i12 = i12;
                    i2 = i14;
                    List list15 = (List) unsafe.getObject(av3Var2, j);
                    Class cls16 = u57.a;
                    size2 = list15.size() * 4;
                    if (size2 > 0) {
                        iH10 = jk1.h(i15);
                        i5 = jk1.i(size2);
                        iF2 += i5 + iH10 + size2;
                    }
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 42:
                    i12 = i12;
                    i2 = i14;
                    List list16 = (List) unsafe.getObject(av3Var2, j);
                    Class cls17 = u57.a;
                    size2 = list16.size();
                    if (size2 > 0) {
                        iH10 = jk1.h(i15);
                        i5 = jk1.i(size2);
                        iF2 += i5 + iH10 + size2;
                    }
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 43:
                    i12 = i12;
                    i2 = i14;
                    size2 = u57.h((List) unsafe.getObject(av3Var2, j));
                    if (size2 > 0) {
                        iH10 = jk1.h(i15);
                        i5 = jk1.i(size2);
                        iF2 += i5 + iH10 + size2;
                    }
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 44:
                    i12 = i12;
                    i2 = i14;
                    size2 = u57.a((List) unsafe.getObject(av3Var2, j));
                    if (size2 > 0) {
                        iH10 = jk1.h(i15);
                        i5 = jk1.i(size2);
                        iF2 += i5 + iH10 + size2;
                    }
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 45:
                    i12 = i12;
                    i2 = i14;
                    List list17 = (List) unsafe.getObject(av3Var2, j);
                    Class cls18 = u57.a;
                    size2 = list17.size() * 4;
                    if (size2 > 0) {
                        iH10 = jk1.h(i15);
                        i5 = jk1.i(size2);
                        iF2 += i5 + iH10 + size2;
                    }
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 46:
                    i12 = i12;
                    i2 = i14;
                    List list18 = (List) unsafe.getObject(av3Var2, j);
                    Class cls19 = u57.a;
                    size2 = list18.size() * 8;
                    if (size2 > 0) {
                        iH10 = jk1.h(i15);
                        i5 = jk1.i(size2);
                        iF2 += i5 + iH10 + size2;
                    }
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 47:
                    i12 = i12;
                    i2 = i14;
                    size2 = u57.f((List) unsafe.getObject(av3Var2, j));
                    if (size2 > 0) {
                        iH10 = jk1.h(i15);
                        i5 = jk1.i(size2);
                        iF2 += i5 + iH10 + size2;
                    }
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 48:
                    i12 = i12;
                    i2 = i14;
                    size2 = u57.g((List) unsafe.getObject(av3Var2, j));
                    if (size2 > 0) {
                        iH10 = jk1.h(i15);
                        i5 = jk1.i(size2);
                        iF2 += i5 + iH10 + size2;
                    }
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 49:
                    i12 = i12;
                    i2 = i14;
                    List list19 = (List) unsafe.getObject(av3Var2, j);
                    k57 k57VarM3 = sd5Var.m(i13);
                    Class cls20 = u57.a;
                    int size11 = list19.size();
                    if (size11 == 0) {
                        iA = 0;
                    } else {
                        iA = 0;
                        for (int i27 = 0; i27 < size11; i27++) {
                            iA += ((s4) list19.get(i27)).a(k57VarM3) + (jk1.h(i15) * 2);
                        }
                    }
                    iF2 += iA;
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 50:
                    Object object3 = unsafe.getObject(av3Var2, j);
                    Object obj2 = sd5Var.b[(i13 / 3) * 2];
                    sd5Var.m.getClass();
                    k65 k65Var = (k65) object3;
                    h65 h65Var = (h65) obj2;
                    if (k65Var.isEmpty()) {
                        i6 = 0;
                    } else {
                        i6 = 0;
                        for (Map.Entry entry : k65Var.entrySet()) {
                            Object key = entry.getKey();
                            Object value = entry.getValue();
                            h65Var.getClass();
                            int iH18 = jk1.h(i15);
                            ka kaVar = h65Var.a;
                            char c2 = c;
                            gw8 gw8Var2 = (gw8) kaVar.a;
                            int i28 = l63.c;
                            int iH19 = jk1.h(i18);
                            int i29 = i18;
                            dw8 dw8Var = gw8.d;
                            if (gw8Var2 == dw8Var) {
                                iH19 *= 2;
                            }
                            int i30 = i12;
                            switch (gw8Var2.ordinal()) {
                                case 0:
                                    ((Double) key).getClass();
                                    iJ3 = 8;
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i31 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31) + i31 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i32 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i32) + i32 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i33 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i33) + i33 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i34 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i34) + i34 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i35 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i35) + i35 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i36 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i36) + i36 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i37 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i37) + i37 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i38 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i38) + i38 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i39 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i39) + i39 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i310 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i310) + i310 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i311 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311) + i311 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i312 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i312) + i312 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i313 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i313) + i313 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i314 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i314) + i314 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i315 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i315) + i315 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i316 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i316) + i316 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue >> 31) ^ (iIntValue << 1));
                                            int i317 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i317) + i317 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue << i29) ^ (jLongValue >> c2));
                                            int i318 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i318) + i318 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 1:
                                    ((Float) key).getClass();
                                    iJ3 = 4;
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i319 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i319) + i319 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i3110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3110) + i3110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i3111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111) + i3111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i3112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3112) + i3112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i3113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3113) + i3113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i3114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3114) + i3114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i3115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3115) + i3115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i3116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3116) + i3116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i3117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3117) + i3117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i3118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3118) + i3118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i3119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3119) + i3119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i31110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31110) + i31110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i31111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111) + i31111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i31112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31112) + i31112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i31113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31113) + i31113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i31114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31114) + i31114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue2 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue2 >> 31) ^ (iIntValue2 << 1));
                                            int i31115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31115) + i31115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue2 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue2 << i29) ^ (jLongValue2 >> c2));
                                            int i31116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31116) + i31116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 2:
                                    i14 = i14;
                                    iJ3 = jk1.j(((Long) key).longValue());
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i31117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31117) + i31117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i31118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31118) + i31118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i31119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31119) + i31119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i311110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311110) + i311110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i311111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111) + i311111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i311112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311112) + i311112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i311113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311113) + i311113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i311114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311114) + i311114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i311115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311115) + i311115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i311116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311116) + i311116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i311117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311117) + i311117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i311118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311118) + i311118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i311119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311119) + i311119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i3111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111110) + i3111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i3111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111) + i3111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i3111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111112) + i3111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue3 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue3 >> 31) ^ (iIntValue3 << 1));
                                            int i3111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111113) + i3111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue3 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue3 << i29) ^ (jLongValue3 >> c2));
                                            int i3111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111114) + i3111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 3:
                                    i14 = i14;
                                    iJ3 = jk1.j(((Long) key).longValue());
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i3111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111115) + i3111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i3111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111116) + i3111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i3111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111117) + i3111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i3111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111118) + i3111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i3111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111119) + i3111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i31111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111110) + i31111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i31111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111) + i31111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i31111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111112) + i31111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i31111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111113) + i31111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i31111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111114) + i31111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i31111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111115) + i31111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i31111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111116) + i31111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i31111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111117) + i31111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i31111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111118) + i31111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i31111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111119) + i31111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i311111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111110) + i311111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue4 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue4 >> 31) ^ (iIntValue4 << 1));
                                            int i311111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111) + i311111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue4 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue4 << i29) ^ (jLongValue4 >> c2));
                                            int i311111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111112) + i311111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 4:
                                    i14 = i14;
                                    iJ3 = jk1.j(((Integer) key).intValue());
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i311111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111113) + i311111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i311111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111114) + i311111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i311111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111115) + i311111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i311111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111116) + i311111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i311111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111117) + i311111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i311111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111118) + i311111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i311111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111119) + i311111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i3111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111110) + i3111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i3111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111) + i3111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i3111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111112) + i3111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i3111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111113) + i3111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i3111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111114) + i3111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i3111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111115) + i3111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i3111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111116) + i3111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i3111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111117) + i3111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i3111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111118) + i3111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue5 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue5 >> 31) ^ (iIntValue5 << 1));
                                            int i3111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111119) + i3111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue5 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue5 << i29) ^ (jLongValue5 >> c2));
                                            int i31111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111110) + i31111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 5:
                                    ((Long) key).getClass();
                                    iJ3 = 8;
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i31111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111) + i31111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i31111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111112) + i31111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i31111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111113) + i31111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i31111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111114) + i31111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i31111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111115) + i31111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i31111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111116) + i31111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i31111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111117) + i31111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i31111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111118) + i31111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i31111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111119) + i31111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i311111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111110) + i311111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i311111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111) + i311111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i311111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111112) + i311111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i311111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111113) + i311111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i311111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111114) + i311111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i311111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111115) + i311111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i311111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111116) + i311111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue6 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue6 >> 31) ^ (iIntValue6 << 1));
                                            int i311111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111117) + i311111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue6 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue6 << i29) ^ (jLongValue6 >> c2));
                                            int i311111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111118) + i311111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 6:
                                    ((Integer) key).getClass();
                                    iJ3 = 4;
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i311111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111119) + i311111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i3111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111110) + i3111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i3111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111) + i3111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i3111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111112) + i3111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i3111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111113) + i3111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i3111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111114) + i3111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i3111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111115) + i3111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i3111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111116) + i3111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i3111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111117) + i3111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i3111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111118) + i3111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i3111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111119) + i3111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i31111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111110) + i31111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i31111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111) + i31111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i31111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111112) + i31111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i31111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111113) + i31111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i31111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111114) + i31111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue7 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue7 >> 31) ^ (iIntValue7 << 1));
                                            int i31111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111115) + i31111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue7 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue7 << i29) ^ (jLongValue7 >> c2));
                                            int i31111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111116) + i31111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 7:
                                    i14 = i14;
                                    ((Boolean) key).getClass();
                                    iJ3 = i29;
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i31111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111117) + i31111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i31111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111118) + i31111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i31111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111119) + i31111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i311111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111110) + i311111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i311111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111) + i311111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i311111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111112) + i311111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i311111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111113) + i311111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i311111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111114) + i311111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i311111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111115) + i311111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i311111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111116) + i311111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i311111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111117) + i311111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i311111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111118) + i311111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i311111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111119) + i311111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i3111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111110) + i3111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i3111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111) + i3111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i3111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111112) + i3111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue8 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue8 >> 31) ^ (iIntValue8 << 1));
                                            int i3111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111113) + i3111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue8 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue8 << i29) ^ (jLongValue8 >> c2));
                                            int i3111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111114) + i3111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 8:
                                    i14 = i14;
                                    if (key instanceof gy0) {
                                        size3 = ((gy0) key).size();
                                        i7 = jk1.i(size3);
                                        iJ3 = i7 + size3;
                                    } else {
                                        iJ3 = jk1.g((String) key);
                                    }
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i3111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111115) + i3111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i3111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111116) + i3111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i3111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111117) + i3111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i3111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111118) + i3111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i3111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111119) + i3111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i31111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111110) + i31111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i31111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111) + i31111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i31111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111112) + i31111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i31111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111113) + i31111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i31111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111114) + i31111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i31111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111115) + i31111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i31111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111116) + i31111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i31111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111117) + i31111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i31111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111118) + i31111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i31111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111119) + i31111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i311111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111110) + i311111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue9 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue9 >> 31) ^ (iIntValue9 << 1));
                                            int i311111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111) + i311111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue9 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue9 << i29) ^ (jLongValue9 >> c2));
                                            int i311111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111112) + i311111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case XmlPullParser.COMMENT /* 9 */:
                                    i14 = i14;
                                    iJ3 = ((av3) ((s4) key)).a(null);
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i311111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111113) + i311111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i311111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111114) + i311111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i311111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111115) + i311111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i311111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111116) + i311111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i311111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111117) + i311111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i311111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111118) + i311111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i311111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111119) + i311111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i3111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111110) + i3111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i3111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111) + i3111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i3111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111112) + i3111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i3111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111113) + i3111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i3111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111114) + i3111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i3111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111115) + i3111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i3111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111116) + i3111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i3111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111117) + i3111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i3111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111118) + i3111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue10 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue10 >> 31) ^ (iIntValue10 << 1));
                                            int i3111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111119) + i3111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue10 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue10 << i29) ^ (jLongValue10 >> c2));
                                            int i31111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111110) + i31111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 10:
                                    i14 = i14;
                                    int iA4 = ((av3) ((s4) key)).a(null);
                                    iJ3 = jk1.i(iA4) + iA4;
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i31111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111) + i31111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i31111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111112) + i31111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i31111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111113) + i31111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i31111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111114) + i31111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i31111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111115) + i31111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i31111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111116) + i31111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i31111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111117) + i31111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i31111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111118) + i31111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i31111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111119) + i31111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i311111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111110) + i311111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i311111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111) + i311111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i311111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111112) + i311111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i311111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111113) + i311111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i311111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111114) + i311111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i311111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111115) + i311111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i311111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111116) + i311111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue11 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue11 >> 31) ^ (iIntValue11 << 1));
                                            int i311111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111117) + i311111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue11 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue11 << i29) ^ (jLongValue11 >> c2));
                                            int i311111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111118) + i311111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                    i14 = i14;
                                    if (key instanceof gy0) {
                                        size3 = ((gy0) key).size();
                                        i7 = jk1.i(size3);
                                    } else {
                                        size3 = ((byte[]) key).length;
                                        i7 = jk1.i(size3);
                                    }
                                    iJ3 = i7 + size3;
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i311111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111119) + i311111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i3111111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111110) + i3111111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i3111111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111) + i3111111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i3111111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111112) + i3111111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i3111111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111113) + i3111111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i3111111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111114) + i3111111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i3111111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111115) + i3111111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i3111111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111116) + i3111111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i3111111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111117) + i3111111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i3111111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111118) + i3111111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i3111111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111119) + i3111111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i31111111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111110) + i31111111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i31111111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111) + i31111111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i31111111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111112) + i31111111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i31111111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111113) + i31111111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i31111111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111114) + i31111111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue12 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue12 >> 31) ^ (iIntValue12 << 1));
                                            int i31111111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111115) + i31111111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue12 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue12 << i29) ^ (jLongValue12 >> c2));
                                            int i31111111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111116) + i31111111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 12:
                                    i14 = i14;
                                    iJ3 = jk1.i(((Integer) key).intValue());
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i31111111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111117) + i31111111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i31111111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111118) + i31111111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i31111111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111119) + i31111111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i311111111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111110) + i311111111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i311111111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111) + i311111111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i311111111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111112) + i311111111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i311111111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111113) + i311111111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i311111111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111114) + i311111111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i311111111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111115) + i311111111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i311111111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111116) + i311111111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i311111111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111117) + i311111111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i311111111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111118) + i311111111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i311111111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111119) + i311111111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i3111111111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111110) + i3111111111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i3111111111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111) + i3111111111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i3111111111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111112) + i3111111111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue13 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue13 >> 31) ^ (iIntValue13 << 1));
                                            int i3111111111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111113) + i3111111111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue13 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue13 << i29) ^ (jLongValue13 >> c2));
                                            int i3111111111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111114) + i3111111111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 13:
                                    i14 = i14;
                                    iJ3 = jk1.j(((Integer) key).intValue());
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i3111111111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111115) + i3111111111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i3111111111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111116) + i3111111111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i3111111111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111117) + i3111111111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i3111111111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111118) + i3111111111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i3111111111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111119) + i3111111111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i31111111111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111110) + i31111111111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i31111111111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111) + i31111111111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i31111111111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111112) + i31111111111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i31111111111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111113) + i31111111111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i31111111111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111114) + i31111111111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i31111111111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111115) + i31111111111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i31111111111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111116) + i31111111111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i31111111111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111117) + i31111111111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i31111111111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111118) + i31111111111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i31111111111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111119) + i31111111111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i311111111111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111110) + i311111111111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue14 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue14 >> 31) ^ (iIntValue14 << 1));
                                            int i311111111111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111) + i311111111111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue14 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue14 << i29) ^ (jLongValue14 >> c2));
                                            int i311111111111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111112) + i311111111111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 14:
                                    ((Integer) key).getClass();
                                    iJ3 = 4;
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i311111111111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111113) + i311111111111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i311111111111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111114) + i311111111111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i311111111111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111115) + i311111111111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i311111111111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111116) + i311111111111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i311111111111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111117) + i311111111111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i311111111111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111118) + i311111111111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i311111111111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111119) + i311111111111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i3111111111111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111110) + i3111111111111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i3111111111111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111) + i3111111111111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i3111111111111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111112) + i3111111111111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i3111111111111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111113) + i3111111111111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i3111111111111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111114) + i3111111111111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i3111111111111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111115) + i3111111111111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i3111111111111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111116) + i3111111111111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i3111111111111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111117) + i3111111111111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i3111111111111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111118) + i3111111111111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue15 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue15 >> 31) ^ (iIntValue15 << 1));
                                            int i3111111111111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111119) + i3111111111111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue15 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue15 << i29) ^ (jLongValue15 >> c2));
                                            int i31111111111111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111110) + i31111111111111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 15:
                                    ((Long) key).getClass();
                                    iJ3 = 8;
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i31111111111111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111111) + i31111111111111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i31111111111111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111112) + i31111111111111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i31111111111111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111113) + i31111111111111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i31111111111111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111114) + i31111111111111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i31111111111111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111115) + i31111111111111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i31111111111111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111116) + i31111111111111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i31111111111111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111117) + i31111111111111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i31111111111111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111118) + i31111111111111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i31111111111111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111119) + i31111111111111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i311111111111111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111110) + i311111111111111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i311111111111111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111111) + i311111111111111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i311111111111111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111112) + i311111111111111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i311111111111111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111113) + i311111111111111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i311111111111111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111114) + i311111111111111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i311111111111111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111115) + i311111111111111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i311111111111111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111116) + i311111111111111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue16 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue16 >> 31) ^ (iIntValue16 << 1));
                                            int i311111111111111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111117) + i311111111111111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue16 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue16 << i29) ^ (jLongValue16 >> c2));
                                            int i311111111111111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111118) + i311111111111111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case Argon2.V10 /* 16 */:
                                    int iIntValue17 = ((Integer) key).intValue();
                                    iJ3 = jk1.i((iIntValue17 >> 31) ^ (iIntValue17 << 1));
                                    i14 = i14;
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i311111111111111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111119) + i311111111111111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i3111111111111111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111110) + i3111111111111111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i3111111111111111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111111) + i3111111111111111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i3111111111111111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111112) + i3111111111111111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i3111111111111111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111113) + i3111111111111111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i3111111111111111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111114) + i3111111111111111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i3111111111111111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111115) + i3111111111111111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i3111111111111111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111116) + i3111111111111111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i3111111111111111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111117) + i3111111111111111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i3111111111111111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111118) + i3111111111111111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i3111111111111111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111119) + i3111111111111111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i31111111111111111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111111110) + i31111111111111111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i31111111111111111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111111111) + i31111111111111111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i31111111111111111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111111112) + i31111111111111111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i31111111111111111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111111113) + i31111111111111111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i31111111111111111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111111114) + i31111111111111111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue18 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue18 >> 31) ^ (iIntValue18 << 1));
                                            int i31111111111111111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111111115) + i31111111111111111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue17 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue17 << i29) ^ (jLongValue17 >> c2));
                                            int i31111111111111111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111111116) + i31111111111111111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 17:
                                    long jLongValue18 = ((Long) key).longValue();
                                    iJ3 = jk1.j((jLongValue18 << i29) ^ (jLongValue18 >> c2));
                                    i14 = i14;
                                    i8 = iJ3 + iH19;
                                    gw8Var = (gw8) kaVar.b;
                                    iH11 = jk1.h(2);
                                    if (gw8Var == dw8Var) {
                                        iH11 *= 2;
                                    }
                                    switch (gw8Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iJ4 = 8;
                                            int i31111111111111111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111111117) + i31111111111111111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iJ4 = 4;
                                            int i31111111111111111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111111118) + i31111111111111111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 2:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i31111111111111111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i31111111111111111111111111111119) + i31111111111111111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 3:
                                            iJ4 = jk1.j(((Long) value).longValue());
                                            int i311111111111111111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111111110) + i311111111111111111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 4:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i311111111111111111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111111111) + i311111111111111111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i311111111111111111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111111112) + i311111111111111111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i311111111111111111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111111113) + i311111111111111111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iJ4 = i29;
                                            int i311111111111111111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111111114) + i311111111111111111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 8:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                                iJ4 = size4 + i9;
                                            } else {
                                                iJ4 = jk1.g((String) value);
                                            }
                                            int i311111111111111111111111111111115 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111111115) + i311111111111111111111111111111115 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case XmlPullParser.COMMENT /* 9 */:
                                            iJ4 = ((av3) ((s4) value)).a(null);
                                            int i311111111111111111111111111111116 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111111116) + i311111111111111111111111111111116 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 10:
                                            size4 = ((av3) ((s4) value)).a(null);
                                            i9 = jk1.i(size4);
                                            iJ4 = size4 + i9;
                                            int i311111111111111111111111111111117 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111111117) + i311111111111111111111111111111117 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                            if (value instanceof gy0) {
                                                size4 = ((gy0) value).size();
                                                i9 = jk1.i(size4);
                                            } else {
                                                size4 = ((byte[]) value).length;
                                                i9 = jk1.i(size4);
                                            }
                                            iJ4 = size4 + i9;
                                            int i311111111111111111111111111111118 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111111118) + i311111111111111111111111111111118 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 12:
                                            iJ4 = jk1.i(((Integer) value).intValue());
                                            int i311111111111111111111111111111119 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i311111111111111111111111111111119) + i311111111111111111111111111111119 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 13:
                                            iJ4 = jk1.j(((Integer) value).intValue());
                                            int i3111111111111111111111111111111110 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111111110) + i3111111111111111111111111111111110 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iJ4 = 4;
                                            int i3111111111111111111111111111111111 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111111111) + i3111111111111111111111111111111111 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iJ4 = 8;
                                            int i3111111111111111111111111111111112 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111111112) + i3111111111111111111111111111111112 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case Argon2.V10 /* 16 */:
                                            int iIntValue19 = ((Integer) value).intValue();
                                            iJ4 = jk1.i((iIntValue19 >> 31) ^ (iIntValue19 << 1));
                                            int i3111111111111111111111111111111113 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111111113) + i3111111111111111111111111111111113 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        case 17:
                                            long jLongValue19 = ((Long) value).longValue();
                                            iJ4 = jk1.j((jLongValue19 << i29) ^ (jLongValue19 >> c2));
                                            int i3111111111111111111111111111111114 = iJ4 + iH11 + i8;
                                            i6 += jk1.i(i3111111111111111111111111111111114) + i3111111111111111111111111111111114 + iH18;
                                            i14 = i14;
                                            c = c2;
                                            i18 = i29;
                                            i12 = i30;
                                            break;
                                        default:
                                            g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                default:
                                    g84.h("There is no way to get here, but the compiler thinks otherwise.");
                                    return 0;
                            }
                        }
                    }
                    i12 = i12;
                    i2 = i14;
                    iF2 += i6;
                    i14 = i2;
                    i12 = i12;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 51:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        iH12 = jk1.h(i15);
                        iH16 = iH12 + 8;
                        iF2 += iH16;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 52:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        iH13 = jk1.h(i15);
                        iH16 = iH13 + 4;
                        iF2 += iH16;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 53:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        long jZ = z(av3Var2, j);
                        iH14 = jk1.h(i15);
                        iJ5 = jk1.j(jZ);
                        i10 = iJ5 + iH14;
                        iF2 += i10;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 54:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        long jZ2 = z(av3Var2, j);
                        iH14 = jk1.h(i15);
                        iJ5 = jk1.j(jZ2);
                        i10 = iJ5 + iH14;
                        iF2 += i10;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 55:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        int iY = y(av3Var2, j);
                        iH15 = jk1.h(i15);
                        iJ6 = jk1.j(iY);
                        iH16 = iJ6 + iH15;
                        iF2 += iH16;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 56:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        iH12 = jk1.h(i15);
                        iH16 = iH12 + 8;
                        iF2 += iH16;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 57:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        iH13 = jk1.h(i15);
                        iH16 = iH13 + 4;
                        iF2 += iH16;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 58:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        iH16 = jk1.h(i15) + 1;
                        iF2 += iH16;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 59:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        Object object4 = unsafe.getObject(av3Var2, j);
                        iF2 = (object4 instanceof gy0 ? jk1.f(i15, (gy0) object4) : jk1.g((String) object4) + jk1.h(i15)) + iF2;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        Object object5 = unsafe.getObject(av3Var2, j);
                        k57 k57VarM4 = sd5Var.m(i13);
                        Class cls21 = u57.a;
                        int iH20 = jk1.h(i15);
                        int iA5 = ((s4) object5).a(k57VarM4);
                        i10 = jk1.i(iA5) + iA5 + iH20;
                        iF2 += i10;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 61:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        iH16 = jk1.f(i15, (gy0) unsafe.getObject(av3Var2, j));
                        iF2 += iH16;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 62:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        int iY2 = y(av3Var2, j);
                        iH15 = jk1.h(i15);
                        iJ6 = jk1.i(iY2);
                        iH16 = iJ6 + iH15;
                        iF2 += iH16;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 63:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        int iY3 = y(av3Var2, j);
                        iH15 = jk1.h(i15);
                        iJ6 = jk1.j(iY3);
                        iH16 = iJ6 + iH15;
                        iF2 += iH16;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 64:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        iH13 = jk1.h(i15);
                        iH16 = iH13 + 4;
                        iF2 += iH16;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 65:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        iH12 = jk1.h(i15);
                        iH16 = iH12 + 8;
                        iF2 += iH16;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 66:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        int iY4 = y(av3Var2, j);
                        iH15 = jk1.h(i15);
                        iJ6 = jk1.i((iY4 >> 31) ^ (iY4 << 1));
                        iH16 = iJ6 + iH15;
                        iF2 += iH16;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 67:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        long jZ3 = z(av3Var2, j);
                        iH14 = jk1.h(i15);
                        iJ5 = jk1.j((jZ3 << 1) ^ (jZ3 >> 63));
                        i10 = iJ5 + iH14;
                        iF2 += i10;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 68:
                    if (sd5Var.q(av3Var2, i15, i13)) {
                        iH16 = ((s4) unsafe.getObject(av3Var2, j)).a(sd5Var.m(i13)) + (jk1.h(i15) * 2);
                        iF2 += iH16;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                default:
                    i13 += 3;
                    i11 = 1048575;
                    break;
            }
        }
    }

    @Override // defpackage.k57
    public final av3 i() {
        this.j.getClass();
        return ((av3) this.e).i();
    }

    public final boolean j(av3 av3Var, av3 av3Var2, int i) {
        return n(i, av3Var) == n(i, av3Var2);
    }

    public final void k(int i, Object obj, Object obj2) {
        int i2 = this.a[i];
        if (ef8.c.h(obj, L(i) & 1048575) == null) {
            return;
        }
        l(i);
    }

    public final void l(int i) {
        if (this.b[((i / 3) * 2) + 1] == null) {
            return;
        }
        e6.d();
    }

    public final k57 m(int i) {
        int i2 = (i / 3) * 2;
        Object[] objArr = this.b;
        k57 k57Var = (k57) objArr[i2];
        if (k57Var != null) {
            return k57Var;
        }
        k57 k57VarA = s96.c.a((Class) objArr[i2 + 1]);
        objArr[i2] = k57VarA;
        return k57VarA;
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0110 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:70:0x0111 A[RETURN] */
    public final boolean n(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j = i2 & 1048575;
        if (j != 1048575) {
            if (((1 << (i2 >>> 20)) & ef8.c.f(obj, j)) != 0) {
                return true;
            }
            return false;
        }
        int iL = L(i);
        long j2 = iL & 1048575;
        switch (K(iL)) {
            case 0:
                if (Double.doubleToRawLongBits(ef8.c.d(obj, j2)) != 0) {
                    return true;
                }
                return false;
            case 1:
                if (Float.floatToRawIntBits(ef8.c.e(obj, j2)) != 0) {
                    return true;
                }
                return false;
            case 2:
                if (ef8.c.g(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 3:
                if (ef8.c.g(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 4:
                if (ef8.c.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 5:
                if (ef8.c.g(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 6:
                if (ef8.c.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 7:
                return ef8.c.c(obj, j2);
            case 8:
                Object objH = ef8.c.h(obj, j2);
                if (objH instanceof String) {
                    return !((String) objH).isEmpty();
                }
                if (objH instanceof gy0) {
                    return !gy0.c.equals(objH);
                }
                c6.b();
                return false;
            case XmlPullParser.COMMENT /* 9 */:
                if (ef8.c.h(obj, j2) != null) {
                    return true;
                }
                return false;
            case 10:
                return !gy0.c.equals(ef8.c.h(obj, j2));
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                if (ef8.c.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 12:
                if (ef8.c.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 13:
                if (ef8.c.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 14:
                if (ef8.c.g(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 15:
                if (ef8.c.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case Argon2.V10 /* 16 */:
                if (ef8.c.g(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 17:
                if (ef8.c.h(obj, j2) != null) {
                    return true;
                }
                return false;
            default:
                c6.b();
                return false;
        }
    }

    public final boolean o(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return n(i, obj);
        }
        return (i3 & i4) != 0;
    }

    public final boolean q(Object obj, int i, int i2) {
        return ef8.c.f(obj, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    public final void r(Object obj, int i, Object obj2, c13 c13Var, hk1 hk1Var) throws eg4 {
        long jL = L(i) & 1048575;
        Object objH = ef8.c.h(obj, jL);
        l65 l65Var = this.m;
        if (objH == null) {
            l65Var.getClass();
            objH = k65.b.b();
            ef8.o(obj, jL, objH);
        } else {
            l65Var.getClass();
            if (!((k65) objH).a) {
                k65 k65VarB = k65.b.b();
                l65.a(k65VarB, objH);
                ef8.o(obj, jL, k65VarB);
                objH = k65VarB;
            }
        }
        l65Var.getClass();
        k65 k65Var = (k65) objH;
        ka kaVar = ((h65) obj2).a;
        hk1Var.w(2);
        gk1 gk1Var = hk1Var.a;
        int iE = gk1Var.e(gk1Var.w());
        Object obj3 = kaVar.c;
        Object objI = "";
        Object objI2 = obj3;
        while (true) {
            try {
                int iA = hk1Var.a();
                if (iA == Integer.MAX_VALUE || gk1Var.c()) {
                    break;
                }
                if (iA == 1) {
                    objI = hk1Var.i((gw8) kaVar.a, null, null);
                } else if (iA != 2) {
                    try {
                        if (!hk1Var.x()) {
                            throw new fg4("Unable to parse map entry.");
                        }
                    } catch (eg4 unused) {
                        if (!hk1Var.x()) {
                            throw new fg4("Unable to parse map entry.");
                        }
                    }
                } else {
                    objI2 = hk1Var.i((gw8) kaVar.b, obj3.getClass(), c13Var);
                }
            } catch (Throwable th) {
                gk1Var.d(iE);
                throw th;
            }
        }
        k65Var.put(objI, objI2);
        gk1Var.d(iE);
    }

    public final void s(int i, Object obj, Object obj2) {
        if (n(i, obj2)) {
            long jL = L(i) & 1048575;
            Unsafe unsafe = o;
            Object object = unsafe.getObject(obj2, jL);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.a[i] + " is present but null: " + obj2);
            }
            k57 k57VarM = m(i);
            if (!n(i, obj)) {
                if (p(object)) {
                    av3 av3VarI = k57VarM.i();
                    k57VarM.b(av3VarI, object);
                    unsafe.putObject(obj, jL, av3VarI);
                } else {
                    unsafe.putObject(obj, jL, object);
                }
                G(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jL);
            if (!p(object2)) {
                av3 av3VarI2 = k57VarM.i();
                k57VarM.b(av3VarI2, object2);
                unsafe.putObject(obj, jL, av3VarI2);
                object2 = av3VarI2;
            }
            k57VarM.b(object2, object);
        }
    }

    public final void t(int i, Object obj, Object obj2) {
        int[] iArr = this.a;
        int i2 = iArr[i];
        if (q(obj2, i2, i)) {
            long jL = L(i) & 1048575;
            Unsafe unsafe = o;
            Object object = unsafe.getObject(obj2, jL);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2);
            }
            k57 k57VarM = m(i);
            if (!q(obj, i2, i)) {
                if (p(object)) {
                    av3 av3VarI = k57VarM.i();
                    k57VarM.b(av3VarI, object);
                    unsafe.putObject(obj, jL, av3VarI);
                } else {
                    unsafe.putObject(obj, jL, object);
                }
                H(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, jL);
            if (!p(object2)) {
                av3 av3VarI2 = k57VarM.i();
                k57VarM.b(av3VarI2, object2);
                unsafe.putObject(obj, jL, av3VarI2);
                object2 = av3VarI2;
            }
            k57VarM.b(object2, object);
        }
    }

    public final Object u(int i, Object obj) {
        k57 k57VarM = m(i);
        long jL = L(i) & 1048575;
        if (!n(i, obj)) {
            return k57VarM.i();
        }
        Object object = o.getObject(obj, jL);
        if (p(object)) {
            return object;
        }
        av3 av3VarI = k57VarM.i();
        if (object != null) {
            k57VarM.b(av3VarI, object);
        }
        return av3VarI;
    }

    public final Object v(Object obj, int i, int i2) {
        k57 k57VarM = m(i2);
        if (!q(obj, i, i2)) {
            return k57VarM.i();
        }
        Object object = o.getObject(obj, L(i2) & 1048575);
        if (p(object)) {
            return object;
        }
        av3 av3VarI = k57VarM.i();
        if (object != null) {
            k57VarM.b(av3VarI, object);
        }
        return av3VarI;
    }
}
