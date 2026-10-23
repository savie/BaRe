package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import com.nimbusds.jwt.proc.DefaultJWTClaimsVerifier;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.xmlpull.v1.XmlPullParser;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oj9 implements jk9 {
    public static final int[] k = new int[0];
    public static final Unsafe l = fm9.e();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final jf9 e;
    public final int[] f;
    public final int g;
    public final int h;
    public final li9 i;
    public final jl9 j;

    public oj9(int[] iArr, Object[] objArr, int i, int i2, jf9 jf9Var, int[] iArr2, int i3, int i4, li9 li9Var, jl9 jl9Var) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.f = iArr2;
        this.g = i3;
        this.h = i4;
        this.i = li9Var;
        this.j = jl9Var;
        this.e = jf9Var;
    }

    public static boolean k(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof ih9) {
            return ((ih9) obj).g();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:124:0x025b  */
    /* JADX WARN: Code duplicated, block: B:126:0x025f  */
    /* JADX WARN: Code duplicated, block: B:129:0x0277  */
    /* JADX WARN: Code duplicated, block: B:130:0x027a  */
    /* JADX WARN: Code duplicated, block: B:168:0x0325  */
    /* JADX WARN: Code duplicated, block: B:183:0x0374  */
    /* JADX WARN: Code duplicated, block: B:186:0x0380  */
    public static oj9 n(hk9 hk9Var, li9 li9Var, jl9 jl9Var) {
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
        int i18;
        int iObjectFieldOffset;
        int i19;
        int iObjectFieldOffset2;
        int i20;
        int iObjectFieldOffset3;
        int i21;
        Field fieldW;
        int i22;
        char cCharAt9;
        int i23;
        int i24;
        int i25;
        Object obj;
        Field fieldW2;
        int i26;
        Object obj2;
        Field fieldW3;
        int i27;
        char cCharAt10;
        int i28;
        char cCharAt11;
        int i29;
        char cCharAt12;
        int i30;
        char cCharAt13;
        if (!(hk9Var instanceof hk9)) {
            e6.d();
            return null;
        }
        int i31 = hk9Var.c;
        String str = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a";
        if ("\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(0) >= 55296) {
            int i32 = 1;
            while (true) {
                i = i32 + 1;
                if ("\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i32) < 55296) {
                    break;
                }
                i32 = i;
            }
        } else {
            i = 1;
        }
        int i33 = i + 1;
        int iCharAt2 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i);
        if (iCharAt2 >= 55296) {
            int i34 = iCharAt2 & 8191;
            int i35 = 13;
            while (true) {
                i30 = i33 + 1;
                cCharAt13 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i33);
                if (cCharAt13 < 55296) {
                    break;
                }
                i34 |= (cCharAt13 & 8191) << i35;
                i35 += 13;
                i33 = i30;
            }
            iCharAt2 = i34 | (cCharAt13 << i35);
            i33 = i30;
        }
        if (iCharAt2 == 0) {
            i4 = 0;
            i6 = 0;
            iCharAt = 0;
            i3 = 0;
            i5 = 0;
            i7 = 0;
            iArr = k;
            i2 = 0;
        } else {
            int i36 = i33 + 1;
            int iCharAt3 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i33);
            if (iCharAt3 >= 55296) {
                int i37 = iCharAt3 & 8191;
                int i38 = 13;
                while (true) {
                    i15 = i36 + 1;
                    cCharAt8 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i36);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i37 |= (cCharAt8 & 8191) << i38;
                    i38 += 13;
                    i36 = i15;
                }
                iCharAt3 = i37 | (cCharAt8 << i38);
                i36 = i15;
            }
            int i39 = i36 + 1;
            int iCharAt4 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i36);
            if (iCharAt4 >= 55296) {
                int i40 = iCharAt4 & 8191;
                int i41 = 13;
                while (true) {
                    i14 = i39 + 1;
                    cCharAt7 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i39);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i40 |= (cCharAt7 & 8191) << i41;
                    i41 += 13;
                    i39 = i14;
                }
                iCharAt4 = i40 | (cCharAt7 << i41);
                i39 = i14;
            }
            int i42 = i39 + 1;
            int iCharAt5 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i39);
            if (iCharAt5 >= 55296) {
                int i43 = iCharAt5 & 8191;
                int i44 = 13;
                while (true) {
                    i13 = i42 + 1;
                    cCharAt6 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i42);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i43 |= (cCharAt6 & 8191) << i44;
                    i44 += 13;
                    i42 = i13;
                }
                iCharAt5 = i43 | (cCharAt6 << i44);
                i42 = i13;
            }
            int i45 = i42 + 1;
            int iCharAt6 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i42);
            if (iCharAt6 >= 55296) {
                int i46 = iCharAt6 & 8191;
                int i47 = 13;
                while (true) {
                    i12 = i45 + 1;
                    cCharAt5 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i45);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt5 & 8191) << i47;
                    i47 += 13;
                    i45 = i12;
                }
                iCharAt6 = i46 | (cCharAt5 << i47);
                i45 = i12;
            }
            int i48 = i45 + 1;
            iCharAt = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i45);
            if (iCharAt >= 55296) {
                int i49 = iCharAt & 8191;
                int i50 = 13;
                while (true) {
                    i11 = i48 + 1;
                    cCharAt4 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i48);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt4 & 8191) << i50;
                    i50 += 13;
                    i48 = i11;
                }
                iCharAt = i49 | (cCharAt4 << i50);
                i48 = i11;
            }
            int i51 = i48 + 1;
            int iCharAt7 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i48);
            if (iCharAt7 >= 55296) {
                int i52 = iCharAt7 & 8191;
                int i53 = 13;
                while (true) {
                    i10 = i51 + 1;
                    cCharAt3 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i51);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i52 |= (cCharAt3 & 8191) << i53;
                    i53 += 13;
                    i51 = i10;
                }
                iCharAt7 = i52 | (cCharAt3 << i53);
                i51 = i10;
            }
            int i54 = i51 + 1;
            int iCharAt8 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i51);
            if (iCharAt8 >= 55296) {
                int i55 = iCharAt8 & 8191;
                int i56 = 13;
                while (true) {
                    i9 = i54 + 1;
                    cCharAt2 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i54);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i55 |= (cCharAt2 & 8191) << i56;
                    i56 += 13;
                    i54 = i9;
                }
                iCharAt8 = i55 | (cCharAt2 << i56);
                i54 = i9;
            }
            int i57 = i54 + 1;
            int iCharAt9 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i54);
            if (iCharAt9 >= 55296) {
                int i58 = iCharAt9 & 8191;
                int i59 = 13;
                while (true) {
                    i8 = i57 + 1;
                    cCharAt = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i57);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i58 |= (cCharAt & 8191) << i59;
                    i59 += 13;
                    i57 = i8;
                }
                iCharAt9 = i58 | (cCharAt << i59);
                i57 = i8;
            }
            int i60 = iCharAt3 + iCharAt3 + iCharAt4;
            i2 = iCharAt3;
            i33 = i57;
            iArr = new int[iCharAt9 + iCharAt7 + iCharAt8];
            int i61 = iCharAt7;
            i3 = iCharAt5;
            i4 = i61;
            i5 = iCharAt6;
            i6 = i60;
            i7 = iCharAt9;
        }
        Unsafe unsafe = l;
        Object[] objArr = hk9Var.b;
        Class<?> cls = hk9Var.a.getClass();
        int i62 = i7 + i4;
        int i63 = iCharAt + iCharAt;
        int[] iArr2 = new int[iCharAt * 3];
        Object[] objArr2 = new Object[i63];
        int i64 = i62;
        int i65 = i7;
        int i66 = 0;
        int i67 = 0;
        while (i33 < 12) {
            int i68 = i33 + 1;
            int iCharAt10 = str.charAt(i33);
            if (iCharAt10 >= 55296) {
                int i69 = iCharAt10 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i29 = i70 + 1;
                    cCharAt12 = str.charAt(i70);
                    i16 = i31;
                    if (cCharAt12 < 55296) {
                        break;
                    }
                    i69 |= (cCharAt12 & 8191) << i71;
                    i71 += 13;
                    i70 = i29;
                    i31 = i16;
                }
                iCharAt10 = i69 | (cCharAt12 << i71);
                i17 = i29;
            } else {
                i16 = i31;
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
                    i28 = i72 + 1;
                    cCharAt11 = str.charAt(i72);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i73 |= (cCharAt11 & 8191) << i74;
                    i74 += 13;
                    i72 = i28;
                    c = 55296;
                }
                iCharAt11 = i73 | (cCharAt11 << i74);
                i72 = i28;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i66] = i67;
                i66++;
            }
            int i75 = iCharAt11 & 255;
            int i76 = iCharAt10;
            int i77 = i2;
            if (i75 >= 51) {
                int i78 = i72 + 1;
                int iCharAt12 = str.charAt(i72);
                char c2 = 55296;
                if (iCharAt12 >= 55296) {
                    int i79 = iCharAt12 & 8191;
                    int i80 = 13;
                    while (true) {
                        i27 = i78 + 1;
                        cCharAt10 = str.charAt(i78);
                        if (cCharAt10 < c2) {
                            break;
                        }
                        i79 |= (cCharAt10 & 8191) << i80;
                        i80 += 13;
                        i78 = i27;
                        c2 = 55296;
                    }
                    iCharAt12 = i79 | (cCharAt10 << i80);
                    i78 = i27;
                }
                int i81 = i75 - 51;
                int i82 = i78;
                if (i81 == 9 || i81 == 17) {
                    int i83 = i67 / 3;
                    i24 = i6 + 1;
                    objArr2[i83 + i83 + 1] = objArr3[i6];
                } else {
                    if (i81 == 12 && ((i16 & 1) != 0 || (iCharAt11 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0)) {
                        int i84 = i67 / 3;
                        i24 = i6 + 1;
                        objArr2[i84 + i84 + 1] = objArr3[i6];
                    }
                    i25 = iCharAt12 + iCharAt12;
                    obj = objArr3[i25];
                    if (obj instanceof Field) {
                        fieldW2 = (Field) obj;
                    } else {
                        fieldW2 = w(cls, (String) obj);
                        objArr3[i25] = fieldW2;
                    }
                    int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldW2);
                    i26 = i25 + 1;
                    obj2 = objArr3[i26];
                    if (obj2 instanceof Field) {
                        fieldW3 = (Field) obj2;
                    } else {
                        fieldW3 = w(cls, (String) obj2);
                        objArr3[i26] = fieldW3;
                    }
                    str = str;
                    iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldW3);
                    i18 = i6;
                    i21 = iObjectFieldOffset4;
                    i20 = 0;
                    objArr2 = objArr2;
                    i19 = i82;
                }
                i6 = i24;
                i25 = iCharAt12 + iCharAt12;
                obj = objArr3[i25];
                if (obj instanceof Field) {
                    fieldW2 = (Field) obj;
                } else {
                    fieldW2 = w(cls, (String) obj);
                    objArr3[i25] = fieldW2;
                }
                int iObjectFieldOffset5 = (int) unsafe.objectFieldOffset(fieldW2);
                i26 = i25 + 1;
                obj2 = objArr3[i26];
                if (obj2 instanceof Field) {
                    fieldW3 = (Field) obj2;
                } else {
                    fieldW3 = w(cls, (String) obj2);
                    objArr3[i26] = fieldW3;
                }
                str = str;
                iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldW3);
                i18 = i6;
                i21 = iObjectFieldOffset5;
                i20 = 0;
                objArr2 = objArr2;
                i19 = i82;
            } else {
                int i85 = i6 + 1;
                Field fieldW4 = w(cls, (String) objArr3[i6]);
                if (i75 == 9 || i75 == 17) {
                    int i86 = i67 / 3;
                    objArr2[i86 + i86 + 1] = fieldW4.getType();
                } else {
                    if (i75 == 27 || i75 == 49) {
                        int i87 = i67 / 3;
                        i23 = i6 + 2;
                        objArr2[i87 + i87 + 1] = objArr3[i85];
                    } else if (i75 == 12 || i75 == 30 || i75 == 44) {
                        if ((i16 & 1) != 0 || (iCharAt11 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
                            int i88 = i67 / 3;
                            i23 = i6 + 2;
                            objArr2[i88 + i88 + 1] = objArr3[i85];
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldW4);
                        if ((iCharAt11 & 4096) != 0 || i75 > 17) {
                            i19 = i72;
                            iObjectFieldOffset2 = 1048575;
                            i20 = 0;
                        } else {
                            i19 = i72 + 1;
                            int iCharAt13 = str.charAt(i72);
                            if (iCharAt13 >= 55296) {
                                int i89 = iCharAt13 & 8191;
                                int i90 = 13;
                                while (true) {
                                    i22 = i19 + 1;
                                    cCharAt9 = str.charAt(i19);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i89 |= (cCharAt9 & 8191) << i90;
                                    i90 += 13;
                                    i19 = i22;
                                }
                                iCharAt13 = i89 | (cCharAt9 << i90);
                                i19 = i22;
                            }
                            int i91 = (iCharAt13 / 32) + i77 + i77;
                            Object obj3 = objArr3[i91];
                            if (obj3 instanceof Field) {
                                fieldW = (Field) obj3;
                            } else {
                                fieldW = w(cls, (String) obj3);
                                objArr3[i91] = fieldW;
                            }
                            int i92 = iCharAt13;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldW);
                            i20 = i92 % 32;
                        }
                        if (i75 >= 18 && i75 <= 49) {
                            iArr[i64] = iObjectFieldOffset;
                            i64++;
                        }
                        iObjectFieldOffset3 = iObjectFieldOffset2;
                        i21 = iObjectFieldOffset;
                    } else {
                        if (i75 == 50) {
                            int i93 = i65 + 1;
                            iArr[i65] = i67;
                            int i94 = i67 / 3;
                            int i95 = i6 + 2;
                            int i96 = i94 + i94;
                            objArr2[i96] = objArr3[i85];
                            if ((iCharAt11 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
                                i18 = i6 + 3;
                                objArr2[i96 + 1] = objArr3[i95];
                            } else {
                                i18 = i95;
                            }
                            i65 = i93;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldW4);
                        if ((iCharAt11 & 4096) != 0) {
                            i19 = i72;
                            iObjectFieldOffset2 = 1048575;
                            i20 = 0;
                        } else {
                            i19 = i72;
                            iObjectFieldOffset2 = 1048575;
                            i20 = 0;
                        }
                        if (i75 >= 18) {
                            iArr[i64] = iObjectFieldOffset;
                            i64++;
                        }
                        iObjectFieldOffset3 = iObjectFieldOffset2;
                        i21 = iObjectFieldOffset;
                    }
                    i18 = i23;
                    objArr2 = objArr2;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldW4);
                    if ((iCharAt11 & 4096) != 0) {
                        i19 = i72;
                        iObjectFieldOffset2 = 1048575;
                        i20 = 0;
                    } else {
                        i19 = i72;
                        iObjectFieldOffset2 = 1048575;
                        i20 = 0;
                    }
                    if (i75 >= 18) {
                        iArr[i64] = iObjectFieldOffset;
                        i64++;
                    }
                    iObjectFieldOffset3 = iObjectFieldOffset2;
                    i21 = iObjectFieldOffset;
                }
                objArr2 = objArr2;
                i18 = i85;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldW4);
                if ((iCharAt11 & 4096) != 0) {
                    i19 = i72;
                    iObjectFieldOffset2 = 1048575;
                    i20 = 0;
                } else {
                    i19 = i72;
                    iObjectFieldOffset2 = 1048575;
                    i20 = 0;
                }
                if (i75 >= 18) {
                    iArr[i64] = iObjectFieldOffset;
                    i64++;
                }
                iObjectFieldOffset3 = iObjectFieldOffset2;
                i21 = iObjectFieldOffset;
            }
            int i97 = i67 + 1;
            iArr2[i67] = i76;
            int i98 = i67 + 2;
            int i99 = iObjectFieldOffset3;
            iArr2[i97] = ((iCharAt11 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | (i75 << 20) | i21;
            i67 += 3;
            iArr2[i98] = (i20 << 20) | i99;
            i33 = i19;
            objArr2 = objArr2;
            objArr = objArr3;
            i31 = i16;
            i2 = i77;
            i6 = i18;
            str = str;
        }
        return new oj9(iArr2, objArr2, i3, i5, hk9Var.a, iArr, i7, i62, li9Var, jl9Var);
    }

    public static int o(ih9 ih9Var, long j) {
        return ((Integer) fm9.d(ih9Var, j)).intValue();
    }

    public static int q(int i) {
        return (i >>> 20) & 255;
    }

    public static Field w(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
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
            throw new RuntimeException(sbP.toString());
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0068  */
    /* JADX WARN: Code duplicated, block: B:27:0x006e  */
    /* JADX WARN: Code duplicated, block: B:40:0x007b A[SYNTHETIC] */
    @Override // defpackage.jk9
    public final void a(Object obj) {
        if (k(obj)) {
            if (obj instanceof ih9) {
                ih9 ih9Var = (ih9) obj;
                ih9Var.f();
                ih9Var.zza = 0;
                ih9Var.d();
            }
            int[] iArr = this.a;
            int length = iArr.length;
            for (int i = 0; i < length; i += 3) {
                int iR = r(i);
                int i2 = 1048575 & iR;
                int iQ = q(iR);
                long j = i2;
                if (iQ != 9) {
                    if (iQ != 60 && iQ != 68) {
                        switch (iQ) {
                            case 17:
                                if (j(i, obj)) {
                                    t(i).a(l.getObject(obj, j));
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
                                this.i.a(obj, j);
                                break;
                            case 50:
                                Unsafe unsafe = l;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((si9) object).a = false;
                                    unsafe.putObject(obj, j, object);
                                }
                                break;
                        }
                    } else if (l(obj, iArr[i], i)) {
                        t(i).a(l.getObject(obj, j));
                    }
                } else if (j(i, obj)) {
                    t(i).a(l.getObject(obj, j));
                }
            }
            this.j.getClass();
            il9 il9Var = ((ih9) obj).zzc;
            if (il9Var.d) {
                il9Var.d = false;
            }
        }
    }

    @Override // defpackage.jk9
    public final boolean b(ih9 ih9Var, ih9 ih9Var2) {
        boolean zB;
        int[] iArr = this.a;
        int length = iArr.length;
        for (int i = 0; i < length; i += 3) {
            int iR = r(i);
            long j = iR & 1048575;
            switch (q(iR)) {
                case 0:
                    if (i(ih9Var, ih9Var2, i)) {
                        cm9 cm9Var = fm9.c;
                        if (Double.doubleToLongBits(cm9Var.a(ih9Var, j)) == Double.doubleToLongBits(cm9Var.a(ih9Var2, j))) {
                            continue;
                            break;
                        }
                    }
                case 1:
                    if (i(ih9Var, ih9Var2, i)) {
                        cm9 cm9Var2 = fm9.c;
                        if (Float.floatToIntBits(cm9Var2.b(ih9Var, j)) == Float.floatToIntBits(cm9Var2.b(ih9Var2, j))) {
                            continue;
                            break;
                        }
                    }
                case 2:
                    if (i(ih9Var, ih9Var2, i) && fm9.b(ih9Var, j) == fm9.b(ih9Var2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 3:
                    if (i(ih9Var, ih9Var2, i) && fm9.b(ih9Var, j) == fm9.b(ih9Var2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 4:
                    if (i(ih9Var, ih9Var2, i) && fm9.a(ih9Var, j) == fm9.a(ih9Var2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 5:
                    if (i(ih9Var, ih9Var2, i) && fm9.b(ih9Var, j) == fm9.b(ih9Var2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 6:
                    if (i(ih9Var, ih9Var2, i) && fm9.a(ih9Var, j) == fm9.a(ih9Var2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 7:
                    if (i(ih9Var, ih9Var2, i)) {
                        cm9 cm9Var3 = fm9.c;
                        if (cm9Var3.i(ih9Var, j) == cm9Var3.i(ih9Var2, j)) {
                            continue;
                            break;
                        }
                    }
                case 8:
                    if (i(ih9Var, ih9Var2, i) && nk9.b(fm9.d(ih9Var, j), fm9.d(ih9Var2, j))) {
                        continue;
                        break;
                    }
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    if (i(ih9Var, ih9Var2, i) && nk9.b(fm9.d(ih9Var, j), fm9.d(ih9Var2, j))) {
                        continue;
                        break;
                    }
                    break;
                case 10:
                    if (i(ih9Var, ih9Var2, i) && nk9.b(fm9.d(ih9Var, j), fm9.d(ih9Var2, j))) {
                        continue;
                        break;
                    }
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    if (i(ih9Var, ih9Var2, i) && fm9.a(ih9Var, j) == fm9.a(ih9Var2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 12:
                    if (i(ih9Var, ih9Var2, i) && fm9.a(ih9Var, j) == fm9.a(ih9Var2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 13:
                    if (i(ih9Var, ih9Var2, i) && fm9.a(ih9Var, j) == fm9.a(ih9Var2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 14:
                    if (i(ih9Var, ih9Var2, i) && fm9.b(ih9Var, j) == fm9.b(ih9Var2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 15:
                    if (i(ih9Var, ih9Var2, i) && fm9.a(ih9Var, j) == fm9.a(ih9Var2, j)) {
                        continue;
                        break;
                    }
                    break;
                case Argon2.V10 /* 16 */:
                    if (i(ih9Var, ih9Var2, i) && fm9.b(ih9Var, j) == fm9.b(ih9Var2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 17:
                    if (i(ih9Var, ih9Var2, i) && nk9.b(fm9.d(ih9Var, j), fm9.d(ih9Var2, j))) {
                        continue;
                        break;
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
                    zB = nk9.b(fm9.d(ih9Var, j), fm9.d(ih9Var2, j));
                    break;
                case 50:
                    zB = nk9.b(fm9.d(ih9Var, j), fm9.d(ih9Var2, j));
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
                    if (fm9.a(ih9Var, j2) == fm9.a(ih9Var2, j2) && nk9.b(fm9.d(ih9Var, j), fm9.d(ih9Var2, j))) {
                        continue;
                        break;
                    }
                    break;
                default:
                    continue;
                    break;
            }
            if (zB) {
            }
        }
        this.j.getClass();
        return ih9Var.zzc.equals(ih9Var2.zzc);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:9:0x0022  */
    @Override // defpackage.jk9
    public final void c(Object obj, Object obj2) {
        Object obj3;
        if (!k(obj)) {
            c6.f("Mutating immutable message: ".concat(String.valueOf(obj)));
            return;
        }
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                nk9.a(this.j, obj, obj2);
                return;
            }
            int iR = r(i);
            int i2 = iArr[i];
            long j = iR & 1048575;
            switch (q(iR)) {
                case 0:
                    if (!j(i, obj2)) {
                        obj3 = obj;
                    } else {
                        cm9 cm9Var = fm9.c;
                        obj3 = obj;
                        cm9Var.e(obj3, j, cm9Var.a(obj2, j));
                        z(i, obj3);
                    }
                    break;
                case 1:
                    if (j(i, obj2)) {
                        cm9 cm9Var2 = fm9.c;
                        cm9Var2.g(obj, j, cm9Var2.b(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 2:
                    if (j(i, obj2)) {
                        fm9.i(obj, j, fm9.b(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 3:
                    if (j(i, obj2)) {
                        fm9.i(obj, j, fm9.b(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 4:
                    if (j(i, obj2)) {
                        fm9.h(obj, j, fm9.a(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 5:
                    if (j(i, obj2)) {
                        fm9.i(obj, j, fm9.b(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 6:
                    if (j(i, obj2)) {
                        fm9.h(obj, j, fm9.a(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 7:
                    if (j(i, obj2)) {
                        cm9 cm9Var3 = fm9.c;
                        cm9Var3.c(obj, j, cm9Var3.i(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 8:
                    if (j(i, obj2)) {
                        fm9.j(obj, j, fm9.d(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    x(i, obj, obj2);
                    obj3 = obj;
                    break;
                case 10:
                    if (j(i, obj2)) {
                        fm9.j(obj, j, fm9.d(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    if (j(i, obj2)) {
                        fm9.h(obj, j, fm9.a(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 12:
                    if (j(i, obj2)) {
                        fm9.h(obj, j, fm9.a(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 13:
                    if (j(i, obj2)) {
                        fm9.h(obj, j, fm9.a(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 14:
                    if (j(i, obj2)) {
                        fm9.i(obj, j, fm9.b(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 15:
                    if (j(i, obj2)) {
                        fm9.h(obj, j, fm9.a(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case Argon2.V10 /* 16 */:
                    if (j(i, obj2)) {
                        fm9.i(obj, j, fm9.b(obj2, j));
                        z(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 17:
                    x(i, obj, obj2);
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
                    this.i.b(obj, j, obj2);
                    obj3 = obj;
                    break;
                case 50:
                    Class cls = nk9.a;
                    fm9.j(obj, j, ui9.a(fm9.d(obj, j), fm9.d(obj2, j)));
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
                    if (l(obj2, i2, i)) {
                        fm9.j(obj, j, fm9.d(obj2, j));
                        fm9.h(obj, iArr[i + 2] & 1048575, i2);
                    }
                    obj3 = obj;
                    break;
                case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                    y(i, obj, obj2);
                    obj3 = obj;
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (l(obj2, i2, i)) {
                        fm9.j(obj, j, fm9.d(obj2, j));
                        fm9.h(obj, iArr[i + 2] & 1048575, i2);
                    }
                    obj3 = obj;
                    break;
                case 68:
                    y(i, obj, obj2);
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

    @Override // defpackage.jk9
    public final void d(Object obj, byte[] bArr, int i, int i2, of9 of9Var) throws xh9 {
        m(obj, bArr, i, i2, 0, of9Var);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00e8 A[PHI: r3
      0x00e8: PHI (r3v32 int) = (r3v10 int), (r3v33 int) binds: [B:84:0x0207, B:42:0x00e6] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.jk9
    public final int e(ih9 ih9Var) {
        int i;
        long jDoubleToLongBits;
        int i2;
        int iFloatToIntBits;
        int i3;
        int[] iArr = this.a;
        int length = iArr.length;
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5 += 3) {
            int iR = r(i5);
            int i6 = iArr[i5];
            long j = 1048575 & iR;
            int i7 = 1237;
            int iHashCode = 37;
            switch (q(iR)) {
                case 0:
                    i = i4 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(fm9.c.a(ih9Var, j));
                    Charset charset = vh9.a;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 1:
                    i2 = i4 * 53;
                    iFloatToIntBits = Float.floatToIntBits(fm9.c.b(ih9Var, j));
                    i4 = iFloatToIntBits + i2;
                    break;
                case 2:
                    i = i4 * 53;
                    jDoubleToLongBits = fm9.b(ih9Var, j);
                    Charset charset2 = vh9.a;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 3:
                    i = i4 * 53;
                    jDoubleToLongBits = fm9.b(ih9Var, j);
                    Charset charset3 = vh9.a;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 4:
                    i2 = i4 * 53;
                    iFloatToIntBits = fm9.a(ih9Var, j);
                    i4 = iFloatToIntBits + i2;
                    break;
                case 5:
                    i = i4 * 53;
                    jDoubleToLongBits = fm9.b(ih9Var, j);
                    Charset charset4 = vh9.a;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 6:
                    i2 = i4 * 53;
                    iFloatToIntBits = fm9.a(ih9Var, j);
                    i4 = iFloatToIntBits + i2;
                    break;
                case 7:
                    i3 = i4 * 53;
                    boolean zI = fm9.c.i(ih9Var, j);
                    Charset charset5 = vh9.a;
                    if (zI) {
                        i7 = 1231;
                    }
                    i4 = i7 + i3;
                    break;
                case 8:
                    i2 = i4 * 53;
                    iFloatToIntBits = ((String) fm9.d(ih9Var, j)).hashCode();
                    i4 = iFloatToIntBits + i2;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    Object objD = fm9.d(ih9Var, j);
                    if (objD != null) {
                        iHashCode = objD.hashCode();
                    }
                    i4 = (i4 * 53) + iHashCode;
                    break;
                case 10:
                    i2 = i4 * 53;
                    iFloatToIntBits = fm9.d(ih9Var, j).hashCode();
                    i4 = iFloatToIntBits + i2;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    i2 = i4 * 53;
                    iFloatToIntBits = fm9.a(ih9Var, j);
                    i4 = iFloatToIntBits + i2;
                    break;
                case 12:
                    i2 = i4 * 53;
                    iFloatToIntBits = fm9.a(ih9Var, j);
                    i4 = iFloatToIntBits + i2;
                    break;
                case 13:
                    i2 = i4 * 53;
                    iFloatToIntBits = fm9.a(ih9Var, j);
                    i4 = iFloatToIntBits + i2;
                    break;
                case 14:
                    i = i4 * 53;
                    jDoubleToLongBits = fm9.b(ih9Var, j);
                    Charset charset6 = vh9.a;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 15:
                    i2 = i4 * 53;
                    iFloatToIntBits = fm9.a(ih9Var, j);
                    i4 = iFloatToIntBits + i2;
                    break;
                case Argon2.V10 /* 16 */:
                    i = i4 * 53;
                    jDoubleToLongBits = fm9.b(ih9Var, j);
                    Charset charset7 = vh9.a;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 17:
                    Object objD2 = fm9.d(ih9Var, j);
                    if (objD2 != null) {
                        iHashCode = objD2.hashCode();
                    }
                    i4 = (i4 * 53) + iHashCode;
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
                    i2 = i4 * 53;
                    iFloatToIntBits = fm9.d(ih9Var, j).hashCode();
                    i4 = iFloatToIntBits + i2;
                    break;
                case 50:
                    i2 = i4 * 53;
                    iFloatToIntBits = fm9.d(ih9Var, j).hashCode();
                    i4 = iFloatToIntBits + i2;
                    break;
                case 51:
                    if (l(ih9Var, i6, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(((Double) fm9.d(ih9Var, j)).doubleValue());
                        Charset charset8 = vh9.a;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 52:
                    if (l(ih9Var, i6, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = Float.floatToIntBits(((Float) fm9.d(ih9Var, j)).floatValue());
                        i4 = iFloatToIntBits + i2;
                    }
                    break;
                case 53:
                    if (l(ih9Var, i6, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = ((Long) fm9.d(ih9Var, j)).longValue();
                        Charset charset9 = vh9.a;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 54:
                    if (l(ih9Var, i6, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = ((Long) fm9.d(ih9Var, j)).longValue();
                        Charset charset10 = vh9.a;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 55:
                    if (l(ih9Var, i6, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = o(ih9Var, j);
                        i4 = iFloatToIntBits + i2;
                    }
                    break;
                case 56:
                    if (l(ih9Var, i6, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = ((Long) fm9.d(ih9Var, j)).longValue();
                        Charset charset11 = vh9.a;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 57:
                    if (l(ih9Var, i6, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = o(ih9Var, j);
                        i4 = iFloatToIntBits + i2;
                    }
                    break;
                case 58:
                    if (l(ih9Var, i6, i5)) {
                        i3 = i4 * 53;
                        boolean zBooleanValue = ((Boolean) fm9.d(ih9Var, j)).booleanValue();
                        Charset charset12 = vh9.a;
                        if (zBooleanValue) {
                            i7 = 1231;
                        }
                        i4 = i7 + i3;
                    }
                    break;
                case 59:
                    if (l(ih9Var, i6, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = ((String) fm9.d(ih9Var, j)).hashCode();
                        i4 = iFloatToIntBits + i2;
                    }
                    break;
                case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                    if (l(ih9Var, i6, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = fm9.d(ih9Var, j).hashCode();
                        i4 = iFloatToIntBits + i2;
                    }
                    break;
                case 61:
                    if (l(ih9Var, i6, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = fm9.d(ih9Var, j).hashCode();
                        i4 = iFloatToIntBits + i2;
                    }
                    break;
                case 62:
                    if (l(ih9Var, i6, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = o(ih9Var, j);
                        i4 = iFloatToIntBits + i2;
                    }
                    break;
                case 63:
                    if (l(ih9Var, i6, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = o(ih9Var, j);
                        i4 = iFloatToIntBits + i2;
                    }
                    break;
                case 64:
                    if (l(ih9Var, i6, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = o(ih9Var, j);
                        i4 = iFloatToIntBits + i2;
                    }
                    break;
                case 65:
                    if (l(ih9Var, i6, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = ((Long) fm9.d(ih9Var, j)).longValue();
                        Charset charset13 = vh9.a;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 66:
                    if (l(ih9Var, i6, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = o(ih9Var, j);
                        i4 = iFloatToIntBits + i2;
                    }
                    break;
                case 67:
                    if (l(ih9Var, i6, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = ((Long) fm9.d(ih9Var, j)).longValue();
                        Charset charset14 = vh9.a;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 68:
                    if (l(ih9Var, i6, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = fm9.d(ih9Var, j).hashCode();
                        i4 = iFloatToIntBits + i2;
                    }
                    break;
            }
        }
        this.j.getClass();
        return ih9Var.zzc.hashCode() + (i4 * 53);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0043  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:58:0x00cd  */
    @Override // defpackage.jk9
    public final boolean f(Object obj) {
        int iQ;
        int i = 0;
        int i2 = 0;
        int i3 = 1048575;
        while (true) {
            boolean zJ = true;
            if (i >= this.g) {
                return true;
            }
            int i4 = this.f[i];
            int[] iArr = this.a;
            int i5 = iArr[i4];
            int iR = r(i4);
            int i6 = iArr[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i3) {
                if (i7 != 1048575) {
                    i2 = l.getInt(obj, i7);
                }
                i3 = i7;
            }
            if ((268435456 & iR) == 0) {
                iQ = q(iR);
                if (iQ != 9 || iQ == 17) {
                    if (i3 == 1048575) {
                        zJ = j(i4, obj);
                    } else if ((i8 & i2) == 0) {
                        zJ = false;
                    }
                    if (!zJ || t(i4).f(fm9.d(obj, iR & 1048575))) {
                        i++;
                    }
                } else {
                    if (iQ != 27) {
                        if (iQ == 60 || iQ == 68) {
                            if (!l(obj, i5, i4) || t(i4).f(fm9.d(obj, iR & 1048575))) {
                            }
                        } else if (iQ != 49) {
                            if (iQ == 50 && !((si9) fm9.d(obj, iR & 1048575)).isEmpty()) {
                                int i9 = i4 / 3;
                                throw eq3.g(this.b[i9 + i9]);
                            }
                        }
                        i++;
                    }
                    List list = (List) fm9.d(obj, iR & 1048575);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        jk9 jk9VarT = t(i4);
                        for (int i10 = 0; i10 < list.size(); i10++) {
                            if (jk9VarT.f(list.get(i10))) {
                            }
                        }
                    }
                    i++;
                }
            } else {
                if (i3 == 1048575 ? j(i4, obj) : (i2 & i8) != 0) {
                    iQ = q(iR);
                    if (iQ != 9) {
                    }
                    if (i3 == 1048575) {
                        zJ = j(i4, obj);
                    } else if ((i8 & i2) == 0) {
                        zJ = false;
                    }
                    if (!zJ) {
                        continue;
                    }
                    i++;
                }
            }
            return false;
        }
    }

    public final void g(int i, Object obj, Object obj2) {
        l.putObject(obj, r(i) & 1048575, obj2);
        z(i, obj);
    }

    public final void h(Object obj, int i, int i2, Object obj2) {
        l.putObject(obj, r(i2) & 1048575, obj2);
        fm9.h(obj, this.a[i2 + 2] & 1048575, i);
    }

    public final boolean i(ih9 ih9Var, ih9 ih9Var2, int i) {
        return j(i, ih9Var) == j(i, ih9Var2);
    }

    /* JADX WARN: Code duplicated, block: B:72:0x00f5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f6 A[RETURN] */
    public final boolean j(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j = i2 & 1048575;
        if (j != 1048575) {
            if (((1 << (i2 >>> 20)) & fm9.a(obj, j)) != 0) {
                return true;
            }
            return false;
        }
        int iR = r(i);
        long j2 = iR & 1048575;
        switch (q(iR)) {
            case 0:
                if (Double.doubleToRawLongBits(fm9.c.a(obj, j2)) != 0) {
                    return true;
                }
                return false;
            case 1:
                if (Float.floatToRawIntBits(fm9.c.b(obj, j2)) != 0) {
                    return true;
                }
                return false;
            case 2:
                if (fm9.b(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 3:
                if (fm9.b(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 4:
                if (fm9.a(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 5:
                if (fm9.b(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 6:
                if (fm9.a(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 7:
                return fm9.c.i(obj, j2);
            case 8:
                Object objD = fm9.d(obj, j2);
                if (objD instanceof String) {
                    if (((String) objD).isEmpty()) {
                        return false;
                    }
                    return true;
                }
                if (!(objD instanceof hg9)) {
                    c6.b();
                    return false;
                }
                if (hg9.c.equals(objD)) {
                    return false;
                }
                return true;
            case XmlPullParser.COMMENT /* 9 */:
                if (fm9.d(obj, j2) != null) {
                    return true;
                }
                return false;
            case 10:
                if (hg9.c.equals(fm9.d(obj, j2))) {
                    return false;
                }
                return true;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                if (fm9.a(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 12:
                if (fm9.a(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 13:
                if (fm9.a(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 14:
                if (fm9.b(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 15:
                if (fm9.a(obj, j2) != 0) {
                    return true;
                }
                return false;
            case Argon2.V10 /* 16 */:
                if (fm9.b(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 17:
                if (fm9.d(obj, j2) != null) {
                    return true;
                }
                return false;
            default:
                c6.b();
                return false;
        }
    }

    public final boolean l(Object obj, int i, int i2) {
        return fm9.a(obj, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x029f  */
    /* JADX WARN: Code duplicated, block: B:107:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:109:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:111:0x02bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:112:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:113:0x02c2 A[PHI: r3
      0x02c2: PHI (r3v64 byte) = (r3v43 byte), (r3v73 byte) binds: [B:110:0x02bd, B:112:0x02c1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:115:0x02c6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:116:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:117:0x02c9 A[PHI: r3
      0x02c9: PHI (r3v65 byte) = (r3v64 byte), (r3v72 byte) binds: [B:114:0x02c4, B:116:0x02c8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:119:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:126:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:128:0x0308  */
    /* JADX WARN: Code duplicated, block: B:130:0x0312  */
    /* JADX WARN: Code duplicated, block: B:144:0x0383  */
    /* JADX WARN: Code duplicated, block: B:146:0x038d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:147:0x038f  */
    /* JADX WARN: Code duplicated, block: B:149:0x0393  */
    /* JADX WARN: Code duplicated, block: B:161:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:162:0x03df  */
    /* JADX WARN: Code duplicated, block: B:170:0x0436  */
    /* JADX WARN: Code duplicated, block: B:194:0x0519  */
    /* JADX WARN: Code duplicated, block: B:197:0x0522  */
    /* JADX WARN: Code duplicated, block: B:205:0x0580  */
    /* JADX WARN: Code duplicated, block: B:208:0x0589  */
    /* JADX WARN: Code duplicated, block: B:212:0x0597  */
    /* JADX WARN: Code duplicated, block: B:214:0x059a  */
    /* JADX WARN: Code duplicated, block: B:216:0x05cb  */
    /* JADX WARN: Code duplicated, block: B:218:0x05d7 A[LOOP:3: B:215:0x05c9->B:218:0x05d7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:223:0x0605  */
    /* JADX WARN: Code duplicated, block: B:225:0x0619  */
    /* JADX WARN: Code duplicated, block: B:227:0x062c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:234:0x0642  */
    /* JADX WARN: Code duplicated, block: B:236:0x0657 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:242:0x0665  */
    /* JADX WARN: Code duplicated, block: B:244:0x067a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:250:0x0685  */
    /* JADX WARN: Code duplicated, block: B:252:0x0698  */
    /* JADX WARN: Code duplicated, block: B:254:0x06a0  */
    /* JADX WARN: Code duplicated, block: B:256:0x06a4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:257:0x06a6  */
    /* JADX WARN: Code duplicated, block: B:258:0x06ac  */
    /* JADX WARN: Code duplicated, block: B:261:0x06b6  */
    /* JADX WARN: Code duplicated, block: B:263:0x06be  */
    /* JADX WARN: Code duplicated, block: B:265:0x06c6  */
    /* JADX WARN: Code duplicated, block: B:267:0x06ca A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x006c  */
    /* JADX WARN: Code duplicated, block: B:279:0x06f1  */
    /* JADX WARN: Code duplicated, block: B:281:0x0704  */
    /* JADX WARN: Code duplicated, block: B:283:0x0718  */
    /* JADX WARN: Code duplicated, block: B:284:0x071e  */
    /* JADX WARN: Code duplicated, block: B:286:0x0732  */
    /* JADX WARN: Code duplicated, block: B:288:0x073b  */
    /* JADX WARN: Code duplicated, block: B:290:0x0743 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:291:0x0745  */
    /* JADX WARN: Code duplicated, block: B:292:0x0749  */
    /* JADX WARN: Code duplicated, block: B:295:0x0756  */
    /* JADX WARN: Code duplicated, block: B:297:0x075e  */
    /* JADX WARN: Code duplicated, block: B:299:0x0766 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:306:0x0781  */
    /* JADX WARN: Code duplicated, block: B:308:0x0789 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:309:0x078b  */
    /* JADX WARN: Code duplicated, block: B:30:0x0097  */
    /* JADX WARN: Code duplicated, block: B:310:0x078f  */
    /* JADX WARN: Code duplicated, block: B:312:0x079c  */
    /* JADX WARN: Code duplicated, block: B:315:0x07ac  */
    /* JADX WARN: Code duplicated, block: B:317:0x07b4  */
    /* JADX WARN: Code duplicated, block: B:319:0x07bc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:323:0x07cf  */
    /* JADX WARN: Code duplicated, block: B:32:0x009d  */
    /* JADX WARN: Code duplicated, block: B:332:0x07f0  */
    /* JADX WARN: Code duplicated, block: B:334:0x0803 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:340:0x0813  */
    /* JADX WARN: Code duplicated, block: B:342:0x0828  */
    /* JADX WARN: Code duplicated, block: B:349:0x0835  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:351:0x084a  */
    /* JADX WARN: Code duplicated, block: B:358:0x0857  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:360:0x086c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:366:0x0878  */
    /* JADX WARN: Code duplicated, block: B:368:0x088d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:374:0x0898  */
    /* JADX WARN: Code duplicated, block: B:376:0x08ad  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:383:0x08b9  */
    /* JADX WARN: Code duplicated, block: B:385:0x08ce  */
    /* JADX WARN: Code duplicated, block: B:401:0x0924  */
    /* JADX WARN: Code duplicated, block: B:403:0x092c  */
    /* JADX WARN: Code duplicated, block: B:404:0x0932  */
    /* JADX WARN: Code duplicated, block: B:408:0x0946  */
    /* JADX WARN: Code duplicated, block: B:410:0x0959 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:411:0x0961  */
    /* JADX WARN: Code duplicated, block: B:413:0x0964  */
    /* JADX WARN: Code duplicated, block: B:414:0x0988  */
    /* JADX WARN: Code duplicated, block: B:416:0x098c  */
    /* JADX WARN: Code duplicated, block: B:419:0x09af  */
    /* JADX WARN: Code duplicated, block: B:421:0x09b2 A[PHI: r4 r10 r14
      0x09b2: PHI (r4v143 byte[]) = (r4v141 byte[]), (r4v144 byte[]) binds: [B:435:0x0a22, B:420:0x09b0] A[DONT_GENERATE, DONT_INLINE]
      0x09b2: PHI (r10v18 int) = (r10v14 int), (r10v19 int) binds: [B:435:0x0a22, B:420:0x09b0] A[DONT_GENERATE, DONT_INLINE]
      0x09b2: PHI (r14v65 int) = (r14v60 int), (r14v66 int) binds: [B:435:0x0a22, B:420:0x09b0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:422:0x09b6  */
    /* JADX WARN: Code duplicated, block: B:424:0x09bb  */
    /* JADX WARN: Code duplicated, block: B:425:0x09d4  */
    /* JADX WARN: Code duplicated, block: B:427:0x09d9  */
    /* JADX WARN: Code duplicated, block: B:428:0x09ed  */
    /* JADX WARN: Code duplicated, block: B:430:0x09f3  */
    /* JADX WARN: Code duplicated, block: B:431:0x0a00  */
    /* JADX WARN: Code duplicated, block: B:433:0x0a06  */
    /* JADX WARN: Code duplicated, block: B:434:0x0a1d  */
    /* JADX WARN: Code duplicated, block: B:436:0x0a24  */
    /* JADX WARN: Code duplicated, block: B:438:0x0a2c  */
    /* JADX WARN: Code duplicated, block: B:439:0x0a32  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:441:0x0a36  */
    /* JADX WARN: Code duplicated, block: B:448:0x0a5c  */
    /* JADX WARN: Code duplicated, block: B:450:0x0a64  */
    /* JADX WARN: Code duplicated, block: B:452:0x0a70  */
    /* JADX WARN: Code duplicated, block: B:453:0x0a73  */
    /* JADX WARN: Code duplicated, block: B:456:0x0a83  */
    /* JADX WARN: Code duplicated, block: B:458:0x0a8c  */
    /* JADX WARN: Code duplicated, block: B:459:0x0a9e  */
    /* JADX WARN: Code duplicated, block: B:461:0x0aa7  */
    /* JADX WARN: Code duplicated, block: B:462:0x0ab9  */
    /* JADX WARN: Code duplicated, block: B:464:0x0ac1  */
    /* JADX WARN: Code duplicated, block: B:465:0x0ad2  */
    /* JADX WARN: Code duplicated, block: B:467:0x0ada  */
    /* JADX WARN: Code duplicated, block: B:468:0x0aed  */
    /* JADX WARN: Code duplicated, block: B:470:0x0af6  */
    /* JADX WARN: Code duplicated, block: B:471:0x0b0b  */
    /* JADX WARN: Code duplicated, block: B:473:0x0b14  */
    /* JADX WARN: Code duplicated, block: B:474:0x0b29 A[PHI: r4 r10 r14 r22
      0x0b29: PHI (r4v150 byte[]) = 
      (r4v133 byte[])
      (r4v134 byte[])
      (r4v135 byte[])
      (r4v136 byte[])
      (r4v137 byte[])
      (r4v138 byte[])
      (r4v140 byte[])
      (r4v143 byte[])
      (r4v151 byte[])
     binds: [B:472:0x0b12, B:469:0x0af4, B:466:0x0ad8, B:463:0x0abf, B:460:0x0aa5, B:457:0x0a8a, B:449:0x0a62, B:421:0x09b2, B:410:0x0959] A[DONT_GENERATE, DONT_INLINE]
      0x0b29: PHI (r10v25 int) = 
      (r10v6 int)
      (r10v7 int)
      (r10v8 int)
      (r10v9 int)
      (r10v10 int)
      (r10v11 int)
      (r10v13 int)
      (r10v18 int)
      (r10v26 int)
     binds: [B:472:0x0b12, B:469:0x0af4, B:466:0x0ad8, B:463:0x0abf, B:460:0x0aa5, B:457:0x0a8a, B:449:0x0a62, B:421:0x09b2, B:410:0x0959] A[DONT_GENERATE, DONT_INLINE]
      0x0b29: PHI (r14v75 int) = 
      (r14v52 int)
      (r14v53 int)
      (r14v54 int)
      (r14v55 int)
      (r14v56 int)
      (r14v57 int)
      (r14v59 int)
      (r14v65 int)
      (r14v76 int)
     binds: [B:472:0x0b12, B:469:0x0af4, B:466:0x0ad8, B:463:0x0abf, B:460:0x0aa5, B:457:0x0a8a, B:449:0x0a62, B:421:0x09b2, B:410:0x0959] A[DONT_GENERATE, DONT_INLINE]
      0x0b29: PHI (r22v26 int) = 
      (r22v9 int)
      (r22v10 int)
      (r22v11 int)
      (r22v12 int)
      (r22v13 int)
      (r22v14 int)
      (r22v16 int)
      (r22v21 int)
      (r22v27 int)
     binds: [B:472:0x0b12, B:469:0x0af4, B:466:0x0ad8, B:463:0x0abf, B:460:0x0aa5, B:457:0x0a8a, B:449:0x0a62, B:421:0x09b2, B:410:0x0959] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:47:0x012d  */
    /* JADX WARN: Code duplicated, block: B:485:0x0b63  */
    /* JADX WARN: Code duplicated, block: B:515:0x037e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:516:0x0362 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:517:0x029a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:518:0x0295 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:520:0x02ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:521:0x02e8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:522:0x02e8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:523:0x02e8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:524:0x02e8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:525:0x034e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:526:0x0349 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:527:0x0349 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:530:0x03b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:531:0x0419 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:532:0x063c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:533:0x0636 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:534:0x0661 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:535:0x065d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:536:0x0681 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:537:0x067d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:538:0x06ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:539:0x06e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:540:0x06df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:541:0x06da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:542:0x077c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:543:0x0777 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:544:0x07eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:545:0x07e6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:546:0x07e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:547:0x07dc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:548:0x080d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:549:0x0807 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:550:0x0831 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:551:0x082d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:552:0x0853 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:553:0x084f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:554:0x0874 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:555:0x0870 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:556:0x0894 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:557:0x0890 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:558:0x08b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:559:0x08b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:560:0x08f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:561:0x08f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:562:0x0910 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:563:0x0a44 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:565:0x00be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:566:0x0109 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:570:0x0150 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:571:0x018c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:572:0x01ae A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:573:0x01cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:574:0x0214 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:575:0x03d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:576:0x03fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:577:0x044e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:578:0x047c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:579:0x04a4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:580:0x04ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:581:0x050c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:582:0x08d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:583:0x0b2c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:584:0x005b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:585:0x04f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:586:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:587:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:588:0x0404 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:589:0x043d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:590:0x0171 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:591:0x0171 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:592:0x0171 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:593:0x01f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:594:0x03b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:595:0x03b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:596:0x03b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:597:0x0469 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:598:0x043a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:599:0x043a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:600:0x013c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:601:0x0178 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:602:0x0199 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:603:0x01b8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:604:0x0202 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:605:0x03bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:606:0x03e6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:607:0x046b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:608:0x0491 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:609:0x04ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:610:0x0469 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:611:0x008b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:612:0x055f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:613:0x054c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:614:0x08e6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:615:0x0509 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:616:0x08fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:617:0x090d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:618:0x0568 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:619:0x0b41 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:630:0x05f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:631:0x05f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:633:0x06e4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:634:0x06d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:635:0x06cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:641:0x0714 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:642:0x076c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:643:0x0768 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:649:0x0714 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:650:0x07c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:651:0x07be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:657:0x0249 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:659:0x0269 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:660:0x0253 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:661:0x02a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:662:0x02f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:663:0x026f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:667:0x0249 A[ADDED_TO_REGION, EDGE_INSN: B:667:0x0249->B:664:0x0249 BREAK  A[LOOP:9: B:85:0x0259->B:89:0x0261], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x0218  */
    /* JADX WARN: Code duplicated, block: B:72:0x0220 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x0222  */
    /* JADX WARN: Code duplicated, block: B:74:0x0229  */
    /* JADX WARN: Code duplicated, block: B:76:0x0234  */
    /* JADX WARN: Code duplicated, block: B:78:0x023b  */
    /* JADX WARN: Code duplicated, block: B:80:0x023f A[LOOP:7: B:77:0x0239->B:80:0x023f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:82:0x024b  */
    /* JADX WARN: Code duplicated, block: B:87:0x025d  */
    /* JADX WARN: Code duplicated, block: B:93:0x0271  */
    /* JADX WARN: Code duplicated, block: B:95:0x027d  */
    /* JADX WARN: Multi-variable type inference failed */
    public final int m(Object obj, byte[] bArr, int i, int i2, int i3, of9 of9Var) throws xh9 {
        int[] iArr;
        Object obj2;
        int i4;
        Unsafe unsafe;
        int i5;
        byte[] bArr2;
        int i6;
        of9 of9Var2;
        ih9 ih9Var;
        il9 il9VarA;
        boolean z;
        int i7;
        int iQ;
        long j;
        int i8;
        int i9;
        int i10;
        int i11;
        byte[] bArr3;
        Unsafe unsafe2;
        int i12;
        of9 of9Var3;
        int i13;
        int i14;
        Object obj3;
        int i15;
        byte[] bArr4;
        of9 of9Var4;
        boolean z2;
        Object obj4;
        int iY;
        int i16;
        int iY2;
        int i17;
        int length;
        int i18;
        char[] cArr;
        int i19;
        int i20;
        int i21;
        byte b;
        int i22;
        byte b2;
        Object[] objArr;
        int i23;
        byte b3;
        byte b4;
        int i24;
        byte b5;
        int i25;
        byte b6;
        Object obj5;
        Unsafe unsafe3;
        Unsafe unsafe4;
        of9 of9Var5;
        Object obj6;
        int i26;
        int i27;
        Object obj7;
        Unsafe unsafe5;
        byte[] bArr5;
        int i28;
        oh9 oh9VarZzd;
        long j2;
        Unsafe unsafe6;
        oh9 oh9VarZzd2;
        oh9 oh9Var;
        int i29;
        int i30;
        int i31;
        int i32;
        int iY3;
        int i33;
        int i34;
        int i35;
        int iY4;
        int i36;
        byte[] bArr6;
        int i37;
        int i38;
        int iY5;
        int i39;
        int iY6;
        int i40;
        jk9 jk9VarT;
        int i41;
        oj9 oj9Var;
        int i42;
        int i43;
        int i44;
        int iY7;
        oj9 oj9Var2;
        Unsafe unsafe7;
        Object object;
        si9 si9Var;
        si9 si9Var2;
        Unsafe unsafe8;
        long j3;
        int i45;
        int iY8;
        int iA0;
        boolean z3;
        int iY9;
        int i46;
        byte[] bArr7;
        int iT;
        Object obj8 = obj;
        byte[] bArr8 = bArr;
        i2 = i2;
        of9 of9Var6 = of9Var;
        if (!k(obj8)) {
            c6.f("Mutating immutable message: ".concat(String.valueOf(obj8)));
            return 0;
        }
        Unsafe unsafe9 = l;
        int iA1 = i;
        int i47 = -1;
        int iP = 0;
        int i48 = 1048575;
        int i49 = 0;
        int i50 = 0;
        while (true) {
            int i51 = 1048575;
            while (true) {
                int[] iArr2 = this.a;
                if (iA1 < i2) {
                    int iZ = iA1 + 1;
                    int i52 = bArr8[iA1];
                    if (i52 < 0) {
                        iZ = ly8.Z(i52, bArr8, iZ, of9Var6);
                        i52 = of9Var6.a;
                    }
                    int i53 = iZ;
                    i50 = i52;
                    i47 = (i50 == true ? 1 : 0) >>> 3;
                    int i54 = this.d;
                    int i55 = this.c;
                    if (i47 > i47) {
                        iP = (i47 < i55 || i47 > i54) ? -1 : p(i47, iP / 3);
                    } else {
                        if (i47 < i55 || i47 > i54) {
                            i4 = -1;
                            iP = -1;
                        } else {
                            iP = p(i47, 0);
                        }
                        if (iP == i4) {
                            z = (i50 == true ? 1 : 0) & 7;
                            i7 = iArr2[iP + 1];
                            iQ = q(i7);
                            j = i7 & i51;
                            if (iQ <= 17) {
                                int i56 = iArr2[iP + 2];
                                i8 = 1 << (i56 >>> 20);
                                i9 = i56 & i51;
                                if (i9 != i48) {
                                    i26 = i51;
                                    if (i48 != i26) {
                                        unsafe9.putInt(obj8, i48, i49);
                                        i26 = 1048575;
                                    }
                                    if (i9 == i26) {
                                        i27 = 0;
                                    } else {
                                        i27 = unsafe9.getInt(obj8, i9);
                                    }
                                    i10 = i27;
                                    i11 = i9;
                                } else {
                                    i10 = i49;
                                    i11 = i48;
                                }
                                switch (iQ) {
                                    case 0:
                                        bArr3 = bArr;
                                        unsafe2 = unsafe9;
                                        iArr2 = iArr2;
                                        i12 = i11;
                                        of9Var3 = of9Var;
                                        i13 = i50 == true ? 1 : 0;
                                        i14 = i53;
                                        if (z == 1) {
                                            fm9.c.e(obj8, j, Double.longBitsToDouble(ly8.c0(bArr3, i14)));
                                            iA1 = i14 + 8;
                                            i49 = i10 | i8;
                                            bArr8 = bArr3;
                                            unsafe9 = unsafe2;
                                            of9Var6 = of9Var3;
                                            i50 = i13;
                                            i51 = 1048575;
                                            i48 = i12;
                                        } else {
                                            obj4 = obj8;
                                            bArr2 = bArr3;
                                            iArr = iArr2;
                                            unsafe = unsafe2;
                                            iP = iP;
                                            i5 = i14;
                                            i6 = i13;
                                            i49 = i10;
                                            i48 = i12;
                                            of9Var2 = of9Var3;
                                            obj2 = obj4;
                                        }
                                        break;
                                    case 1:
                                        bArr3 = bArr;
                                        unsafe2 = unsafe9;
                                        iArr2 = iArr2;
                                        i12 = i11;
                                        of9Var3 = of9Var;
                                        i13 = i50 == true ? 1 : 0;
                                        i14 = i53;
                                        if (z == 5) {
                                            fm9.c.g(obj8, j, Float.intBitsToFloat(ly8.V(bArr3, i14)));
                                            iA1 = i14 + 4;
                                            i49 = i10 | i8;
                                            bArr8 = bArr3;
                                            unsafe9 = unsafe2;
                                            of9Var6 = of9Var3;
                                            i50 = i13;
                                            i51 = 1048575;
                                            i48 = i12;
                                        } else {
                                            obj4 = obj8;
                                            bArr2 = bArr3;
                                            iArr = iArr2;
                                            unsafe = unsafe2;
                                            iP = iP;
                                            i5 = i14;
                                            i6 = i13;
                                            i49 = i10;
                                            i48 = i12;
                                            of9Var2 = of9Var3;
                                            obj2 = obj4;
                                        }
                                        break;
                                    case 2:
                                    case 3:
                                        bArr3 = bArr;
                                        i12 = i11;
                                        of9Var3 = of9Var;
                                        i13 = i50 == true ? 1 : 0;
                                        i14 = i53;
                                        if (z == 0) {
                                            int iA2 = ly8.a0(bArr3, i14, of9Var3);
                                            unsafe9.putLong(obj8, j, of9Var3.b);
                                            i49 = i10 | i8;
                                            bArr8 = bArr3;
                                            iA1 = iA2;
                                            of9Var6 = of9Var3;
                                            i50 = i13;
                                            i51 = 1048575;
                                            i48 = i12;
                                        } else {
                                            unsafe2 = unsafe9;
                                            obj4 = obj8;
                                            bArr2 = bArr3;
                                            iArr = iArr2;
                                            unsafe = unsafe2;
                                            iP = iP;
                                            i5 = i14;
                                            i6 = i13;
                                            i49 = i10;
                                            i48 = i12;
                                            of9Var2 = of9Var3;
                                            obj2 = obj4;
                                        }
                                        break;
                                    case 4:
                                    case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                        bArr3 = bArr;
                                        i12 = i11;
                                        of9Var3 = of9Var;
                                        i13 = i50 == true ? 1 : 0;
                                        i14 = i53;
                                        if (z == 0) {
                                            int iY10 = ly8.Y(bArr3, i14, of9Var3);
                                            unsafe9.putInt(obj8, j, of9Var3.a);
                                            i49 = i10 | i8;
                                            i48 = i12;
                                            iA1 = iY10;
                                            bArr8 = bArr3;
                                            iP = iP;
                                            i47 = i47;
                                            of9Var6 = of9Var3;
                                            i50 = i13 == true ? 1 : 0;
                                            i51 = 1048575;
                                            i2 = i2;
                                        } else {
                                            unsafe2 = unsafe9;
                                            obj4 = obj8;
                                            bArr2 = bArr3;
                                            iArr = iArr2;
                                            unsafe = unsafe2;
                                            iP = iP;
                                            i5 = i14;
                                            i6 = i13;
                                            i49 = i10;
                                            i48 = i12;
                                            of9Var2 = of9Var3;
                                            obj2 = obj4;
                                        }
                                        break;
                                    case 5:
                                    case 14:
                                        unsafe2 = unsafe9;
                                        obj6 = obj8;
                                        iArr2 = iArr2;
                                        i12 = i11;
                                        i13 = i50 == true ? 1 : 0;
                                        if (z == 1) {
                                            obj8 = obj6;
                                            unsafe9 = unsafe2;
                                            unsafe9.putLong(obj8, j, ly8.c0(bArr, i53));
                                            iA1 = i53 + 8;
                                            i49 = i10 | i8;
                                            i48 = i12;
                                            i2 = i2;
                                            bArr8 = bArr;
                                            of9Var6 = of9Var;
                                            i50 = i13 == true ? 1 : 0;
                                        } else {
                                            of9Var3 = of9Var;
                                            i14 = i53;
                                            obj8 = obj6;
                                            bArr3 = bArr;
                                            obj4 = obj8;
                                            bArr2 = bArr3;
                                            iArr = iArr2;
                                            unsafe = unsafe2;
                                            iP = iP;
                                            i5 = i14;
                                            i6 = i13;
                                            i49 = i10;
                                            i48 = i12;
                                            of9Var2 = of9Var3;
                                            obj2 = obj4;
                                        }
                                        break;
                                    case 6:
                                    case 13:
                                        unsafe2 = unsafe9;
                                        obj3 = obj8;
                                        i12 = i11;
                                        i15 = i53;
                                        bArr4 = bArr;
                                        of9Var4 = of9Var;
                                        i13 = i50 == true ? 1 : 0;
                                        if (z == 5) {
                                            unsafe2.putInt(obj3, j, ly8.V(bArr4, i15));
                                            iA1 = i15 + 4;
                                            i49 = i10 | i8;
                                            Object obj9 = obj3;
                                            of9Var6 = of9Var4;
                                            obj8 = obj9;
                                            i2 = i2;
                                            bArr8 = bArr4;
                                            unsafe9 = unsafe2;
                                            i50 = i13;
                                            i51 = 1048575;
                                            i48 = i12;
                                        } else {
                                            Object obj10 = obj3;
                                            bArr3 = bArr4;
                                            obj4 = obj10;
                                            of9Var3 = of9Var4;
                                            i14 = i15;
                                            bArr2 = bArr3;
                                            iArr = iArr2;
                                            unsafe = unsafe2;
                                            iP = iP;
                                            i5 = i14;
                                            i6 = i13;
                                            i49 = i10;
                                            i48 = i12;
                                            of9Var2 = of9Var3;
                                            obj2 = obj4;
                                        }
                                        break;
                                    case 7:
                                        unsafe2 = unsafe9;
                                        obj3 = obj8;
                                        i12 = i11;
                                        i15 = i53;
                                        bArr4 = bArr;
                                        of9Var4 = of9Var;
                                        i13 = i50 == true ? 1 : 0;
                                        if (z == 0) {
                                            iA1 = ly8.a0(bArr4, i15, of9Var4);
                                            if (of9Var4.b != 0) {
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            fm9.c.c(obj3, j, z2);
                                            i49 = i10 | i8;
                                            Object obj11 = obj3;
                                            of9Var6 = of9Var4;
                                            obj8 = obj11;
                                            i2 = i2;
                                            bArr8 = bArr4;
                                            unsafe9 = unsafe2;
                                            i50 = i13;
                                            i51 = 1048575;
                                            i48 = i12;
                                        } else {
                                            Object obj12 = obj3;
                                            bArr3 = bArr4;
                                            obj4 = obj12;
                                            of9Var3 = of9Var4;
                                            i14 = i15;
                                            bArr2 = bArr3;
                                            iArr = iArr2;
                                            unsafe = unsafe2;
                                            iP = iP;
                                            i5 = i14;
                                            i6 = i13;
                                            i49 = i10;
                                            i48 = i12;
                                            of9Var2 = of9Var3;
                                            obj2 = obj4;
                                        }
                                        break;
                                    case 8:
                                        unsafe2 = unsafe9;
                                        obj3 = obj8;
                                        i12 = i11;
                                        i15 = i53;
                                        bArr4 = bArr;
                                        of9Var4 = of9Var;
                                        if (z == 2) {
                                            if ((i7 & 536870912) != 0) {
                                                iY2 = ly8.Y(bArr4, i15, of9Var4);
                                                i17 = of9Var4.a;
                                                if (i17 >= 0) {
                                                    throw xh9.b();
                                                }
                                                if (i17 == 0) {
                                                    of9Var4.c = "";
                                                    iA1 = iY2;
                                                    i13 = i50 == true ? 1 : 0;
                                                } else {
                                                    nh4 nh4Var = om9.a;
                                                    length = bArr4.length;
                                                    if ((((length - iY2) - i17) | iY2 | i17) >= 0) {
                                                        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(iY2), Integer.valueOf(i17)));
                                                    }
                                                    i18 = iY2 + i17;
                                                    cArr = new char[i17];
                                                    i19 = 0;
                                                    while (iY2 < i18) {
                                                        b6 = bArr4[iY2];
                                                        if (b6 >= 0) {
                                                            iY2++;
                                                            cArr[i19] = (char) b6;
                                                            i19++;
                                                        } else {
                                                            while (iY2 < i18) {
                                                                i20 = iY2 + 1;
                                                                i21 = iY2;
                                                                b = bArr4[i21];
                                                                if (b >= 0) {
                                                                    i22 = i19 + 1;
                                                                    cArr[i19] = (char) b;
                                                                    iY2 = i20;
                                                                    while (true) {
                                                                        i19 = i22;
                                                                        if (iY2 >= i18 || (b2 = bArr4[iY2]) < 0) {
                                                                        }
                                                                        iY2++;
                                                                        i22 = i19 + 1;
                                                                        cArr[i19] = (char) b2;
                                                                    }
                                                                } else {
                                                                    objArr = i50 == true ? 1 : 0;
                                                                    if (b >= -32) {
                                                                        i23 = i18;
                                                                        if (b < -16) {
                                                                            if (i20 < i23 - 2) {
                                                                                throw xh9.a();
                                                                            }
                                                                            b3 = bArr4[i20];
                                                                            int i57 = i21 + 3;
                                                                            byte b7 = bArr4[i21 + 2];
                                                                            int i58 = i21 + 4;
                                                                            byte b8 = bArr4[i57];
                                                                            if (!xh8.R(b3)) {
                                                                                if ((((b3 + 112) + (b << 28)) >> 30) != 0 && !xh8.R(b7) && !xh8.R(b8)) {
                                                                                    int i59 = ((b & 7) << 18) | ((b3 & 63) << 12) | ((b7 & 63) << 6) | (b8 & 63);
                                                                                    cArr[i19] = (char) ((i59 >>> 10) + 55232);
                                                                                    cArr[i19 + 1] = (char) ((i59 & 1023) + 56320);
                                                                                    i19 += 2;
                                                                                    iY2 = i58;
                                                                                }
                                                                            }
                                                                            throw xh9.a();
                                                                        }
                                                                        if (i20 < i23 - 1) {
                                                                            throw xh9.a();
                                                                        }
                                                                        int i60 = i21 + 2;
                                                                        b4 = bArr4[i20];
                                                                        i24 = i21 + 3;
                                                                        b5 = bArr4[i60];
                                                                        i25 = i19 + 1;
                                                                        if (xh8.R(b4)) {
                                                                            if (b != -32) {
                                                                                if (b != -19) {
                                                                                    if (!xh8.R(b5)) {
                                                                                        cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                                        iY2 = i24;
                                                                                        i50 = objArr == true ? 1 : 0;
                                                                                        i18 = i23;
                                                                                        i19 = i25;
                                                                                    }
                                                                                } else if (b4 < -96) {
                                                                                    b = -19;
                                                                                    if (!xh8.R(b5)) {
                                                                                        cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                                        iY2 = i24;
                                                                                        i50 = objArr == true ? 1 : 0;
                                                                                        i18 = i23;
                                                                                        i19 = i25;
                                                                                    }
                                                                                }
                                                                            } else if (b4 >= -96) {
                                                                                b = -32;
                                                                                if (b != -19) {
                                                                                    if (!xh8.R(b5)) {
                                                                                        cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                                        iY2 = i24;
                                                                                        i50 = objArr == true ? 1 : 0;
                                                                                        i18 = i23;
                                                                                        i19 = i25;
                                                                                    }
                                                                                } else if (b4 < -96) {
                                                                                    b = -19;
                                                                                    if (!xh8.R(b5)) {
                                                                                        cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                                        iY2 = i24;
                                                                                        i50 = objArr == true ? 1 : 0;
                                                                                        i18 = i23;
                                                                                        i19 = i25;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                        throw xh9.a();
                                                                    }
                                                                    if (i20 < i18) {
                                                                        throw xh9.a();
                                                                    }
                                                                    int i61 = i21 + 2;
                                                                    byte b9 = bArr4[i20];
                                                                    int i62 = i19 + 1;
                                                                    i23 = i18;
                                                                    if (b >= -62 || xh8.R(b9)) {
                                                                        throw xh9.a();
                                                                    }
                                                                    cArr[i19] = (char) (((b & 31) << 6) | (b9 & 63));
                                                                    iY2 = i61;
                                                                    i19 = i62;
                                                                    i50 = objArr == true ? 1 : 0;
                                                                    i18 = i23;
                                                                }
                                                                break;
                                                            }
                                                            i13 = i50 == true ? 1 : 0;
                                                            of9Var4.c = new String(cArr, 0, i19);
                                                            iA1 = i18;
                                                        }
                                                    }
                                                    while (iY2 < i18) {
                                                        i20 = iY2 + 1;
                                                        i21 = iY2;
                                                        b = bArr4[i21];
                                                        if (b >= 0) {
                                                            i22 = i19 + 1;
                                                            cArr[i19] = (char) b;
                                                            iY2 = i20;
                                                            while (true) {
                                                                i19 = i22;
                                                                if (iY2 >= i18) {
                                                                }
                                                                break;
                                                                iY2++;
                                                                i22 = i19 + 1;
                                                                cArr[i19] = (char) b2;
                                                            }
                                                        } else {
                                                            objArr = i50 == true ? 1 : 0;
                                                            if (b >= -32) {
                                                                if (i20 < i18) {
                                                                    throw xh9.a();
                                                                }
                                                                int i63 = i21 + 2;
                                                                byte b10 = bArr4[i20];
                                                                int i64 = i19 + 1;
                                                                i23 = i18;
                                                                if (b >= -62) {
                                                                }
                                                                throw xh9.a();
                                                            }
                                                            i23 = i18;
                                                            if (b < -16) {
                                                                if (i20 < i23 - 2) {
                                                                    throw xh9.a();
                                                                }
                                                                b3 = bArr4[i20];
                                                                int i510 = i21 + 3;
                                                                byte b11 = bArr4[i21 + 2];
                                                                int i511 = i21 + 4;
                                                                byte b12 = bArr4[i510];
                                                                if (!xh8.R(b3)) {
                                                                    if ((((b3 + 112) + (b << 28)) >> 30) != 0) {
                                                                    }
                                                                }
                                                                throw xh9.a();
                                                            }
                                                            if (i20 < i23 - 1) {
                                                                throw xh9.a();
                                                            }
                                                            int i65 = i21 + 2;
                                                            b4 = bArr4[i20];
                                                            i24 = i21 + 3;
                                                            b5 = bArr4[i65];
                                                            i25 = i19 + 1;
                                                            if (xh8.R(b4)) {
                                                                if (b != -32) {
                                                                    if (b != -19) {
                                                                        if (!xh8.R(b5)) {
                                                                            cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                            iY2 = i24;
                                                                            i50 = objArr == true ? 1 : 0;
                                                                            i18 = i23;
                                                                            i19 = i25;
                                                                        }
                                                                    } else if (b4 < -96) {
                                                                        b = -19;
                                                                        if (!xh8.R(b5)) {
                                                                            cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                            iY2 = i24;
                                                                            i50 = objArr == true ? 1 : 0;
                                                                            i18 = i23;
                                                                            i19 = i25;
                                                                        }
                                                                    }
                                                                } else if (b4 >= -96) {
                                                                    b = -32;
                                                                    if (b != -19) {
                                                                        if (!xh8.R(b5)) {
                                                                            cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                            iY2 = i24;
                                                                            i50 = objArr == true ? 1 : 0;
                                                                            i18 = i23;
                                                                            i19 = i25;
                                                                        }
                                                                    } else if (b4 < -96) {
                                                                        b = -19;
                                                                        if (!xh8.R(b5)) {
                                                                            cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                            iY2 = i24;
                                                                            i50 = objArr == true ? 1 : 0;
                                                                            i18 = i23;
                                                                            i19 = i25;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            throw xh9.a();
                                                            i50 = objArr == true ? 1 : 0;
                                                            i18 = i23;
                                                        }
                                                    }
                                                    i13 = i50 == true ? 1 : 0;
                                                    of9Var4.c = new String(cArr, 0, i19);
                                                    iA1 = i18;
                                                }
                                            } else {
                                                i13 = i50 == true ? 1 : 0;
                                                iY = ly8.Y(bArr4, i15, of9Var4);
                                                i16 = of9Var4.a;
                                                if (i16 >= 0) {
                                                    throw xh9.b();
                                                }
                                                if (i16 == 0) {
                                                    of9Var4.c = "";
                                                } else {
                                                    of9Var4.c = new String(bArr4, iY, i16, vh9.a);
                                                    iY += i16;
                                                }
                                                iA1 = iY;
                                            }
                                            unsafe2.putObject(obj3, j, of9Var4.c);
                                            i49 = i10 | i8;
                                            Object obj13 = obj3;
                                            of9Var6 = of9Var4;
                                            obj8 = obj13;
                                            i2 = i2;
                                            bArr8 = bArr4;
                                            unsafe9 = unsafe2;
                                            i50 = i13;
                                            i51 = 1048575;
                                            i48 = i12;
                                        } else {
                                            i13 = i50 == true ? 1 : 0;
                                            Object obj14 = obj3;
                                            bArr3 = bArr4;
                                            obj4 = obj14;
                                            of9Var3 = of9Var4;
                                            i14 = i15;
                                            bArr2 = bArr3;
                                            iArr = iArr2;
                                            unsafe = unsafe2;
                                            iP = iP;
                                            i5 = i14;
                                            i6 = i13;
                                            i49 = i10;
                                            i48 = i12;
                                            of9Var2 = of9Var3;
                                            obj2 = obj4;
                                        }
                                        break;
                                    case XmlPullParser.COMMENT /* 9 */:
                                        obj5 = obj8;
                                        unsafe3 = unsafe9;
                                        iArr2 = iArr2;
                                        i12 = i11;
                                        i15 = i53;
                                        if (z == 2) {
                                            Object objU = u(iP, obj5);
                                            i2 = i2;
                                            iA1 = ly8.b0(objU, t(iP), bArr, i15, i2, of9Var);
                                            g(iP, obj5, objU);
                                            i49 = i10 | i8;
                                            of9Var6 = of9Var;
                                            obj8 = obj5;
                                            bArr8 = bArr;
                                            unsafe9 = unsafe3;
                                            iP = iP;
                                            i47 = i47;
                                            i51 = 1048575;
                                            i48 = i12;
                                        } else {
                                            unsafe2 = unsafe3;
                                            bArr3 = bArr;
                                            obj4 = obj5;
                                            of9Var3 = of9Var;
                                            i13 = i50 == true ? 1 : 0;
                                            i14 = i15;
                                            bArr2 = bArr3;
                                            iArr = iArr2;
                                            unsafe = unsafe2;
                                            iP = iP;
                                            i5 = i14;
                                            i6 = i13;
                                            i49 = i10;
                                            i48 = i12;
                                            of9Var2 = of9Var3;
                                            obj2 = obj4;
                                        }
                                        break;
                                    case 10:
                                        Object obj15 = obj8;
                                        unsafe4 = unsafe9;
                                        obj4 = obj15;
                                        bArr3 = bArr;
                                        of9Var5 = of9Var;
                                        i12 = i11;
                                        i15 = i53;
                                        if (z == 2) {
                                            iA1 = ly8.T(bArr3, i15, of9Var5);
                                            unsafe4.putObject(obj4, j, of9Var5.c);
                                            i49 = i10 | i8;
                                            Unsafe unsafe10 = unsafe4;
                                            obj8 = obj4;
                                            unsafe9 = unsafe10;
                                            i2 = i2;
                                            bArr8 = bArr3;
                                            of9Var6 = of9Var5;
                                            iP = iP;
                                            i47 = i47;
                                            i51 = 1048575;
                                            i48 = i12;
                                        } else {
                                            of9Var3 = of9Var5;
                                            i13 = i50 == true ? 1 : 0;
                                            unsafe2 = unsafe4;
                                            i14 = i15;
                                            bArr2 = bArr3;
                                            iArr = iArr2;
                                            unsafe = unsafe2;
                                            iP = iP;
                                            i5 = i14;
                                            i6 = i13;
                                            i49 = i10;
                                            i48 = i12;
                                            of9Var2 = of9Var3;
                                            obj2 = obj4;
                                        }
                                        break;
                                    case 12:
                                        Object obj16 = obj8;
                                        unsafe4 = unsafe9;
                                        obj4 = obj16;
                                        bArr3 = bArr;
                                        of9Var5 = of9Var;
                                        i12 = i11;
                                        i15 = i53;
                                        if (z == 0) {
                                            iA1 = ly8.Y(bArr3, i15, of9Var5);
                                            int i66 = of9Var5.a;
                                            s(iP);
                                            unsafe4.putInt(obj4, j, i66);
                                            i49 = i10 | i8;
                                            Unsafe unsafe11 = unsafe4;
                                            obj8 = obj4;
                                            unsafe9 = unsafe11;
                                            i2 = i2;
                                            bArr8 = bArr3;
                                            of9Var6 = of9Var5;
                                            iP = iP;
                                            i47 = i47;
                                            i51 = 1048575;
                                            i48 = i12;
                                        } else {
                                            of9Var3 = of9Var5;
                                            i13 = i50 == true ? 1 : 0;
                                            unsafe2 = unsafe4;
                                            i14 = i15;
                                            bArr2 = bArr3;
                                            iArr = iArr2;
                                            unsafe = unsafe2;
                                            iP = iP;
                                            i5 = i14;
                                            i6 = i13;
                                            i49 = i10;
                                            i48 = i12;
                                            of9Var2 = of9Var3;
                                            obj2 = obj4;
                                        }
                                        break;
                                    case 15:
                                        Object obj17 = obj8;
                                        unsafe4 = unsafe9;
                                        obj4 = obj17;
                                        bArr3 = bArr;
                                        of9Var5 = of9Var;
                                        i12 = i11;
                                        i15 = i53;
                                        if (z == 0) {
                                            iA1 = ly8.Y(bArr3, i15, of9Var5);
                                            int i67 = of9Var5.a;
                                            unsafe4.putInt(obj4, j, (i67 >>> 1) ^ (-(i67 & 1)));
                                            i49 = i10 | i8;
                                            Unsafe unsafe12 = unsafe4;
                                            obj8 = obj4;
                                            unsafe9 = unsafe12;
                                            i2 = i2;
                                            bArr8 = bArr3;
                                            of9Var6 = of9Var5;
                                            iP = iP;
                                            i47 = i47;
                                            i51 = 1048575;
                                            i48 = i12;
                                        } else {
                                            of9Var3 = of9Var5;
                                            i13 = i50 == true ? 1 : 0;
                                            unsafe2 = unsafe4;
                                            i14 = i15;
                                            bArr2 = bArr3;
                                            iArr = iArr2;
                                            unsafe = unsafe2;
                                            iP = iP;
                                            i5 = i14;
                                            i6 = i13;
                                            i49 = i10;
                                            i48 = i12;
                                            of9Var2 = of9Var3;
                                            obj2 = obj4;
                                        }
                                        break;
                                    case Argon2.V10 /* 16 */:
                                        bArr3 = bArr;
                                        if (z == 0) {
                                            int iA3 = ly8.a0(bArr3, i53, of9Var);
                                            long j4 = of9Var.b;
                                            unsafe9.putLong(obj8, j, (-(j4 & 1)) ^ (j4 >>> 1));
                                            obj8 = obj8;
                                            unsafe9 = unsafe9;
                                            int i68 = i11;
                                            i49 = i10 | i8;
                                            bArr8 = bArr3;
                                            of9Var6 = of9Var;
                                            i48 = i68;
                                            iA1 = iA3;
                                        } else {
                                            Object obj18 = obj8;
                                            Unsafe unsafe13 = unsafe9;
                                            obj4 = obj18;
                                            iArr2 = iArr2;
                                            i12 = i11;
                                            i13 = i50 == true ? 1 : 0;
                                            i14 = i53;
                                            of9Var3 = of9Var;
                                            unsafe2 = unsafe13;
                                            bArr2 = bArr3;
                                            iArr = iArr2;
                                            unsafe = unsafe2;
                                            iP = iP;
                                            i5 = i14;
                                            i6 = i13;
                                            i49 = i10;
                                            i48 = i12;
                                            of9Var2 = of9Var3;
                                            obj2 = obj4;
                                        }
                                        break;
                                    default:
                                        if (z == 3) {
                                            Object objU2 = u(iP, obj8);
                                            int iM = ((oj9) t(iP)).m(objU2, bArr, i53, i2, (i47 << 3) | 4, of9Var);
                                            of9Var.c = objU2;
                                            g(iP, obj8, objU2);
                                            iA1 = iM;
                                            bArr8 = bArr;
                                            of9Var6 = of9Var;
                                            i48 = i11;
                                            i49 = i10 | i8;
                                        } else {
                                            bArr3 = bArr;
                                            unsafe2 = unsafe9;
                                            obj4 = obj8;
                                            iArr2 = iArr2;
                                            i12 = i11;
                                            i13 = i50 == true ? 1 : 0;
                                            i14 = i53;
                                            of9Var3 = of9Var;
                                            bArr2 = bArr3;
                                            iArr = iArr2;
                                            unsafe = unsafe2;
                                            iP = iP;
                                            i5 = i14;
                                            i6 = i13;
                                            i49 = i10;
                                            i48 = i12;
                                            of9Var2 = of9Var3;
                                            obj2 = obj4;
                                        }
                                        break;
                                }
                            } else {
                                obj7 = obj8;
                                unsafe5 = unsafe9;
                                iArr = iArr2;
                                if (iQ == 27) {
                                    obj2 = obj7;
                                    iA1 = i53;
                                    unsafe = unsafe5;
                                    if (iQ <= 49) {
                                        i28 = i50 == true ? 1 : 0;
                                        j2 = i7;
                                        unsafe6 = l;
                                        oh9VarZzd2 = (oh9) unsafe6.getObject(obj2, j);
                                        if (!((lf9) oh9VarZzd2).a) {
                                            int size = oh9VarZzd2.size();
                                            oh9VarZzd2 = oh9VarZzd2.zzd(size != 0 ? size + size : 10);
                                            unsafe6.putObject(obj2, j, oh9VarZzd2);
                                        }
                                        oh9Var = oh9VarZzd2;
                                        switch (iQ) {
                                            case 18:
                                            case 35:
                                                bArr5 = bArr;
                                                i48 = i48;
                                                unsafe = unsafe;
                                                i28 = i28 == true ? 1 : 0;
                                                i29 = iA1;
                                                of9Var2 = of9Var;
                                                i49 = i49;
                                                i30 = i2;
                                                if (z != 2) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                if (z == 1) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                iA1 = i29;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                                break;
                                                break;
                                            case Argon2.V13 /* 19 */:
                                            case 36:
                                                bArr5 = bArr;
                                                i48 = i48;
                                                unsafe = unsafe;
                                                i28 = i28 == true ? 1 : 0;
                                                i29 = iA1;
                                                of9Var2 = of9Var;
                                                i49 = i49;
                                                i30 = i2;
                                                if (z != 2) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                if (z == 5) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                iA1 = i29;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                                break;
                                                break;
                                            case 20:
                                            case 21:
                                            case 37:
                                            case 38:
                                                bArr5 = bArr;
                                                i48 = i48;
                                                unsafe = unsafe;
                                                i28 = i28 == true ? 1 : 0;
                                                i29 = iA1;
                                                of9Var2 = of9Var;
                                                i49 = i49;
                                                i30 = i2;
                                                if (z != 2) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                if (z == 0) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                iA1 = i29;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                                break;
                                                break;
                                            case 22:
                                            case 29:
                                            case 39:
                                            case 43:
                                                bArr5 = bArr;
                                                i48 = i48;
                                                unsafe = unsafe;
                                                i28 = i28 == true ? 1 : 0;
                                                i29 = iA1;
                                                of9Var2 = of9Var;
                                                i49 = i49;
                                                i30 = i2;
                                                if (z != 2) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                if (z == 0) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                iA1 = i29;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                                break;
                                                break;
                                            case 23:
                                            case 32:
                                            case 40:
                                            case 46:
                                                bArr5 = bArr;
                                                i48 = i48;
                                                unsafe = unsafe;
                                                i28 = i28 == true ? 1 : 0;
                                                i29 = iA1;
                                                of9Var2 = of9Var;
                                                i49 = i49;
                                                i30 = i2;
                                                if (z != 2) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                if (z == 1) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                iA1 = i29;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                                break;
                                                break;
                                            case 24:
                                            case 31:
                                            case 41:
                                            case 45:
                                                bArr5 = bArr;
                                                i48 = i48;
                                                unsafe = unsafe;
                                                i28 = i28 == true ? 1 : 0;
                                                i29 = iA1;
                                                of9Var2 = of9Var;
                                                i49 = i49;
                                                i30 = i2;
                                                if (z != 2) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                if (z == 5) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                iA1 = i29;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                                break;
                                                break;
                                            case 25:
                                            case 42:
                                                bArr5 = bArr;
                                                i48 = i48;
                                                unsafe = unsafe;
                                                i28 = i28 == true ? 1 : 0;
                                                i29 = iA1;
                                                of9Var2 = of9Var;
                                                i49 = i49;
                                                i30 = i2;
                                                if (z != 2) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                if (z == 0) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                iA1 = i29;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                                break;
                                                break;
                                            case 26:
                                                bArr5 = bArr;
                                                i48 = i48;
                                                unsafe = unsafe;
                                                i28 = i28 == true ? 1 : 0;
                                                i29 = iA1;
                                                of9Var2 = of9Var;
                                                i49 = i49;
                                                i30 = i2;
                                                if (z == 2) {
                                                    if ((j2 & 536870912) == 0) {
                                                        iA1 = ly8.Y(bArr5, i29, of9Var2);
                                                        i35 = of9Var2.a;
                                                        if (i35 >= 0) {
                                                            throw xh9.b();
                                                        }
                                                        if (i35 == 0) {
                                                            oh9Var.add("");
                                                        } else {
                                                            oh9Var.add(new String(bArr5, iA1, i35, vh9.a));
                                                            iA1 += i35;
                                                        }
                                                        while (iA1 < i30) {
                                                            iY4 = ly8.Y(bArr5, iA1, of9Var2);
                                                            if (i28 == of9Var2.a) {
                                                                iA1 = ly8.Y(bArr5, iY4, of9Var2);
                                                                i36 = of9Var2.a;
                                                                if (i36 >= 0) {
                                                                    throw xh9.b();
                                                                }
                                                                if (i36 == 0) {
                                                                    oh9Var.add("");
                                                                } else {
                                                                    oh9Var.add(new String(bArr5, iA1, i36, vh9.a));
                                                                    iA1 += i36;
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        iA1 = ly8.Y(bArr5, i29, of9Var2);
                                                        i31 = of9Var2.a;
                                                        if (i31 >= 0) {
                                                            throw xh9.b();
                                                        }
                                                        if (i31 == 0) {
                                                            oh9Var.add("");
                                                        } else {
                                                            i32 = iA1 + i31;
                                                            om9.a.getClass();
                                                            if (nh4.t(bArr5, iA1, i32)) {
                                                                throw xh9.a();
                                                            }
                                                            oh9Var.add(new String(bArr5, iA1, i31, vh9.a));
                                                            iA1 = i32;
                                                        }
                                                        while (iA1 < i30) {
                                                            iY3 = ly8.Y(bArr5, iA1, of9Var2);
                                                            if (i28 == of9Var2.a) {
                                                                iA1 = ly8.Y(bArr5, iY3, of9Var2);
                                                                i33 = of9Var2.a;
                                                                if (i33 >= 0) {
                                                                    throw xh9.b();
                                                                }
                                                                if (i33 == 0) {
                                                                    oh9Var.add("");
                                                                } else {
                                                                    i34 = iA1 + i33;
                                                                    om9.a.getClass();
                                                                    if (nh4.t(bArr5, iA1, i34)) {
                                                                        throw xh9.a();
                                                                    }
                                                                    oh9Var.add(new String(bArr5, iA1, i33, vh9.a));
                                                                    iA1 = i34;
                                                                }
                                                            }
                                                        }
                                                    }
                                                    if (iA1 != i29) {
                                                        bArr8 = bArr5;
                                                        iP = iP;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        i2 = i30;
                                                        of9Var6 = of9Var2;
                                                        i49 = i49;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i50 = i28 == true ? 1 : 0;
                                                        i48 = i48;
                                                    } else {
                                                        i5 = iA1;
                                                        iP = iP;
                                                        i49 = i49;
                                                        bArr2 = bArr5;
                                                        i6 = i28;
                                                        i48 = i48;
                                                    }
                                                }
                                                iA1 = i29;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                                break;
                                            case 27:
                                                i48 = i48;
                                                unsafe = unsafe;
                                                i28 = i28 == true ? 1 : 0;
                                                i49 = i49;
                                                if (z == 2) {
                                                    bArr5 = bArr;
                                                    i29 = iA1;
                                                    i30 = i2;
                                                    of9Var2 = of9Var;
                                                    iA1 = ly8.W(t(iP), i28 == true ? 1 : 0, bArr, iA1, i2, oh9Var, of9Var);
                                                    if (iA1 != i29) {
                                                        bArr8 = bArr5;
                                                        iP = iP;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        i2 = i30;
                                                        of9Var6 = of9Var2;
                                                        i49 = i49;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i50 = i28 == true ? 1 : 0;
                                                        i48 = i48;
                                                    } else {
                                                        i5 = iA1;
                                                        iP = iP;
                                                        i49 = i49;
                                                        bArr2 = bArr5;
                                                        i6 = i28;
                                                        i48 = i48;
                                                    }
                                                } else {
                                                    bArr5 = bArr;
                                                    i30 = i2;
                                                    i29 = iA1;
                                                    of9Var2 = of9Var;
                                                    iA1 = i29;
                                                    if (iA1 != i29) {
                                                        bArr8 = bArr5;
                                                        iP = iP;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        i2 = i30;
                                                        of9Var6 = of9Var2;
                                                        i49 = i49;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i50 = i28 == true ? 1 : 0;
                                                        i48 = i48;
                                                    } else {
                                                        i5 = iA1;
                                                        iP = iP;
                                                        i49 = i49;
                                                        bArr2 = bArr5;
                                                        i6 = i28;
                                                        i48 = i48;
                                                    }
                                                }
                                                break;
                                            case 28:
                                                bArr6 = bArr;
                                                i37 = i2;
                                                of9Var = of9Var;
                                                i48 = i48;
                                                unsafe = unsafe;
                                                i28 = i28 == true ? 1 : 0;
                                                i38 = iA1;
                                                i49 = i49;
                                                if (z == 2) {
                                                    iY5 = ly8.Y(bArr6, i38, of9Var);
                                                    i39 = of9Var.a;
                                                    if (i39 >= 0) {
                                                        throw xh9.b();
                                                    }
                                                    if (i39 <= bArr6.length - iY5) {
                                                        throw xh9.c();
                                                    }
                                                    if (i39 == 0) {
                                                        oh9Var.add(hg9.c);
                                                    } else {
                                                        oh9Var.add(hg9.g(bArr6, iY5, i39));
                                                        iY5 += i39;
                                                    }
                                                    while (iY5 < i37) {
                                                        iY6 = ly8.Y(bArr6, iY5, of9Var);
                                                        if (i28 == of9Var.a) {
                                                            iA1 = iY5;
                                                            bArr5 = bArr6;
                                                            i30 = i37;
                                                            i29 = i38;
                                                            of9Var2 = of9Var;
                                                            if (iA1 != i29) {
                                                                bArr8 = bArr5;
                                                                iP = iP;
                                                                i47 = i47;
                                                                obj8 = obj2;
                                                                i2 = i30;
                                                                of9Var6 = of9Var2;
                                                                i49 = i49;
                                                                unsafe9 = unsafe;
                                                                i51 = 1048575;
                                                                i50 = i28 == true ? 1 : 0;
                                                                i48 = i48;
                                                            } else {
                                                                i5 = iA1;
                                                                iP = iP;
                                                                i49 = i49;
                                                                bArr2 = bArr5;
                                                                i6 = i28;
                                                                i48 = i48;
                                                            }
                                                            break;
                                                        } else {
                                                            iY5 = ly8.Y(bArr6, iY6, of9Var);
                                                            i40 = of9Var.a;
                                                            if (i40 >= 0) {
                                                                throw xh9.b();
                                                            }
                                                            if (i40 <= bArr6.length - iY5) {
                                                                throw xh9.c();
                                                            }
                                                            if (i40 == 0) {
                                                                oh9Var.add(hg9.c);
                                                            } else {
                                                                oh9Var.add(hg9.g(bArr6, iY5, i40));
                                                                iY5 += i40;
                                                            }
                                                        }
                                                    }
                                                    iA1 = iY5;
                                                    bArr5 = bArr6;
                                                    i30 = i37;
                                                    i29 = i38;
                                                    of9Var2 = of9Var;
                                                    if (iA1 != i29) {
                                                        bArr8 = bArr5;
                                                        iP = iP;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        i2 = i30;
                                                        of9Var6 = of9Var2;
                                                        i49 = i49;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i50 = i28 == true ? 1 : 0;
                                                        i48 = i48;
                                                    } else {
                                                        i5 = iA1;
                                                        iP = iP;
                                                        i49 = i49;
                                                        bArr2 = bArr5;
                                                        i6 = i28;
                                                        i48 = i48;
                                                    }
                                                }
                                                bArr5 = bArr6;
                                                i30 = i37;
                                                i29 = i38;
                                                of9Var2 = of9Var;
                                                iA1 = i29;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                                break;
                                            case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                                            case 44:
                                                if (z != 2) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                if (z == 0) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                bArr5 = bArr;
                                                i30 = i2;
                                                i29 = iA1;
                                                of9Var2 = of9Var;
                                                iA1 = i29;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                                break;
                                                break;
                                            case 33:
                                            case 47:
                                                if (z != 2) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                if (z == 0) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                bArr5 = bArr;
                                                i30 = i2;
                                                i29 = iA1;
                                                of9Var2 = of9Var;
                                                iA1 = i29;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                                break;
                                                break;
                                            case 34:
                                            case 48:
                                                bArr6 = bArr;
                                                i37 = i2;
                                                of9Var = of9Var;
                                                i48 = i48;
                                                unsafe = unsafe;
                                                i28 = i28 == true ? 1 : 0;
                                                i38 = iA1;
                                                i49 = i49;
                                                if (z != 2) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                if (z == 0) {
                                                    e6.d();
                                                    return 0;
                                                }
                                                bArr5 = bArr6;
                                                i30 = i37;
                                                i29 = i38;
                                                of9Var2 = of9Var;
                                                iA1 = i29;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                                break;
                                                break;
                                            default:
                                                if (z == 3) {
                                                    jk9VarT = t(iP);
                                                    i41 = ((i28 == true ? 1 : 0) & (-8)) | 4;
                                                    ih9 ih9VarZzd = jk9VarT.zzd();
                                                    oj9Var = (oj9) jk9VarT;
                                                    i37 = i2;
                                                    of9Var = of9Var;
                                                    i48 = i48;
                                                    i28 = i28 == true ? 1 : 0;
                                                    i49 = i49;
                                                    bArr6 = bArr;
                                                    int iM2 = oj9Var.m(ih9VarZzd, bArr6, i42, i37, i41, of9Var);
                                                    of9Var.c = ih9VarZzd;
                                                    jk9VarT.a(ih9VarZzd);
                                                    of9Var.c = ih9VarZzd;
                                                    oh9Var.add(ih9VarZzd);
                                                    i43 = iM2;
                                                    while (true) {
                                                        if (i43 < i37) {
                                                            i44 = i42;
                                                            iY7 = ly8.Y(bArr6, i43, of9Var);
                                                            oj9Var2 = oj9Var;
                                                            if (i28 == of9Var.a) {
                                                                i42 = iA1;
                                                                ih9 ih9VarZzd2 = jk9VarT.zzd();
                                                                oj9Var = oj9Var2;
                                                                int iM3 = oj9Var.m(ih9VarZzd2, bArr6, iY7, i37, i41, of9Var);
                                                                of9Var.c = ih9VarZzd2;
                                                                jk9VarT.a(ih9VarZzd2);
                                                                of9Var.c = ih9VarZzd2;
                                                                oh9Var.add(ih9VarZzd2);
                                                                i43 = iM3;
                                                                i42 = i44;
                                                                unsafe = unsafe;
                                                            } else {
                                                                i42 = iA1;
                                                                i38 = i44;
                                                            }
                                                        } else {
                                                            i42 = iA1;
                                                            i38 = i42;
                                                        }
                                                    }
                                                    iA1 = i43;
                                                    bArr5 = bArr6;
                                                    i30 = i37;
                                                    i29 = i38;
                                                    of9Var2 = of9Var;
                                                    if (iA1 != i29) {
                                                        bArr8 = bArr5;
                                                        iP = iP;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        i2 = i30;
                                                        of9Var6 = of9Var2;
                                                        i49 = i49;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i50 = i28 == true ? 1 : 0;
                                                        i48 = i48;
                                                    } else {
                                                        i5 = iA1;
                                                        iP = iP;
                                                        i49 = i49;
                                                        bArr2 = bArr5;
                                                        i6 = i28;
                                                        i48 = i48;
                                                    }
                                                } else {
                                                    i48 = i48;
                                                    unsafe = unsafe;
                                                    i28 = i28 == true ? 1 : 0;
                                                    i49 = i49;
                                                    bArr5 = bArr;
                                                    i30 = i2;
                                                    of9Var2 = of9Var;
                                                    i29 = iA1;
                                                    iA1 = i29;
                                                    if (iA1 != i29) {
                                                        bArr8 = bArr5;
                                                        iP = iP;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        i2 = i30;
                                                        of9Var6 = of9Var2;
                                                        i49 = i49;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i50 = i28 == true ? 1 : 0;
                                                        i48 = i48;
                                                    } else {
                                                        i5 = iA1;
                                                        iP = iP;
                                                        i49 = i49;
                                                        bArr2 = bArr5;
                                                        i6 = i28;
                                                        i48 = i48;
                                                    }
                                                }
                                                break;
                                        }
                                    } else {
                                        i48 = i48;
                                        i49 = i49;
                                        i28 = i50 == true ? 1 : 0;
                                        unsafe = unsafe;
                                        bArr5 = bArr;
                                        of9Var2 = of9Var;
                                        if (iQ == 50) {
                                            unsafe8 = l;
                                            j3 = iArr[iP + 2] & 1048575;
                                            switch (iQ) {
                                                case 51:
                                                    iA1 = iA1;
                                                    i45 = i28 == true ? 1 : 0;
                                                    iP = iP;
                                                    bArr2 = bArr;
                                                    if (z == 1) {
                                                        unsafe8.putObject(obj2, j, Double.valueOf(Double.longBitsToDouble(ly8.c0(bArr2, iA1))));
                                                        iY8 = iA1 + 8;
                                                        unsafe8.putInt(obj2, j3, i47);
                                                    } else {
                                                        iY8 = iA1;
                                                    }
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                    break;
                                                case 52:
                                                    iA1 = iA1;
                                                    i45 = i28 == true ? 1 : 0;
                                                    iP = iP;
                                                    bArr2 = bArr;
                                                    if (z == 5) {
                                                        unsafe8.putObject(obj2, j, Float.valueOf(Float.intBitsToFloat(ly8.V(bArr2, iA1))));
                                                        iY8 = iA1 + 4;
                                                        unsafe8.putInt(obj2, j3, i47);
                                                    } else {
                                                        iY8 = iA1;
                                                    }
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                    break;
                                                case 53:
                                                case 54:
                                                    iA1 = iA1;
                                                    i45 = i28 == true ? 1 : 0;
                                                    iP = iP;
                                                    bArr2 = bArr;
                                                    if (z == 0) {
                                                        iA0 = ly8.a0(bArr2, iA1, of9Var2);
                                                        unsafe8.putObject(obj2, j, Long.valueOf(of9Var2.b));
                                                        unsafe8.putInt(obj2, j3, i47);
                                                        iY8 = iA0;
                                                    } else {
                                                        iY8 = iA1;
                                                    }
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                    break;
                                                case 55:
                                                case 62:
                                                    iA1 = iA1;
                                                    i45 = i28 == true ? 1 : 0;
                                                    iP = iP;
                                                    bArr2 = bArr;
                                                    if (z == 0) {
                                                        iY8 = ly8.Y(bArr2, iA1, of9Var2);
                                                        unsafe8.putObject(obj2, j, Integer.valueOf(of9Var2.a));
                                                        unsafe8.putInt(obj2, j3, i47);
                                                    } else {
                                                        iY8 = iA1;
                                                    }
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                    break;
                                                case 56:
                                                case 65:
                                                    iA1 = iA1;
                                                    i45 = i28 == true ? 1 : 0;
                                                    iP = iP;
                                                    bArr2 = bArr;
                                                    if (z == 1) {
                                                        unsafe8.putObject(obj2, j, Long.valueOf(ly8.c0(bArr2, iA1)));
                                                        iY8 = iA1 + 8;
                                                        unsafe8.putInt(obj2, j3, i47);
                                                    } else {
                                                        iY8 = iA1;
                                                    }
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                    break;
                                                case 57:
                                                case 64:
                                                    iA1 = iA1;
                                                    i45 = i28 == true ? 1 : 0;
                                                    iP = iP;
                                                    bArr2 = bArr;
                                                    if (z == 5) {
                                                        unsafe8.putObject(obj2, j, Integer.valueOf(ly8.V(bArr2, iA1)));
                                                        iY8 = iA1 + 4;
                                                        unsafe8.putInt(obj2, j3, i47);
                                                    } else {
                                                        iY8 = iA1;
                                                    }
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                    break;
                                                case 58:
                                                    iA1 = iA1;
                                                    i45 = i28 == true ? 1 : 0;
                                                    iP = iP;
                                                    bArr2 = bArr;
                                                    if (z == 0) {
                                                        iA0 = ly8.a0(bArr2, iA1, of9Var2);
                                                        if (of9Var2.b != 0) {
                                                            z3 = true;
                                                        } else {
                                                            z3 = false;
                                                        }
                                                        unsafe8.putObject(obj2, j, Boolean.valueOf(z3));
                                                        unsafe8.putInt(obj2, j3, i47);
                                                        iY8 = iA0;
                                                    } else {
                                                        iY8 = iA1;
                                                    }
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                    break;
                                                case 59:
                                                    iA1 = iA1;
                                                    i45 = i28 == true ? 1 : 0;
                                                    bArr2 = bArr;
                                                    if (z == 2) {
                                                        iY9 = ly8.Y(bArr2, iA1, of9Var2);
                                                        i46 = of9Var2.a;
                                                        if (i46 == 0) {
                                                            unsafe8.putObject(obj2, j, "");
                                                        } else {
                                                            if ((i7 & 536870912) != 0) {
                                                                om9.a.getClass();
                                                                if (!nh4.t(bArr2, iY9, iY9 + i46)) {
                                                                    throw xh9.a();
                                                                }
                                                            }
                                                            unsafe8.putObject(obj2, j, new String(bArr2, iY9, i46, vh9.a));
                                                            iY9 += i46;
                                                        }
                                                        unsafe8.putInt(obj2, j3, i47);
                                                        iY8 = iY9;
                                                    } else {
                                                        iP = iP;
                                                        iY8 = iA1;
                                                    }
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                    break;
                                                case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                                                    bArr7 = bArr;
                                                    i45 = i28 == true ? 1 : 0;
                                                    if (z == 2) {
                                                        Object objV = v(obj2, i47, iP);
                                                        int iB0 = ly8.b0(objV, t(iP), bArr7, iA1, i2, of9Var2);
                                                        bArr2 = bArr7;
                                                        h(obj2, i47, iP, objV);
                                                        iY8 = iB0;
                                                        iP = iP;
                                                        if (iY8 != iA1) {
                                                            bArr8 = bArr2;
                                                            iA1 = iY8;
                                                            i47 = i47;
                                                            obj8 = obj2;
                                                            of9Var6 = of9Var2;
                                                            i48 = i48;
                                                            iP = iP;
                                                            unsafe9 = unsafe;
                                                            i51 = 1048575;
                                                            i2 = i2;
                                                            i50 = i45;
                                                            i49 = i49;
                                                        } else {
                                                            i5 = iY8;
                                                            i6 = i45;
                                                            i49 = i49;
                                                            i48 = i48;
                                                            iP = iP;
                                                        }
                                                    }
                                                    iA1 = iA1;
                                                    bArr2 = bArr7;
                                                    iP = iP;
                                                    iY8 = iA1;
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                    break;
                                                case 61:
                                                    bArr7 = bArr;
                                                    i45 = i28 == true ? 1 : 0;
                                                    if (z == 2) {
                                                        iT = ly8.T(bArr7, iA1, of9Var2);
                                                        unsafe8.putObject(obj2, j, of9Var2.c);
                                                        unsafe8.putInt(obj2, j3, i47);
                                                        bArr2 = bArr7;
                                                        iY8 = iT;
                                                        iP = iP;
                                                        if (iY8 != iA1) {
                                                            bArr8 = bArr2;
                                                            iA1 = iY8;
                                                            i47 = i47;
                                                            obj8 = obj2;
                                                            of9Var6 = of9Var2;
                                                            i48 = i48;
                                                            iP = iP;
                                                            unsafe9 = unsafe;
                                                            i51 = 1048575;
                                                            i2 = i2;
                                                            i50 = i45;
                                                            i49 = i49;
                                                        } else {
                                                            i5 = iY8;
                                                            i6 = i45;
                                                            i49 = i49;
                                                            i48 = i48;
                                                            iP = iP;
                                                        }
                                                    }
                                                    iA1 = iA1;
                                                    bArr2 = bArr7;
                                                    iP = iP;
                                                    iY8 = iA1;
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                    break;
                                                case 63:
                                                    bArr7 = bArr;
                                                    i45 = i28 == true ? 1 : 0;
                                                    if (z == 0) {
                                                        iT = ly8.Y(bArr7, iA1, of9Var2);
                                                        int i69 = of9Var2.a;
                                                        s(iP);
                                                        unsafe8.putObject(obj2, j, Integer.valueOf(i69));
                                                        unsafe8.putInt(obj2, j3, i47);
                                                        bArr2 = bArr7;
                                                        iY8 = iT;
                                                        iP = iP;
                                                        if (iY8 != iA1) {
                                                            bArr8 = bArr2;
                                                            iA1 = iY8;
                                                            i47 = i47;
                                                            obj8 = obj2;
                                                            of9Var6 = of9Var2;
                                                            i48 = i48;
                                                            iP = iP;
                                                            unsafe9 = unsafe;
                                                            i51 = 1048575;
                                                            i2 = i2;
                                                            i50 = i45;
                                                            i49 = i49;
                                                        } else {
                                                            i5 = iY8;
                                                            i6 = i45;
                                                            i49 = i49;
                                                            i48 = i48;
                                                            iP = iP;
                                                        }
                                                    }
                                                    iA1 = iA1;
                                                    bArr2 = bArr7;
                                                    iP = iP;
                                                    iY8 = iA1;
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                    break;
                                                case 66:
                                                    bArr7 = bArr;
                                                    i45 = i28 == true ? 1 : 0;
                                                    if (z == 0) {
                                                        iT = ly8.Y(bArr7, iA1, of9Var2);
                                                        int i70 = of9Var2.a;
                                                        unsafe8.putObject(obj2, j, Integer.valueOf((i70 >>> 1) ^ (-(i70 & 1))));
                                                        unsafe8.putInt(obj2, j3, i47);
                                                        bArr2 = bArr7;
                                                        iY8 = iT;
                                                        iP = iP;
                                                        if (iY8 != iA1) {
                                                            bArr8 = bArr2;
                                                            iA1 = iY8;
                                                            i47 = i47;
                                                            obj8 = obj2;
                                                            of9Var6 = of9Var2;
                                                            i48 = i48;
                                                            iP = iP;
                                                            unsafe9 = unsafe;
                                                            i51 = 1048575;
                                                            i2 = i2;
                                                            i50 = i45;
                                                            i49 = i49;
                                                        } else {
                                                            i5 = iY8;
                                                            i6 = i45;
                                                            i49 = i49;
                                                            i48 = i48;
                                                            iP = iP;
                                                        }
                                                    }
                                                    iA1 = iA1;
                                                    bArr2 = bArr7;
                                                    iP = iP;
                                                    iY8 = iA1;
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                    break;
                                                case 67:
                                                    bArr7 = bArr;
                                                    if (z == 0) {
                                                        iT = ly8.a0(bArr7, iA1, of9Var2);
                                                        i45 = i28 == true ? 1 : 0;
                                                        long j5 = of9Var2.b;
                                                        unsafe8.putObject(obj2, j, Long.valueOf((j5 >>> 1) ^ (-(j5 & 1))));
                                                        unsafe8.putInt(obj2, j3, i47);
                                                        bArr2 = bArr7;
                                                        iY8 = iT;
                                                        iP = iP;
                                                        if (iY8 != iA1) {
                                                            bArr8 = bArr2;
                                                            iA1 = iY8;
                                                            i47 = i47;
                                                            obj8 = obj2;
                                                            of9Var6 = of9Var2;
                                                            i48 = i48;
                                                            iP = iP;
                                                            unsafe9 = unsafe;
                                                            i51 = 1048575;
                                                            i2 = i2;
                                                            i50 = i45;
                                                            i49 = i49;
                                                        } else {
                                                            i5 = iY8;
                                                            i6 = i45;
                                                            i49 = i49;
                                                            i48 = i48;
                                                            iP = iP;
                                                        }
                                                    } else {
                                                        i45 = i28 == true ? 1 : 0;
                                                        iA1 = iA1;
                                                        bArr2 = bArr7;
                                                        iP = iP;
                                                        iY8 = iA1;
                                                        if (iY8 != iA1) {
                                                            bArr8 = bArr2;
                                                            iA1 = iY8;
                                                            i47 = i47;
                                                            obj8 = obj2;
                                                            of9Var6 = of9Var2;
                                                            i48 = i48;
                                                            iP = iP;
                                                            unsafe9 = unsafe;
                                                            i51 = 1048575;
                                                            i2 = i2;
                                                            i50 = i45;
                                                            i49 = i49;
                                                        } else {
                                                            i5 = iY8;
                                                            i6 = i45;
                                                            i49 = i49;
                                                            i48 = i48;
                                                            iP = iP;
                                                        }
                                                    }
                                                    break;
                                                case 68:
                                                    if (z == 3) {
                                                        Object objV2 = v(obj2, i47, iP);
                                                        int iM4 = ((oj9) t(iP)).m(objV2, bArr, iA1, i2, ((i28 == true ? 1 : 0) & (-8)) | 4, of9Var2);
                                                        of9Var2.c = objV2;
                                                        h(obj2, i47, iP, objV2);
                                                        iA1 = iA1;
                                                        bArr2 = bArr;
                                                        i45 = i28 == true ? 1 : 0;
                                                        iP = iP;
                                                        iY8 = iM4;
                                                    }
                                                    if (iY8 != iA1) {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                        break;
                                                    } else {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                        break;
                                                    }
                                                default:
                                                    iA1 = iA1;
                                                    i45 = i28 == true ? 1 : 0;
                                                    iP = iP;
                                                    bArr2 = bArr;
                                                    iY8 = iA1;
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                    break;
                                            }
                                        } else {
                                            if (z == 2) {
                                                unsafe7 = l;
                                                int i71 = iP / 3;
                                                Object obj19 = this.b[i71 + i71];
                                                object = unsafe7.getObject(obj2, j);
                                                if (!((si9) object).a) {
                                                    si9Var = si9.b;
                                                    if (si9Var.isEmpty()) {
                                                        si9Var2 = new si9();
                                                    } else {
                                                        si9 si9Var3 = new si9(si9Var);
                                                        si9Var3.a = true;
                                                        si9Var2 = si9Var3;
                                                    }
                                                    ui9.a(si9Var2, object);
                                                    unsafe7.putObject(obj2, j, si9Var2);
                                                }
                                                throw eq3.g(obj19);
                                            }
                                            i5 = iA1;
                                            iP = iP;
                                            i49 = i49;
                                            bArr2 = bArr5;
                                            i6 = i28;
                                            i48 = i48;
                                        }
                                    }
                                } else if (z == 2) {
                                    oh9VarZzd = (oh9) unsafe5.getObject(obj7, j);
                                    if (!((lf9) oh9VarZzd).a) {
                                        int size2 = oh9VarZzd.size();
                                        oh9VarZzd = oh9VarZzd.zzd(size2 != 0 ? size2 + size2 : 10);
                                        unsafe5.putObject(obj7, j, oh9VarZzd);
                                    }
                                    oh9 oh9Var2 = oh9VarZzd;
                                    bArr8 = bArr;
                                    i2 = i2;
                                    iA1 = ly8.W(t(iP), i50 == true ? 1 : 0, bArr8, i53, i2, oh9Var2, of9Var);
                                    of9Var6 = of9Var;
                                    iP = iP;
                                    i47 = i47;
                                    unsafe9 = unsafe5;
                                    i51 = 1048575;
                                    i50 = i50 == true ? 1 : 0;
                                    obj8 = obj;
                                } else {
                                    obj2 = obj7;
                                    iA1 = i53;
                                    bArr5 = bArr;
                                    i48 = i48;
                                    unsafe = unsafe5;
                                    i28 = i50 == true ? 1 : 0;
                                    of9Var2 = of9Var;
                                    i49 = i49;
                                    i5 = iA1;
                                    iP = iP;
                                    i49 = i49;
                                    bArr2 = bArr5;
                                    i6 = i28;
                                    i48 = i48;
                                }
                            }
                        } else {
                            unsafe = unsafe9;
                            i5 = i53;
                            iArr = iArr2;
                            iP = 0;
                            bArr2 = bArr;
                            obj2 = obj8;
                            i6 = i50 == true ? 1 : 0;
                            of9Var2 = of9Var6;
                        }
                        if (i6 == i3 || i3 == 0) {
                            ih9Var = (ih9) obj2;
                            il9VarA = ih9Var.zzc;
                            if (il9VarA == il9.e) {
                                il9VarA = il9.a();
                                ih9Var.zzc = il9VarA;
                            }
                            int i72 = i6;
                            int iX = ly8.X(i72 == true ? 1 : 0, bArr2, i5, i2, il9VarA, of9Var2);
                            of9Var6 = of9Var;
                            i50 = i72 == true ? 1 : 0;
                            i2 = i2;
                            i47 = i47;
                            obj8 = obj2;
                            unsafe9 = unsafe;
                            i51 = 1048575;
                            iA1 = iX;
                            bArr8 = bArr;
                        } else {
                            i2 = i2;
                            i50 = i6;
                            iA1 = i5;
                            unsafe9 = unsafe;
                        }
                    }
                    i4 = -1;
                    if (iP == i4) {
                        z = (i50 == true ? 1 : 0) & 7;
                        i7 = iArr2[iP + 1];
                        iQ = q(i7);
                        j = i7 & i51;
                        if (iQ <= 17) {
                            int i512 = iArr2[iP + 2];
                            i8 = 1 << (i512 >>> 20);
                            i9 = i512 & i51;
                            if (i9 != i48) {
                                i26 = i51;
                                if (i48 != i26) {
                                    unsafe9.putInt(obj8, i48, i49);
                                    i26 = 1048575;
                                }
                                if (i9 == i26) {
                                    i27 = 0;
                                } else {
                                    i27 = unsafe9.getInt(obj8, i9);
                                }
                                i10 = i27;
                                i11 = i9;
                            } else {
                                i10 = i49;
                                i11 = i48;
                            }
                            switch (iQ) {
                                case 0:
                                    bArr3 = bArr;
                                    unsafe2 = unsafe9;
                                    iArr2 = iArr2;
                                    i12 = i11;
                                    of9Var3 = of9Var;
                                    i13 = i50 == true ? 1 : 0;
                                    i14 = i53;
                                    if (z == 1) {
                                        fm9.c.e(obj8, j, Double.longBitsToDouble(ly8.c0(bArr3, i14)));
                                        iA1 = i14 + 8;
                                        i49 = i10 | i8;
                                        bArr8 = bArr3;
                                        unsafe9 = unsafe2;
                                        of9Var6 = of9Var3;
                                        i50 = i13;
                                        i51 = 1048575;
                                        i48 = i12;
                                    } else {
                                        obj4 = obj8;
                                        bArr2 = bArr3;
                                        iArr = iArr2;
                                        unsafe = unsafe2;
                                        iP = iP;
                                        i5 = i14;
                                        i6 = i13;
                                        i49 = i10;
                                        i48 = i12;
                                        of9Var2 = of9Var3;
                                        obj2 = obj4;
                                    }
                                    break;
                                case 1:
                                    bArr3 = bArr;
                                    unsafe2 = unsafe9;
                                    iArr2 = iArr2;
                                    i12 = i11;
                                    of9Var3 = of9Var;
                                    i13 = i50 == true ? 1 : 0;
                                    i14 = i53;
                                    if (z == 5) {
                                        fm9.c.g(obj8, j, Float.intBitsToFloat(ly8.V(bArr3, i14)));
                                        iA1 = i14 + 4;
                                        i49 = i10 | i8;
                                        bArr8 = bArr3;
                                        unsafe9 = unsafe2;
                                        of9Var6 = of9Var3;
                                        i50 = i13;
                                        i51 = 1048575;
                                        i48 = i12;
                                    } else {
                                        obj4 = obj8;
                                        bArr2 = bArr3;
                                        iArr = iArr2;
                                        unsafe = unsafe2;
                                        iP = iP;
                                        i5 = i14;
                                        i6 = i13;
                                        i49 = i10;
                                        i48 = i12;
                                        of9Var2 = of9Var3;
                                        obj2 = obj4;
                                    }
                                    break;
                                case 2:
                                case 3:
                                    bArr3 = bArr;
                                    i12 = i11;
                                    of9Var3 = of9Var;
                                    i13 = i50 == true ? 1 : 0;
                                    i14 = i53;
                                    if (z == 0) {
                                        int iA4 = ly8.a0(bArr3, i14, of9Var3);
                                        unsafe9.putLong(obj8, j, of9Var3.b);
                                        i49 = i10 | i8;
                                        bArr8 = bArr3;
                                        iA1 = iA4;
                                        of9Var6 = of9Var3;
                                        i50 = i13;
                                        i51 = 1048575;
                                        i48 = i12;
                                    } else {
                                        unsafe2 = unsafe9;
                                        obj4 = obj8;
                                        bArr2 = bArr3;
                                        iArr = iArr2;
                                        unsafe = unsafe2;
                                        iP = iP;
                                        i5 = i14;
                                        i6 = i13;
                                        i49 = i10;
                                        i48 = i12;
                                        of9Var2 = of9Var3;
                                        obj2 = obj4;
                                    }
                                    break;
                                case 4:
                                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                    bArr3 = bArr;
                                    i12 = i11;
                                    of9Var3 = of9Var;
                                    i13 = i50 == true ? 1 : 0;
                                    i14 = i53;
                                    if (z == 0) {
                                        int iY11 = ly8.Y(bArr3, i14, of9Var3);
                                        unsafe9.putInt(obj8, j, of9Var3.a);
                                        i49 = i10 | i8;
                                        i48 = i12;
                                        iA1 = iY11;
                                        bArr8 = bArr3;
                                        iP = iP;
                                        i47 = i47;
                                        of9Var6 = of9Var3;
                                        i50 = i13 == true ? 1 : 0;
                                        i51 = 1048575;
                                        i2 = i2;
                                    } else {
                                        unsafe2 = unsafe9;
                                        obj4 = obj8;
                                        bArr2 = bArr3;
                                        iArr = iArr2;
                                        unsafe = unsafe2;
                                        iP = iP;
                                        i5 = i14;
                                        i6 = i13;
                                        i49 = i10;
                                        i48 = i12;
                                        of9Var2 = of9Var3;
                                        obj2 = obj4;
                                    }
                                    break;
                                case 5:
                                case 14:
                                    unsafe2 = unsafe9;
                                    obj6 = obj8;
                                    iArr2 = iArr2;
                                    i12 = i11;
                                    i13 = i50 == true ? 1 : 0;
                                    if (z == 1) {
                                        obj8 = obj6;
                                        unsafe9 = unsafe2;
                                        unsafe9.putLong(obj8, j, ly8.c0(bArr, i53));
                                        iA1 = i53 + 8;
                                        i49 = i10 | i8;
                                        i48 = i12;
                                        i2 = i2;
                                        bArr8 = bArr;
                                        of9Var6 = of9Var;
                                        i50 = i13 == true ? 1 : 0;
                                    } else {
                                        of9Var3 = of9Var;
                                        i14 = i53;
                                        obj8 = obj6;
                                        bArr3 = bArr;
                                        obj4 = obj8;
                                        bArr2 = bArr3;
                                        iArr = iArr2;
                                        unsafe = unsafe2;
                                        iP = iP;
                                        i5 = i14;
                                        i6 = i13;
                                        i49 = i10;
                                        i48 = i12;
                                        of9Var2 = of9Var3;
                                        obj2 = obj4;
                                    }
                                    break;
                                case 6:
                                case 13:
                                    unsafe2 = unsafe9;
                                    obj3 = obj8;
                                    i12 = i11;
                                    i15 = i53;
                                    bArr4 = bArr;
                                    of9Var4 = of9Var;
                                    i13 = i50 == true ? 1 : 0;
                                    if (z == 5) {
                                        unsafe2.putInt(obj3, j, ly8.V(bArr4, i15));
                                        iA1 = i15 + 4;
                                        i49 = i10 | i8;
                                        Object obj110 = obj3;
                                        of9Var6 = of9Var4;
                                        obj8 = obj110;
                                        i2 = i2;
                                        bArr8 = bArr4;
                                        unsafe9 = unsafe2;
                                        i50 = i13;
                                        i51 = 1048575;
                                        i48 = i12;
                                    } else {
                                        Object obj111 = obj3;
                                        bArr3 = bArr4;
                                        obj4 = obj111;
                                        of9Var3 = of9Var4;
                                        i14 = i15;
                                        bArr2 = bArr3;
                                        iArr = iArr2;
                                        unsafe = unsafe2;
                                        iP = iP;
                                        i5 = i14;
                                        i6 = i13;
                                        i49 = i10;
                                        i48 = i12;
                                        of9Var2 = of9Var3;
                                        obj2 = obj4;
                                    }
                                    break;
                                case 7:
                                    unsafe2 = unsafe9;
                                    obj3 = obj8;
                                    i12 = i11;
                                    i15 = i53;
                                    bArr4 = bArr;
                                    of9Var4 = of9Var;
                                    i13 = i50 == true ? 1 : 0;
                                    if (z == 0) {
                                        iA1 = ly8.a0(bArr4, i15, of9Var4);
                                        if (of9Var4.b != 0) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        fm9.c.c(obj3, j, z2);
                                        i49 = i10 | i8;
                                        Object obj112 = obj3;
                                        of9Var6 = of9Var4;
                                        obj8 = obj112;
                                        i2 = i2;
                                        bArr8 = bArr4;
                                        unsafe9 = unsafe2;
                                        i50 = i13;
                                        i51 = 1048575;
                                        i48 = i12;
                                    } else {
                                        Object obj113 = obj3;
                                        bArr3 = bArr4;
                                        obj4 = obj113;
                                        of9Var3 = of9Var4;
                                        i14 = i15;
                                        bArr2 = bArr3;
                                        iArr = iArr2;
                                        unsafe = unsafe2;
                                        iP = iP;
                                        i5 = i14;
                                        i6 = i13;
                                        i49 = i10;
                                        i48 = i12;
                                        of9Var2 = of9Var3;
                                        obj2 = obj4;
                                    }
                                    break;
                                case 8:
                                    unsafe2 = unsafe9;
                                    obj3 = obj8;
                                    i12 = i11;
                                    i15 = i53;
                                    bArr4 = bArr;
                                    of9Var4 = of9Var;
                                    if (z == 2) {
                                        if ((i7 & 536870912) != 0) {
                                            iY2 = ly8.Y(bArr4, i15, of9Var4);
                                            i17 = of9Var4.a;
                                            if (i17 >= 0) {
                                                throw xh9.b();
                                            }
                                            if (i17 == 0) {
                                                of9Var4.c = "";
                                                iA1 = iY2;
                                                i13 = i50 == true ? 1 : 0;
                                            } else {
                                                nh4 nh4Var2 = om9.a;
                                                length = bArr4.length;
                                                if ((((length - iY2) - i17) | iY2 | i17) >= 0) {
                                                    throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(iY2), Integer.valueOf(i17)));
                                                }
                                                i18 = iY2 + i17;
                                                cArr = new char[i17];
                                                i19 = 0;
                                                while (iY2 < i18) {
                                                    b6 = bArr4[iY2];
                                                    if (b6 >= 0) {
                                                        iY2++;
                                                        cArr[i19] = (char) b6;
                                                        i19++;
                                                    } else {
                                                        while (iY2 < i18) {
                                                            i20 = iY2 + 1;
                                                            i21 = iY2;
                                                            b = bArr4[i21];
                                                            if (b >= 0) {
                                                                i22 = i19 + 1;
                                                                cArr[i19] = (char) b;
                                                                iY2 = i20;
                                                                while (true) {
                                                                    i19 = i22;
                                                                    if (iY2 >= i18) {
                                                                    }
                                                                    break;
                                                                    iY2++;
                                                                    i22 = i19 + 1;
                                                                    cArr[i19] = (char) b2;
                                                                }
                                                            } else {
                                                                objArr = i50 == true ? 1 : 0;
                                                                if (b >= -32) {
                                                                    if (i20 < i18) {
                                                                        throw xh9.a();
                                                                    }
                                                                    int i610 = i21 + 2;
                                                                    byte b13 = bArr4[i20];
                                                                    int i611 = i19 + 1;
                                                                    i23 = i18;
                                                                    if (b >= -62) {
                                                                    }
                                                                    throw xh9.a();
                                                                }
                                                                i23 = i18;
                                                                if (b < -16) {
                                                                    if (i20 < i23 - 2) {
                                                                        throw xh9.a();
                                                                    }
                                                                    b3 = bArr4[i20];
                                                                    int i513 = i21 + 3;
                                                                    byte b14 = bArr4[i21 + 2];
                                                                    int i514 = i21 + 4;
                                                                    byte b15 = bArr4[i513];
                                                                    if (!xh8.R(b3)) {
                                                                        if ((((b3 + 112) + (b << 28)) >> 30) != 0) {
                                                                        }
                                                                    }
                                                                    throw xh9.a();
                                                                }
                                                                if (i20 < i23 - 1) {
                                                                    throw xh9.a();
                                                                }
                                                                int i612 = i21 + 2;
                                                                b4 = bArr4[i20];
                                                                i24 = i21 + 3;
                                                                b5 = bArr4[i612];
                                                                i25 = i19 + 1;
                                                                if (xh8.R(b4)) {
                                                                    if (b != -32) {
                                                                        if (b != -19) {
                                                                            if (!xh8.R(b5)) {
                                                                                cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                                iY2 = i24;
                                                                                i50 = objArr == true ? 1 : 0;
                                                                                i18 = i23;
                                                                                i19 = i25;
                                                                            }
                                                                        } else if (b4 < -96) {
                                                                            b = -19;
                                                                            if (!xh8.R(b5)) {
                                                                                cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                                iY2 = i24;
                                                                                i50 = objArr == true ? 1 : 0;
                                                                                i18 = i23;
                                                                                i19 = i25;
                                                                            }
                                                                        }
                                                                    } else if (b4 >= -96) {
                                                                        b = -32;
                                                                        if (b != -19) {
                                                                            if (!xh8.R(b5)) {
                                                                                cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                                iY2 = i24;
                                                                                i50 = objArr == true ? 1 : 0;
                                                                                i18 = i23;
                                                                                i19 = i25;
                                                                            }
                                                                        } else if (b4 < -96) {
                                                                            b = -19;
                                                                            if (!xh8.R(b5)) {
                                                                                cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                                iY2 = i24;
                                                                                i50 = objArr == true ? 1 : 0;
                                                                                i18 = i23;
                                                                                i19 = i25;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                throw xh9.a();
                                                                i50 = objArr == true ? 1 : 0;
                                                                i18 = i23;
                                                            }
                                                        }
                                                        i13 = i50 == true ? 1 : 0;
                                                        of9Var4.c = new String(cArr, 0, i19);
                                                        iA1 = i18;
                                                    }
                                                }
                                                while (iY2 < i18) {
                                                    i20 = iY2 + 1;
                                                    i21 = iY2;
                                                    b = bArr4[i21];
                                                    if (b >= 0) {
                                                        i22 = i19 + 1;
                                                        cArr[i19] = (char) b;
                                                        iY2 = i20;
                                                        while (true) {
                                                            i19 = i22;
                                                            if (iY2 >= i18) {
                                                            }
                                                            break;
                                                            iY2++;
                                                            i22 = i19 + 1;
                                                            cArr[i19] = (char) b2;
                                                        }
                                                    } else {
                                                        objArr = i50 == true ? 1 : 0;
                                                        if (b >= -32) {
                                                            if (i20 < i18) {
                                                                throw xh9.a();
                                                            }
                                                            int i613 = i21 + 2;
                                                            byte b16 = bArr4[i20];
                                                            int i614 = i19 + 1;
                                                            i23 = i18;
                                                            if (b >= -62) {
                                                            }
                                                            throw xh9.a();
                                                        }
                                                        i23 = i18;
                                                        if (b < -16) {
                                                            if (i20 < i23 - 2) {
                                                                throw xh9.a();
                                                            }
                                                            b3 = bArr4[i20];
                                                            int i515 = i21 + 3;
                                                            byte b17 = bArr4[i21 + 2];
                                                            int i516 = i21 + 4;
                                                            byte b18 = bArr4[i515];
                                                            if (!xh8.R(b3)) {
                                                                if ((((b3 + 112) + (b << 28)) >> 30) != 0) {
                                                                }
                                                            }
                                                            throw xh9.a();
                                                        }
                                                        if (i20 < i23 - 1) {
                                                            throw xh9.a();
                                                        }
                                                        int i615 = i21 + 2;
                                                        b4 = bArr4[i20];
                                                        i24 = i21 + 3;
                                                        b5 = bArr4[i615];
                                                        i25 = i19 + 1;
                                                        if (xh8.R(b4)) {
                                                            if (b != -32) {
                                                                if (b != -19) {
                                                                    if (!xh8.R(b5)) {
                                                                        cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                        iY2 = i24;
                                                                        i50 = objArr == true ? 1 : 0;
                                                                        i18 = i23;
                                                                        i19 = i25;
                                                                    }
                                                                } else if (b4 < -96) {
                                                                    b = -19;
                                                                    if (!xh8.R(b5)) {
                                                                        cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                        iY2 = i24;
                                                                        i50 = objArr == true ? 1 : 0;
                                                                        i18 = i23;
                                                                        i19 = i25;
                                                                    }
                                                                }
                                                            } else if (b4 >= -96) {
                                                                b = -32;
                                                                if (b != -19) {
                                                                    if (!xh8.R(b5)) {
                                                                        cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                        iY2 = i24;
                                                                        i50 = objArr == true ? 1 : 0;
                                                                        i18 = i23;
                                                                        i19 = i25;
                                                                    }
                                                                } else if (b4 < -96) {
                                                                    b = -19;
                                                                    if (!xh8.R(b5)) {
                                                                        cArr[i19] = (char) (((b & 15) << 12) | ((b4 & 63) << 6) | (b5 & 63));
                                                                        iY2 = i24;
                                                                        i50 = objArr == true ? 1 : 0;
                                                                        i18 = i23;
                                                                        i19 = i25;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        throw xh9.a();
                                                        i50 = objArr == true ? 1 : 0;
                                                        i18 = i23;
                                                    }
                                                }
                                                i13 = i50 == true ? 1 : 0;
                                                of9Var4.c = new String(cArr, 0, i19);
                                                iA1 = i18;
                                            }
                                        } else {
                                            i13 = i50 == true ? 1 : 0;
                                            iY = ly8.Y(bArr4, i15, of9Var4);
                                            i16 = of9Var4.a;
                                            if (i16 >= 0) {
                                                throw xh9.b();
                                            }
                                            if (i16 == 0) {
                                                of9Var4.c = "";
                                            } else {
                                                of9Var4.c = new String(bArr4, iY, i16, vh9.a);
                                                iY += i16;
                                            }
                                            iA1 = iY;
                                        }
                                        unsafe2.putObject(obj3, j, of9Var4.c);
                                        i49 = i10 | i8;
                                        Object obj114 = obj3;
                                        of9Var6 = of9Var4;
                                        obj8 = obj114;
                                        i2 = i2;
                                        bArr8 = bArr4;
                                        unsafe9 = unsafe2;
                                        i50 = i13;
                                        i51 = 1048575;
                                        i48 = i12;
                                    } else {
                                        i13 = i50 == true ? 1 : 0;
                                        Object obj115 = obj3;
                                        bArr3 = bArr4;
                                        obj4 = obj115;
                                        of9Var3 = of9Var4;
                                        i14 = i15;
                                        bArr2 = bArr3;
                                        iArr = iArr2;
                                        unsafe = unsafe2;
                                        iP = iP;
                                        i5 = i14;
                                        i6 = i13;
                                        i49 = i10;
                                        i48 = i12;
                                        of9Var2 = of9Var3;
                                        obj2 = obj4;
                                    }
                                    break;
                                case XmlPullParser.COMMENT /* 9 */:
                                    obj5 = obj8;
                                    unsafe3 = unsafe9;
                                    iArr2 = iArr2;
                                    i12 = i11;
                                    i15 = i53;
                                    if (z == 2) {
                                        Object objU3 = u(iP, obj5);
                                        i2 = i2;
                                        iA1 = ly8.b0(objU3, t(iP), bArr, i15, i2, of9Var);
                                        g(iP, obj5, objU3);
                                        i49 = i10 | i8;
                                        of9Var6 = of9Var;
                                        obj8 = obj5;
                                        bArr8 = bArr;
                                        unsafe9 = unsafe3;
                                        iP = iP;
                                        i47 = i47;
                                        i51 = 1048575;
                                        i48 = i12;
                                    } else {
                                        unsafe2 = unsafe3;
                                        bArr3 = bArr;
                                        obj4 = obj5;
                                        of9Var3 = of9Var;
                                        i13 = i50 == true ? 1 : 0;
                                        i14 = i15;
                                        bArr2 = bArr3;
                                        iArr = iArr2;
                                        unsafe = unsafe2;
                                        iP = iP;
                                        i5 = i14;
                                        i6 = i13;
                                        i49 = i10;
                                        i48 = i12;
                                        of9Var2 = of9Var3;
                                        obj2 = obj4;
                                    }
                                    break;
                                case 10:
                                    Object obj116 = obj8;
                                    unsafe4 = unsafe9;
                                    obj4 = obj116;
                                    bArr3 = bArr;
                                    of9Var5 = of9Var;
                                    i12 = i11;
                                    i15 = i53;
                                    if (z == 2) {
                                        iA1 = ly8.T(bArr3, i15, of9Var5);
                                        unsafe4.putObject(obj4, j, of9Var5.c);
                                        i49 = i10 | i8;
                                        Unsafe unsafe14 = unsafe4;
                                        obj8 = obj4;
                                        unsafe9 = unsafe14;
                                        i2 = i2;
                                        bArr8 = bArr3;
                                        of9Var6 = of9Var5;
                                        iP = iP;
                                        i47 = i47;
                                        i51 = 1048575;
                                        i48 = i12;
                                    } else {
                                        of9Var3 = of9Var5;
                                        i13 = i50 == true ? 1 : 0;
                                        unsafe2 = unsafe4;
                                        i14 = i15;
                                        bArr2 = bArr3;
                                        iArr = iArr2;
                                        unsafe = unsafe2;
                                        iP = iP;
                                        i5 = i14;
                                        i6 = i13;
                                        i49 = i10;
                                        i48 = i12;
                                        of9Var2 = of9Var3;
                                        obj2 = obj4;
                                    }
                                    break;
                                case 12:
                                    Object obj117 = obj8;
                                    unsafe4 = unsafe9;
                                    obj4 = obj117;
                                    bArr3 = bArr;
                                    of9Var5 = of9Var;
                                    i12 = i11;
                                    i15 = i53;
                                    if (z == 0) {
                                        iA1 = ly8.Y(bArr3, i15, of9Var5);
                                        int i616 = of9Var5.a;
                                        s(iP);
                                        unsafe4.putInt(obj4, j, i616);
                                        i49 = i10 | i8;
                                        Unsafe unsafe15 = unsafe4;
                                        obj8 = obj4;
                                        unsafe9 = unsafe15;
                                        i2 = i2;
                                        bArr8 = bArr3;
                                        of9Var6 = of9Var5;
                                        iP = iP;
                                        i47 = i47;
                                        i51 = 1048575;
                                        i48 = i12;
                                    } else {
                                        of9Var3 = of9Var5;
                                        i13 = i50 == true ? 1 : 0;
                                        unsafe2 = unsafe4;
                                        i14 = i15;
                                        bArr2 = bArr3;
                                        iArr = iArr2;
                                        unsafe = unsafe2;
                                        iP = iP;
                                        i5 = i14;
                                        i6 = i13;
                                        i49 = i10;
                                        i48 = i12;
                                        of9Var2 = of9Var3;
                                        obj2 = obj4;
                                    }
                                    break;
                                case 15:
                                    Object obj118 = obj8;
                                    unsafe4 = unsafe9;
                                    obj4 = obj118;
                                    bArr3 = bArr;
                                    of9Var5 = of9Var;
                                    i12 = i11;
                                    i15 = i53;
                                    if (z == 0) {
                                        iA1 = ly8.Y(bArr3, i15, of9Var5);
                                        int i617 = of9Var5.a;
                                        unsafe4.putInt(obj4, j, (i617 >>> 1) ^ (-(i617 & 1)));
                                        i49 = i10 | i8;
                                        Unsafe unsafe16 = unsafe4;
                                        obj8 = obj4;
                                        unsafe9 = unsafe16;
                                        i2 = i2;
                                        bArr8 = bArr3;
                                        of9Var6 = of9Var5;
                                        iP = iP;
                                        i47 = i47;
                                        i51 = 1048575;
                                        i48 = i12;
                                    } else {
                                        of9Var3 = of9Var5;
                                        i13 = i50 == true ? 1 : 0;
                                        unsafe2 = unsafe4;
                                        i14 = i15;
                                        bArr2 = bArr3;
                                        iArr = iArr2;
                                        unsafe = unsafe2;
                                        iP = iP;
                                        i5 = i14;
                                        i6 = i13;
                                        i49 = i10;
                                        i48 = i12;
                                        of9Var2 = of9Var3;
                                        obj2 = obj4;
                                    }
                                    break;
                                case Argon2.V10 /* 16 */:
                                    bArr3 = bArr;
                                    if (z == 0) {
                                        int iA5 = ly8.a0(bArr3, i53, of9Var);
                                        long j6 = of9Var.b;
                                        unsafe9.putLong(obj8, j, (-(j6 & 1)) ^ (j6 >>> 1));
                                        obj8 = obj8;
                                        unsafe9 = unsafe9;
                                        int i618 = i11;
                                        i49 = i10 | i8;
                                        bArr8 = bArr3;
                                        of9Var6 = of9Var;
                                        i48 = i618;
                                        iA1 = iA5;
                                    } else {
                                        Object obj119 = obj8;
                                        Unsafe unsafe17 = unsafe9;
                                        obj4 = obj119;
                                        iArr2 = iArr2;
                                        i12 = i11;
                                        i13 = i50 == true ? 1 : 0;
                                        i14 = i53;
                                        of9Var3 = of9Var;
                                        unsafe2 = unsafe17;
                                        bArr2 = bArr3;
                                        iArr = iArr2;
                                        unsafe = unsafe2;
                                        iP = iP;
                                        i5 = i14;
                                        i6 = i13;
                                        i49 = i10;
                                        i48 = i12;
                                        of9Var2 = of9Var3;
                                        obj2 = obj4;
                                    }
                                    break;
                                default:
                                    if (z == 3) {
                                        Object objU4 = u(iP, obj8);
                                        int iM5 = ((oj9) t(iP)).m(objU4, bArr, i53, i2, (i47 << 3) | 4, of9Var);
                                        of9Var.c = objU4;
                                        g(iP, obj8, objU4);
                                        iA1 = iM5;
                                        bArr8 = bArr;
                                        of9Var6 = of9Var;
                                        i48 = i11;
                                        i49 = i10 | i8;
                                    } else {
                                        bArr3 = bArr;
                                        unsafe2 = unsafe9;
                                        obj4 = obj8;
                                        iArr2 = iArr2;
                                        i12 = i11;
                                        i13 = i50 == true ? 1 : 0;
                                        i14 = i53;
                                        of9Var3 = of9Var;
                                        bArr2 = bArr3;
                                        iArr = iArr2;
                                        unsafe = unsafe2;
                                        iP = iP;
                                        i5 = i14;
                                        i6 = i13;
                                        i49 = i10;
                                        i48 = i12;
                                        of9Var2 = of9Var3;
                                        obj2 = obj4;
                                    }
                                    break;
                            }
                        } else {
                            obj7 = obj8;
                            unsafe5 = unsafe9;
                            iArr = iArr2;
                            if (iQ == 27) {
                                obj2 = obj7;
                                iA1 = i53;
                                unsafe = unsafe5;
                                if (iQ <= 49) {
                                    i28 = i50 == true ? 1 : 0;
                                    j2 = i7;
                                    unsafe6 = l;
                                    oh9VarZzd2 = (oh9) unsafe6.getObject(obj2, j);
                                    if (!((lf9) oh9VarZzd2).a) {
                                        int size3 = oh9VarZzd2.size();
                                        oh9VarZzd2 = oh9VarZzd2.zzd(size3 != 0 ? size3 + size3 : 10);
                                        unsafe6.putObject(obj2, j, oh9VarZzd2);
                                    }
                                    oh9Var = oh9VarZzd2;
                                    switch (iQ) {
                                        case 18:
                                        case 35:
                                            bArr5 = bArr;
                                            i48 = i48;
                                            unsafe = unsafe;
                                            i28 = i28 == true ? 1 : 0;
                                            i29 = iA1;
                                            of9Var2 = of9Var;
                                            i49 = i49;
                                            i30 = i2;
                                            if (z != 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 1) {
                                                e6.d();
                                                return 0;
                                            }
                                            iA1 = i29;
                                            if (iA1 != i29) {
                                                bArr8 = bArr5;
                                                iP = iP;
                                                i47 = i47;
                                                obj8 = obj2;
                                                i2 = i30;
                                                of9Var6 = of9Var2;
                                                i49 = i49;
                                                unsafe9 = unsafe;
                                                i51 = 1048575;
                                                i50 = i28 == true ? 1 : 0;
                                                i48 = i48;
                                            } else {
                                                i5 = iA1;
                                                iP = iP;
                                                i49 = i49;
                                                bArr2 = bArr5;
                                                i6 = i28;
                                                i48 = i48;
                                            }
                                            break;
                                            break;
                                        case Argon2.V13 /* 19 */:
                                        case 36:
                                            bArr5 = bArr;
                                            i48 = i48;
                                            unsafe = unsafe;
                                            i28 = i28 == true ? 1 : 0;
                                            i29 = iA1;
                                            of9Var2 = of9Var;
                                            i49 = i49;
                                            i30 = i2;
                                            if (z != 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 5) {
                                                e6.d();
                                                return 0;
                                            }
                                            iA1 = i29;
                                            if (iA1 != i29) {
                                                bArr8 = bArr5;
                                                iP = iP;
                                                i47 = i47;
                                                obj8 = obj2;
                                                i2 = i30;
                                                of9Var6 = of9Var2;
                                                i49 = i49;
                                                unsafe9 = unsafe;
                                                i51 = 1048575;
                                                i50 = i28 == true ? 1 : 0;
                                                i48 = i48;
                                            } else {
                                                i5 = iA1;
                                                iP = iP;
                                                i49 = i49;
                                                bArr2 = bArr5;
                                                i6 = i28;
                                                i48 = i48;
                                            }
                                            break;
                                            break;
                                        case 20:
                                        case 21:
                                        case 37:
                                        case 38:
                                            bArr5 = bArr;
                                            i48 = i48;
                                            unsafe = unsafe;
                                            i28 = i28 == true ? 1 : 0;
                                            i29 = iA1;
                                            of9Var2 = of9Var;
                                            i49 = i49;
                                            i30 = i2;
                                            if (z != 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 0) {
                                                e6.d();
                                                return 0;
                                            }
                                            iA1 = i29;
                                            if (iA1 != i29) {
                                                bArr8 = bArr5;
                                                iP = iP;
                                                i47 = i47;
                                                obj8 = obj2;
                                                i2 = i30;
                                                of9Var6 = of9Var2;
                                                i49 = i49;
                                                unsafe9 = unsafe;
                                                i51 = 1048575;
                                                i50 = i28 == true ? 1 : 0;
                                                i48 = i48;
                                            } else {
                                                i5 = iA1;
                                                iP = iP;
                                                i49 = i49;
                                                bArr2 = bArr5;
                                                i6 = i28;
                                                i48 = i48;
                                            }
                                            break;
                                            break;
                                        case 22:
                                        case 29:
                                        case 39:
                                        case 43:
                                            bArr5 = bArr;
                                            i48 = i48;
                                            unsafe = unsafe;
                                            i28 = i28 == true ? 1 : 0;
                                            i29 = iA1;
                                            of9Var2 = of9Var;
                                            i49 = i49;
                                            i30 = i2;
                                            if (z != 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 0) {
                                                e6.d();
                                                return 0;
                                            }
                                            iA1 = i29;
                                            if (iA1 != i29) {
                                                bArr8 = bArr5;
                                                iP = iP;
                                                i47 = i47;
                                                obj8 = obj2;
                                                i2 = i30;
                                                of9Var6 = of9Var2;
                                                i49 = i49;
                                                unsafe9 = unsafe;
                                                i51 = 1048575;
                                                i50 = i28 == true ? 1 : 0;
                                                i48 = i48;
                                            } else {
                                                i5 = iA1;
                                                iP = iP;
                                                i49 = i49;
                                                bArr2 = bArr5;
                                                i6 = i28;
                                                i48 = i48;
                                            }
                                            break;
                                            break;
                                        case 23:
                                        case 32:
                                        case 40:
                                        case 46:
                                            bArr5 = bArr;
                                            i48 = i48;
                                            unsafe = unsafe;
                                            i28 = i28 == true ? 1 : 0;
                                            i29 = iA1;
                                            of9Var2 = of9Var;
                                            i49 = i49;
                                            i30 = i2;
                                            if (z != 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 1) {
                                                e6.d();
                                                return 0;
                                            }
                                            iA1 = i29;
                                            if (iA1 != i29) {
                                                bArr8 = bArr5;
                                                iP = iP;
                                                i47 = i47;
                                                obj8 = obj2;
                                                i2 = i30;
                                                of9Var6 = of9Var2;
                                                i49 = i49;
                                                unsafe9 = unsafe;
                                                i51 = 1048575;
                                                i50 = i28 == true ? 1 : 0;
                                                i48 = i48;
                                            } else {
                                                i5 = iA1;
                                                iP = iP;
                                                i49 = i49;
                                                bArr2 = bArr5;
                                                i6 = i28;
                                                i48 = i48;
                                            }
                                            break;
                                            break;
                                        case 24:
                                        case 31:
                                        case 41:
                                        case 45:
                                            bArr5 = bArr;
                                            i48 = i48;
                                            unsafe = unsafe;
                                            i28 = i28 == true ? 1 : 0;
                                            i29 = iA1;
                                            of9Var2 = of9Var;
                                            i49 = i49;
                                            i30 = i2;
                                            if (z != 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 5) {
                                                e6.d();
                                                return 0;
                                            }
                                            iA1 = i29;
                                            if (iA1 != i29) {
                                                bArr8 = bArr5;
                                                iP = iP;
                                                i47 = i47;
                                                obj8 = obj2;
                                                i2 = i30;
                                                of9Var6 = of9Var2;
                                                i49 = i49;
                                                unsafe9 = unsafe;
                                                i51 = 1048575;
                                                i50 = i28 == true ? 1 : 0;
                                                i48 = i48;
                                            } else {
                                                i5 = iA1;
                                                iP = iP;
                                                i49 = i49;
                                                bArr2 = bArr5;
                                                i6 = i28;
                                                i48 = i48;
                                            }
                                            break;
                                            break;
                                        case 25:
                                        case 42:
                                            bArr5 = bArr;
                                            i48 = i48;
                                            unsafe = unsafe;
                                            i28 = i28 == true ? 1 : 0;
                                            i29 = iA1;
                                            of9Var2 = of9Var;
                                            i49 = i49;
                                            i30 = i2;
                                            if (z != 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 0) {
                                                e6.d();
                                                return 0;
                                            }
                                            iA1 = i29;
                                            if (iA1 != i29) {
                                                bArr8 = bArr5;
                                                iP = iP;
                                                i47 = i47;
                                                obj8 = obj2;
                                                i2 = i30;
                                                of9Var6 = of9Var2;
                                                i49 = i49;
                                                unsafe9 = unsafe;
                                                i51 = 1048575;
                                                i50 = i28 == true ? 1 : 0;
                                                i48 = i48;
                                            } else {
                                                i5 = iA1;
                                                iP = iP;
                                                i49 = i49;
                                                bArr2 = bArr5;
                                                i6 = i28;
                                                i48 = i48;
                                            }
                                            break;
                                            break;
                                        case 26:
                                            bArr5 = bArr;
                                            i48 = i48;
                                            unsafe = unsafe;
                                            i28 = i28 == true ? 1 : 0;
                                            i29 = iA1;
                                            of9Var2 = of9Var;
                                            i49 = i49;
                                            i30 = i2;
                                            if (z == 2) {
                                                if ((j2 & 536870912) == 0) {
                                                    iA1 = ly8.Y(bArr5, i29, of9Var2);
                                                    i35 = of9Var2.a;
                                                    if (i35 >= 0) {
                                                        throw xh9.b();
                                                    }
                                                    if (i35 == 0) {
                                                        oh9Var.add("");
                                                    } else {
                                                        oh9Var.add(new String(bArr5, iA1, i35, vh9.a));
                                                        iA1 += i35;
                                                    }
                                                    while (iA1 < i30) {
                                                        iY4 = ly8.Y(bArr5, iA1, of9Var2);
                                                        if (i28 == of9Var2.a) {
                                                            iA1 = ly8.Y(bArr5, iY4, of9Var2);
                                                            i36 = of9Var2.a;
                                                            if (i36 >= 0) {
                                                                throw xh9.b();
                                                            }
                                                            if (i36 == 0) {
                                                                oh9Var.add("");
                                                            } else {
                                                                oh9Var.add(new String(bArr5, iA1, i36, vh9.a));
                                                                iA1 += i36;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    iA1 = ly8.Y(bArr5, i29, of9Var2);
                                                    i31 = of9Var2.a;
                                                    if (i31 >= 0) {
                                                        throw xh9.b();
                                                    }
                                                    if (i31 == 0) {
                                                        oh9Var.add("");
                                                    } else {
                                                        i32 = iA1 + i31;
                                                        om9.a.getClass();
                                                        if (nh4.t(bArr5, iA1, i32)) {
                                                            throw xh9.a();
                                                        }
                                                        oh9Var.add(new String(bArr5, iA1, i31, vh9.a));
                                                        iA1 = i32;
                                                    }
                                                    while (iA1 < i30) {
                                                        iY3 = ly8.Y(bArr5, iA1, of9Var2);
                                                        if (i28 == of9Var2.a) {
                                                            iA1 = ly8.Y(bArr5, iY3, of9Var2);
                                                            i33 = of9Var2.a;
                                                            if (i33 >= 0) {
                                                                throw xh9.b();
                                                            }
                                                            if (i33 == 0) {
                                                                oh9Var.add("");
                                                            } else {
                                                                i34 = iA1 + i33;
                                                                om9.a.getClass();
                                                                if (nh4.t(bArr5, iA1, i34)) {
                                                                    throw xh9.a();
                                                                }
                                                                oh9Var.add(new String(bArr5, iA1, i33, vh9.a));
                                                                iA1 = i34;
                                                            }
                                                        }
                                                    }
                                                }
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                            }
                                            iA1 = i29;
                                            if (iA1 != i29) {
                                                bArr8 = bArr5;
                                                iP = iP;
                                                i47 = i47;
                                                obj8 = obj2;
                                                i2 = i30;
                                                of9Var6 = of9Var2;
                                                i49 = i49;
                                                unsafe9 = unsafe;
                                                i51 = 1048575;
                                                i50 = i28 == true ? 1 : 0;
                                                i48 = i48;
                                            } else {
                                                i5 = iA1;
                                                iP = iP;
                                                i49 = i49;
                                                bArr2 = bArr5;
                                                i6 = i28;
                                                i48 = i48;
                                            }
                                            break;
                                        case 27:
                                            i48 = i48;
                                            unsafe = unsafe;
                                            i28 = i28 == true ? 1 : 0;
                                            i49 = i49;
                                            if (z == 2) {
                                                bArr5 = bArr;
                                                i29 = iA1;
                                                i30 = i2;
                                                of9Var2 = of9Var;
                                                iA1 = ly8.W(t(iP), i28 == true ? 1 : 0, bArr, iA1, i2, oh9Var, of9Var);
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                            } else {
                                                bArr5 = bArr;
                                                i30 = i2;
                                                i29 = iA1;
                                                of9Var2 = of9Var;
                                                iA1 = i29;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                            }
                                            break;
                                        case 28:
                                            bArr6 = bArr;
                                            i37 = i2;
                                            of9Var = of9Var;
                                            i48 = i48;
                                            unsafe = unsafe;
                                            i28 = i28 == true ? 1 : 0;
                                            i38 = iA1;
                                            i49 = i49;
                                            if (z == 2) {
                                                iY5 = ly8.Y(bArr6, i38, of9Var);
                                                i39 = of9Var.a;
                                                if (i39 >= 0) {
                                                    throw xh9.b();
                                                }
                                                if (i39 <= bArr6.length - iY5) {
                                                    throw xh9.c();
                                                }
                                                if (i39 == 0) {
                                                    oh9Var.add(hg9.c);
                                                } else {
                                                    oh9Var.add(hg9.g(bArr6, iY5, i39));
                                                    iY5 += i39;
                                                }
                                                while (iY5 < i37) {
                                                    iY6 = ly8.Y(bArr6, iY5, of9Var);
                                                    if (i28 == of9Var.a) {
                                                        iA1 = iY5;
                                                        bArr5 = bArr6;
                                                        i30 = i37;
                                                        i29 = i38;
                                                        of9Var2 = of9Var;
                                                        if (iA1 != i29) {
                                                            bArr8 = bArr5;
                                                            iP = iP;
                                                            i47 = i47;
                                                            obj8 = obj2;
                                                            i2 = i30;
                                                            of9Var6 = of9Var2;
                                                            i49 = i49;
                                                            unsafe9 = unsafe;
                                                            i51 = 1048575;
                                                            i50 = i28 == true ? 1 : 0;
                                                            i48 = i48;
                                                        } else {
                                                            i5 = iA1;
                                                            iP = iP;
                                                            i49 = i49;
                                                            bArr2 = bArr5;
                                                            i6 = i28;
                                                            i48 = i48;
                                                        }
                                                        break;
                                                    } else {
                                                        iY5 = ly8.Y(bArr6, iY6, of9Var);
                                                        i40 = of9Var.a;
                                                        if (i40 >= 0) {
                                                            throw xh9.b();
                                                        }
                                                        if (i40 <= bArr6.length - iY5) {
                                                            throw xh9.c();
                                                        }
                                                        if (i40 == 0) {
                                                            oh9Var.add(hg9.c);
                                                        } else {
                                                            oh9Var.add(hg9.g(bArr6, iY5, i40));
                                                            iY5 += i40;
                                                        }
                                                    }
                                                }
                                                iA1 = iY5;
                                                bArr5 = bArr6;
                                                i30 = i37;
                                                i29 = i38;
                                                of9Var2 = of9Var;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                            }
                                            bArr5 = bArr6;
                                            i30 = i37;
                                            i29 = i38;
                                            of9Var2 = of9Var;
                                            iA1 = i29;
                                            if (iA1 != i29) {
                                                bArr8 = bArr5;
                                                iP = iP;
                                                i47 = i47;
                                                obj8 = obj2;
                                                i2 = i30;
                                                of9Var6 = of9Var2;
                                                i49 = i49;
                                                unsafe9 = unsafe;
                                                i51 = 1048575;
                                                i50 = i28 == true ? 1 : 0;
                                                i48 = i48;
                                            } else {
                                                i5 = iA1;
                                                iP = iP;
                                                i49 = i49;
                                                bArr2 = bArr5;
                                                i6 = i28;
                                                i48 = i48;
                                            }
                                            break;
                                        case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                                        case 44:
                                            if (z != 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 0) {
                                                e6.d();
                                                return 0;
                                            }
                                            bArr5 = bArr;
                                            i30 = i2;
                                            i29 = iA1;
                                            of9Var2 = of9Var;
                                            iA1 = i29;
                                            if (iA1 != i29) {
                                                bArr8 = bArr5;
                                                iP = iP;
                                                i47 = i47;
                                                obj8 = obj2;
                                                i2 = i30;
                                                of9Var6 = of9Var2;
                                                i49 = i49;
                                                unsafe9 = unsafe;
                                                i51 = 1048575;
                                                i50 = i28 == true ? 1 : 0;
                                                i48 = i48;
                                            } else {
                                                i5 = iA1;
                                                iP = iP;
                                                i49 = i49;
                                                bArr2 = bArr5;
                                                i6 = i28;
                                                i48 = i48;
                                            }
                                            break;
                                            break;
                                        case 33:
                                        case 47:
                                            if (z != 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 0) {
                                                e6.d();
                                                return 0;
                                            }
                                            bArr5 = bArr;
                                            i30 = i2;
                                            i29 = iA1;
                                            of9Var2 = of9Var;
                                            iA1 = i29;
                                            if (iA1 != i29) {
                                                bArr8 = bArr5;
                                                iP = iP;
                                                i47 = i47;
                                                obj8 = obj2;
                                                i2 = i30;
                                                of9Var6 = of9Var2;
                                                i49 = i49;
                                                unsafe9 = unsafe;
                                                i51 = 1048575;
                                                i50 = i28 == true ? 1 : 0;
                                                i48 = i48;
                                            } else {
                                                i5 = iA1;
                                                iP = iP;
                                                i49 = i49;
                                                bArr2 = bArr5;
                                                i6 = i28;
                                                i48 = i48;
                                            }
                                            break;
                                            break;
                                        case 34:
                                        case 48:
                                            bArr6 = bArr;
                                            i37 = i2;
                                            of9Var = of9Var;
                                            i48 = i48;
                                            unsafe = unsafe;
                                            i28 = i28 == true ? 1 : 0;
                                            i38 = iA1;
                                            i49 = i49;
                                            if (z != 2) {
                                                e6.d();
                                                return 0;
                                            }
                                            if (z == 0) {
                                                e6.d();
                                                return 0;
                                            }
                                            bArr5 = bArr6;
                                            i30 = i37;
                                            i29 = i38;
                                            of9Var2 = of9Var;
                                            iA1 = i29;
                                            if (iA1 != i29) {
                                                bArr8 = bArr5;
                                                iP = iP;
                                                i47 = i47;
                                                obj8 = obj2;
                                                i2 = i30;
                                                of9Var6 = of9Var2;
                                                i49 = i49;
                                                unsafe9 = unsafe;
                                                i51 = 1048575;
                                                i50 = i28 == true ? 1 : 0;
                                                i48 = i48;
                                            } else {
                                                i5 = iA1;
                                                iP = iP;
                                                i49 = i49;
                                                bArr2 = bArr5;
                                                i6 = i28;
                                                i48 = i48;
                                            }
                                            break;
                                            break;
                                        default:
                                            if (z == 3) {
                                                jk9VarT = t(iP);
                                                i41 = ((i28 == true ? 1 : 0) & (-8)) | 4;
                                                ih9 ih9VarZzd3 = jk9VarT.zzd();
                                                oj9Var = (oj9) jk9VarT;
                                                i37 = i2;
                                                of9Var = of9Var;
                                                i48 = i48;
                                                i28 = i28 == true ? 1 : 0;
                                                i49 = i49;
                                                bArr6 = bArr;
                                                int iM6 = oj9Var.m(ih9VarZzd3, bArr6, i42, i37, i41, of9Var);
                                                of9Var.c = ih9VarZzd3;
                                                jk9VarT.a(ih9VarZzd3);
                                                of9Var.c = ih9VarZzd3;
                                                oh9Var.add(ih9VarZzd3);
                                                i43 = iM6;
                                                while (true) {
                                                    if (i43 < i37) {
                                                        i44 = i42;
                                                        iY7 = ly8.Y(bArr6, i43, of9Var);
                                                        oj9Var2 = oj9Var;
                                                        if (i28 == of9Var.a) {
                                                            i42 = iA1;
                                                            ih9 ih9VarZzd4 = jk9VarT.zzd();
                                                            oj9Var = oj9Var2;
                                                            int iM7 = oj9Var.m(ih9VarZzd4, bArr6, iY7, i37, i41, of9Var);
                                                            of9Var.c = ih9VarZzd4;
                                                            jk9VarT.a(ih9VarZzd4);
                                                            of9Var.c = ih9VarZzd4;
                                                            oh9Var.add(ih9VarZzd4);
                                                            i43 = iM7;
                                                            i42 = i44;
                                                            unsafe = unsafe;
                                                        } else {
                                                            i42 = iA1;
                                                            i38 = i44;
                                                        }
                                                    } else {
                                                        i42 = iA1;
                                                        i38 = i42;
                                                    }
                                                }
                                                iA1 = i43;
                                                bArr5 = bArr6;
                                                i30 = i37;
                                                i29 = i38;
                                                of9Var2 = of9Var;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                            } else {
                                                i48 = i48;
                                                unsafe = unsafe;
                                                i28 = i28 == true ? 1 : 0;
                                                i49 = i49;
                                                bArr5 = bArr;
                                                i30 = i2;
                                                of9Var2 = of9Var;
                                                i29 = iA1;
                                                iA1 = i29;
                                                if (iA1 != i29) {
                                                    bArr8 = bArr5;
                                                    iP = iP;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    i2 = i30;
                                                    of9Var6 = of9Var2;
                                                    i49 = i49;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i50 = i28 == true ? 1 : 0;
                                                    i48 = i48;
                                                } else {
                                                    i5 = iA1;
                                                    iP = iP;
                                                    i49 = i49;
                                                    bArr2 = bArr5;
                                                    i6 = i28;
                                                    i48 = i48;
                                                }
                                            }
                                            break;
                                    }
                                } else {
                                    i48 = i48;
                                    i49 = i49;
                                    i28 = i50 == true ? 1 : 0;
                                    unsafe = unsafe;
                                    bArr5 = bArr;
                                    of9Var2 = of9Var;
                                    if (iQ == 50) {
                                        unsafe8 = l;
                                        j3 = iArr[iP + 2] & 1048575;
                                        switch (iQ) {
                                            case 51:
                                                iA1 = iA1;
                                                i45 = i28 == true ? 1 : 0;
                                                iP = iP;
                                                bArr2 = bArr;
                                                if (z == 1) {
                                                    unsafe8.putObject(obj2, j, Double.valueOf(Double.longBitsToDouble(ly8.c0(bArr2, iA1))));
                                                    iY8 = iA1 + 8;
                                                    unsafe8.putInt(obj2, j3, i47);
                                                } else {
                                                    iY8 = iA1;
                                                }
                                                if (iY8 != iA1) {
                                                    bArr8 = bArr2;
                                                    iA1 = iY8;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    of9Var6 = of9Var2;
                                                    i48 = i48;
                                                    iP = iP;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i2 = i2;
                                                    i50 = i45;
                                                    i49 = i49;
                                                } else {
                                                    i5 = iY8;
                                                    i6 = i45;
                                                    i49 = i49;
                                                    i48 = i48;
                                                    iP = iP;
                                                }
                                                break;
                                            case 52:
                                                iA1 = iA1;
                                                i45 = i28 == true ? 1 : 0;
                                                iP = iP;
                                                bArr2 = bArr;
                                                if (z == 5) {
                                                    unsafe8.putObject(obj2, j, Float.valueOf(Float.intBitsToFloat(ly8.V(bArr2, iA1))));
                                                    iY8 = iA1 + 4;
                                                    unsafe8.putInt(obj2, j3, i47);
                                                } else {
                                                    iY8 = iA1;
                                                }
                                                if (iY8 != iA1) {
                                                    bArr8 = bArr2;
                                                    iA1 = iY8;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    of9Var6 = of9Var2;
                                                    i48 = i48;
                                                    iP = iP;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i2 = i2;
                                                    i50 = i45;
                                                    i49 = i49;
                                                } else {
                                                    i5 = iY8;
                                                    i6 = i45;
                                                    i49 = i49;
                                                    i48 = i48;
                                                    iP = iP;
                                                }
                                                break;
                                            case 53:
                                            case 54:
                                                iA1 = iA1;
                                                i45 = i28 == true ? 1 : 0;
                                                iP = iP;
                                                bArr2 = bArr;
                                                if (z == 0) {
                                                    iA0 = ly8.a0(bArr2, iA1, of9Var2);
                                                    unsafe8.putObject(obj2, j, Long.valueOf(of9Var2.b));
                                                    unsafe8.putInt(obj2, j3, i47);
                                                    iY8 = iA0;
                                                } else {
                                                    iY8 = iA1;
                                                }
                                                if (iY8 != iA1) {
                                                    bArr8 = bArr2;
                                                    iA1 = iY8;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    of9Var6 = of9Var2;
                                                    i48 = i48;
                                                    iP = iP;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i2 = i2;
                                                    i50 = i45;
                                                    i49 = i49;
                                                } else {
                                                    i5 = iY8;
                                                    i6 = i45;
                                                    i49 = i49;
                                                    i48 = i48;
                                                    iP = iP;
                                                }
                                                break;
                                            case 55:
                                            case 62:
                                                iA1 = iA1;
                                                i45 = i28 == true ? 1 : 0;
                                                iP = iP;
                                                bArr2 = bArr;
                                                if (z == 0) {
                                                    iY8 = ly8.Y(bArr2, iA1, of9Var2);
                                                    unsafe8.putObject(obj2, j, Integer.valueOf(of9Var2.a));
                                                    unsafe8.putInt(obj2, j3, i47);
                                                } else {
                                                    iY8 = iA1;
                                                }
                                                if (iY8 != iA1) {
                                                    bArr8 = bArr2;
                                                    iA1 = iY8;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    of9Var6 = of9Var2;
                                                    i48 = i48;
                                                    iP = iP;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i2 = i2;
                                                    i50 = i45;
                                                    i49 = i49;
                                                } else {
                                                    i5 = iY8;
                                                    i6 = i45;
                                                    i49 = i49;
                                                    i48 = i48;
                                                    iP = iP;
                                                }
                                                break;
                                            case 56:
                                            case 65:
                                                iA1 = iA1;
                                                i45 = i28 == true ? 1 : 0;
                                                iP = iP;
                                                bArr2 = bArr;
                                                if (z == 1) {
                                                    unsafe8.putObject(obj2, j, Long.valueOf(ly8.c0(bArr2, iA1)));
                                                    iY8 = iA1 + 8;
                                                    unsafe8.putInt(obj2, j3, i47);
                                                } else {
                                                    iY8 = iA1;
                                                }
                                                if (iY8 != iA1) {
                                                    bArr8 = bArr2;
                                                    iA1 = iY8;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    of9Var6 = of9Var2;
                                                    i48 = i48;
                                                    iP = iP;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i2 = i2;
                                                    i50 = i45;
                                                    i49 = i49;
                                                } else {
                                                    i5 = iY8;
                                                    i6 = i45;
                                                    i49 = i49;
                                                    i48 = i48;
                                                    iP = iP;
                                                }
                                                break;
                                            case 57:
                                            case 64:
                                                iA1 = iA1;
                                                i45 = i28 == true ? 1 : 0;
                                                iP = iP;
                                                bArr2 = bArr;
                                                if (z == 5) {
                                                    unsafe8.putObject(obj2, j, Integer.valueOf(ly8.V(bArr2, iA1)));
                                                    iY8 = iA1 + 4;
                                                    unsafe8.putInt(obj2, j3, i47);
                                                } else {
                                                    iY8 = iA1;
                                                }
                                                if (iY8 != iA1) {
                                                    bArr8 = bArr2;
                                                    iA1 = iY8;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    of9Var6 = of9Var2;
                                                    i48 = i48;
                                                    iP = iP;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i2 = i2;
                                                    i50 = i45;
                                                    i49 = i49;
                                                } else {
                                                    i5 = iY8;
                                                    i6 = i45;
                                                    i49 = i49;
                                                    i48 = i48;
                                                    iP = iP;
                                                }
                                                break;
                                            case 58:
                                                iA1 = iA1;
                                                i45 = i28 == true ? 1 : 0;
                                                iP = iP;
                                                bArr2 = bArr;
                                                if (z == 0) {
                                                    iA0 = ly8.a0(bArr2, iA1, of9Var2);
                                                    if (of9Var2.b != 0) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                    unsafe8.putObject(obj2, j, Boolean.valueOf(z3));
                                                    unsafe8.putInt(obj2, j3, i47);
                                                    iY8 = iA0;
                                                } else {
                                                    iY8 = iA1;
                                                }
                                                if (iY8 != iA1) {
                                                    bArr8 = bArr2;
                                                    iA1 = iY8;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    of9Var6 = of9Var2;
                                                    i48 = i48;
                                                    iP = iP;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i2 = i2;
                                                    i50 = i45;
                                                    i49 = i49;
                                                } else {
                                                    i5 = iY8;
                                                    i6 = i45;
                                                    i49 = i49;
                                                    i48 = i48;
                                                    iP = iP;
                                                }
                                                break;
                                            case 59:
                                                iA1 = iA1;
                                                i45 = i28 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                if (z == 2) {
                                                    iY9 = ly8.Y(bArr2, iA1, of9Var2);
                                                    i46 = of9Var2.a;
                                                    if (i46 == 0) {
                                                        unsafe8.putObject(obj2, j, "");
                                                    } else {
                                                        if ((i7 & 536870912) != 0) {
                                                            om9.a.getClass();
                                                            if (!nh4.t(bArr2, iY9, iY9 + i46)) {
                                                                throw xh9.a();
                                                            }
                                                        }
                                                        unsafe8.putObject(obj2, j, new String(bArr2, iY9, i46, vh9.a));
                                                        iY9 += i46;
                                                    }
                                                    unsafe8.putInt(obj2, j3, i47);
                                                    iY8 = iY9;
                                                } else {
                                                    iP = iP;
                                                    iY8 = iA1;
                                                }
                                                if (iY8 != iA1) {
                                                    bArr8 = bArr2;
                                                    iA1 = iY8;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    of9Var6 = of9Var2;
                                                    i48 = i48;
                                                    iP = iP;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i2 = i2;
                                                    i50 = i45;
                                                    i49 = i49;
                                                } else {
                                                    i5 = iY8;
                                                    i6 = i45;
                                                    i49 = i49;
                                                    i48 = i48;
                                                    iP = iP;
                                                }
                                                break;
                                            case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                                                bArr7 = bArr;
                                                i45 = i28 == true ? 1 : 0;
                                                if (z == 2) {
                                                    Object objV3 = v(obj2, i47, iP);
                                                    int iB1 = ly8.b0(objV3, t(iP), bArr7, iA1, i2, of9Var2);
                                                    bArr2 = bArr7;
                                                    h(obj2, i47, iP, objV3);
                                                    iY8 = iB1;
                                                    iP = iP;
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                }
                                                iA1 = iA1;
                                                bArr2 = bArr7;
                                                iP = iP;
                                                iY8 = iA1;
                                                if (iY8 != iA1) {
                                                    bArr8 = bArr2;
                                                    iA1 = iY8;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    of9Var6 = of9Var2;
                                                    i48 = i48;
                                                    iP = iP;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i2 = i2;
                                                    i50 = i45;
                                                    i49 = i49;
                                                } else {
                                                    i5 = iY8;
                                                    i6 = i45;
                                                    i49 = i49;
                                                    i48 = i48;
                                                    iP = iP;
                                                }
                                                break;
                                            case 61:
                                                bArr7 = bArr;
                                                i45 = i28 == true ? 1 : 0;
                                                if (z == 2) {
                                                    iT = ly8.T(bArr7, iA1, of9Var2);
                                                    unsafe8.putObject(obj2, j, of9Var2.c);
                                                    unsafe8.putInt(obj2, j3, i47);
                                                    bArr2 = bArr7;
                                                    iY8 = iT;
                                                    iP = iP;
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                }
                                                iA1 = iA1;
                                                bArr2 = bArr7;
                                                iP = iP;
                                                iY8 = iA1;
                                                if (iY8 != iA1) {
                                                    bArr8 = bArr2;
                                                    iA1 = iY8;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    of9Var6 = of9Var2;
                                                    i48 = i48;
                                                    iP = iP;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i2 = i2;
                                                    i50 = i45;
                                                    i49 = i49;
                                                } else {
                                                    i5 = iY8;
                                                    i6 = i45;
                                                    i49 = i49;
                                                    i48 = i48;
                                                    iP = iP;
                                                }
                                                break;
                                            case 63:
                                                bArr7 = bArr;
                                                i45 = i28 == true ? 1 : 0;
                                                if (z == 0) {
                                                    iT = ly8.Y(bArr7, iA1, of9Var2);
                                                    int i619 = of9Var2.a;
                                                    s(iP);
                                                    unsafe8.putObject(obj2, j, Integer.valueOf(i619));
                                                    unsafe8.putInt(obj2, j3, i47);
                                                    bArr2 = bArr7;
                                                    iY8 = iT;
                                                    iP = iP;
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                }
                                                iA1 = iA1;
                                                bArr2 = bArr7;
                                                iP = iP;
                                                iY8 = iA1;
                                                if (iY8 != iA1) {
                                                    bArr8 = bArr2;
                                                    iA1 = iY8;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    of9Var6 = of9Var2;
                                                    i48 = i48;
                                                    iP = iP;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i2 = i2;
                                                    i50 = i45;
                                                    i49 = i49;
                                                } else {
                                                    i5 = iY8;
                                                    i6 = i45;
                                                    i49 = i49;
                                                    i48 = i48;
                                                    iP = iP;
                                                }
                                                break;
                                            case 66:
                                                bArr7 = bArr;
                                                i45 = i28 == true ? 1 : 0;
                                                if (z == 0) {
                                                    iT = ly8.Y(bArr7, iA1, of9Var2);
                                                    int i73 = of9Var2.a;
                                                    unsafe8.putObject(obj2, j, Integer.valueOf((i73 >>> 1) ^ (-(i73 & 1))));
                                                    unsafe8.putInt(obj2, j3, i47);
                                                    bArr2 = bArr7;
                                                    iY8 = iT;
                                                    iP = iP;
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                }
                                                iA1 = iA1;
                                                bArr2 = bArr7;
                                                iP = iP;
                                                iY8 = iA1;
                                                if (iY8 != iA1) {
                                                    bArr8 = bArr2;
                                                    iA1 = iY8;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    of9Var6 = of9Var2;
                                                    i48 = i48;
                                                    iP = iP;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i2 = i2;
                                                    i50 = i45;
                                                    i49 = i49;
                                                } else {
                                                    i5 = iY8;
                                                    i6 = i45;
                                                    i49 = i49;
                                                    i48 = i48;
                                                    iP = iP;
                                                }
                                                break;
                                            case 67:
                                                bArr7 = bArr;
                                                if (z == 0) {
                                                    iT = ly8.a0(bArr7, iA1, of9Var2);
                                                    i45 = i28 == true ? 1 : 0;
                                                    long j7 = of9Var2.b;
                                                    unsafe8.putObject(obj2, j, Long.valueOf((j7 >>> 1) ^ (-(j7 & 1))));
                                                    unsafe8.putInt(obj2, j3, i47);
                                                    bArr2 = bArr7;
                                                    iY8 = iT;
                                                    iP = iP;
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                } else {
                                                    i45 = i28 == true ? 1 : 0;
                                                    iA1 = iA1;
                                                    bArr2 = bArr7;
                                                    iP = iP;
                                                    iY8 = iA1;
                                                    if (iY8 != iA1) {
                                                        bArr8 = bArr2;
                                                        iA1 = iY8;
                                                        i47 = i47;
                                                        obj8 = obj2;
                                                        of9Var6 = of9Var2;
                                                        i48 = i48;
                                                        iP = iP;
                                                        unsafe9 = unsafe;
                                                        i51 = 1048575;
                                                        i2 = i2;
                                                        i50 = i45;
                                                        i49 = i49;
                                                    } else {
                                                        i5 = iY8;
                                                        i6 = i45;
                                                        i49 = i49;
                                                        i48 = i48;
                                                        iP = iP;
                                                    }
                                                }
                                                break;
                                            case 68:
                                                if (z == 3) {
                                                    Object objV4 = v(obj2, i47, iP);
                                                    int iM8 = ((oj9) t(iP)).m(objV4, bArr, iA1, i2, ((i28 == true ? 1 : 0) & (-8)) | 4, of9Var2);
                                                    of9Var2.c = objV4;
                                                    h(obj2, i47, iP, objV4);
                                                    iA1 = iA1;
                                                    bArr2 = bArr;
                                                    i45 = i28 == true ? 1 : 0;
                                                    iP = iP;
                                                    iY8 = iM8;
                                                }
                                                if (iY8 != iA1) {
                                                    i5 = iY8;
                                                    i6 = i45;
                                                    i49 = i49;
                                                    i48 = i48;
                                                    iP = iP;
                                                    break;
                                                } else {
                                                    bArr8 = bArr2;
                                                    iA1 = iY8;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    of9Var6 = of9Var2;
                                                    i48 = i48;
                                                    iP = iP;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i2 = i2;
                                                    i50 = i45;
                                                    i49 = i49;
                                                    break;
                                                }
                                            default:
                                                iA1 = iA1;
                                                i45 = i28 == true ? 1 : 0;
                                                iP = iP;
                                                bArr2 = bArr;
                                                iY8 = iA1;
                                                if (iY8 != iA1) {
                                                    bArr8 = bArr2;
                                                    iA1 = iY8;
                                                    i47 = i47;
                                                    obj8 = obj2;
                                                    of9Var6 = of9Var2;
                                                    i48 = i48;
                                                    iP = iP;
                                                    unsafe9 = unsafe;
                                                    i51 = 1048575;
                                                    i2 = i2;
                                                    i50 = i45;
                                                    i49 = i49;
                                                } else {
                                                    i5 = iY8;
                                                    i6 = i45;
                                                    i49 = i49;
                                                    i48 = i48;
                                                    iP = iP;
                                                }
                                                break;
                                        }
                                    } else {
                                        if (z == 2) {
                                            unsafe7 = l;
                                            int i74 = iP / 3;
                                            Object obj120 = this.b[i74 + i74];
                                            object = unsafe7.getObject(obj2, j);
                                            if (!((si9) object).a) {
                                                si9Var = si9.b;
                                                if (si9Var.isEmpty()) {
                                                    si9Var2 = new si9();
                                                } else {
                                                    si9 si9Var4 = new si9(si9Var);
                                                    si9Var4.a = true;
                                                    si9Var2 = si9Var4;
                                                }
                                                ui9.a(si9Var2, object);
                                                unsafe7.putObject(obj2, j, si9Var2);
                                            }
                                            throw eq3.g(obj120);
                                        }
                                        i5 = iA1;
                                        iP = iP;
                                        i49 = i49;
                                        bArr2 = bArr5;
                                        i6 = i28;
                                        i48 = i48;
                                    }
                                }
                            } else if (z == 2) {
                                oh9VarZzd = (oh9) unsafe5.getObject(obj7, j);
                                if (!((lf9) oh9VarZzd).a) {
                                    int size4 = oh9VarZzd.size();
                                    oh9VarZzd = oh9VarZzd.zzd(size4 != 0 ? size4 + size4 : 10);
                                    unsafe5.putObject(obj7, j, oh9VarZzd);
                                }
                                oh9 oh9Var3 = oh9VarZzd;
                                bArr8 = bArr;
                                i2 = i2;
                                iA1 = ly8.W(t(iP), i50 == true ? 1 : 0, bArr8, i53, i2, oh9Var3, of9Var);
                                of9Var6 = of9Var;
                                iP = iP;
                                i47 = i47;
                                unsafe9 = unsafe5;
                                i51 = 1048575;
                                i50 = i50 == true ? 1 : 0;
                                obj8 = obj;
                            } else {
                                obj2 = obj7;
                                iA1 = i53;
                                bArr5 = bArr;
                                i48 = i48;
                                unsafe = unsafe5;
                                i28 = i50 == true ? 1 : 0;
                                of9Var2 = of9Var;
                                i49 = i49;
                                i5 = iA1;
                                iP = iP;
                                i49 = i49;
                                bArr2 = bArr5;
                                i6 = i28;
                                i48 = i48;
                            }
                        }
                    } else {
                        unsafe = unsafe9;
                        i5 = i53;
                        iArr = iArr2;
                        iP = 0;
                        bArr2 = bArr;
                        obj2 = obj8;
                        i6 = i50 == true ? 1 : 0;
                        of9Var2 = of9Var6;
                    }
                    if (i6 == i3) {
                    }
                    ih9Var = (ih9) obj2;
                    il9VarA = ih9Var.zzc;
                    if (il9VarA == il9.e) {
                        il9VarA = il9.a();
                        ih9Var.zzc = il9VarA;
                    }
                    int i75 = i6;
                    int iX2 = ly8.X(i75 == true ? 1 : 0, bArr2, i5, i2, il9VarA, of9Var2);
                    of9Var6 = of9Var;
                    i50 = i75 == true ? 1 : 0;
                    i2 = i2;
                    i47 = i47;
                    obj8 = obj2;
                    unsafe9 = unsafe;
                    i51 = 1048575;
                    iA1 = iX2;
                    bArr8 = bArr;
                } else {
                    i3 = i3;
                    iArr = iArr2;
                    obj2 = obj8;
                }
            }
        }
        if (i48 != 1048575) {
            unsafe9.putInt(obj2, i48, i49);
        }
        for (int i76 = this.g; i76 < this.h; i76++) {
            int i77 = this.f[i76];
            int i78 = iArr[i77];
            if (fm9.d(obj2, r(i77) & 1048575) != null) {
                s(i77);
            }
        }
        if (i3 == 0) {
            if (iA1 != i2) {
                throw new xh9("Failed to parse the message.");
            }
        } else if (iA1 > i2 || i50 != i3) {
            throw new xh9("Failed to parse the message.");
        }
        return iA1;
    }

    public final int p(int i, int i2) {
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

    public final int r(int i) {
        return this.a[i + 1];
    }

    public final void s(int i) {
        int i2 = i / 3;
        if (this.b[i2 + i2 + 1] == null) {
            return;
        }
        e6.d();
    }

    public final jk9 t(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.b;
        jk9 jk9Var = (jk9) objArr[i3];
        if (jk9Var != null) {
            return jk9Var;
        }
        jk9 jk9VarA = dk9.c.a((Class) objArr[i3 + 1]);
        objArr[i3] = jk9VarA;
        return jk9VarA;
    }

    public final Object u(int i, Object obj) {
        jk9 jk9VarT = t(i);
        int iR = r(i) & 1048575;
        if (!j(i, obj)) {
            return jk9VarT.zzd();
        }
        Object object = l.getObject(obj, iR);
        if (k(object)) {
            return object;
        }
        ih9 ih9VarZzd = jk9VarT.zzd();
        if (object != null) {
            jk9VarT.c(ih9VarZzd, object);
        }
        return ih9VarZzd;
    }

    public final Object v(Object obj, int i, int i2) {
        jk9 jk9VarT = t(i2);
        if (!l(obj, i, i2)) {
            return jk9VarT.zzd();
        }
        Object object = l.getObject(obj, r(i2) & 1048575);
        if (k(object)) {
            return object;
        }
        ih9 ih9VarZzd = jk9VarT.zzd();
        if (object != null) {
            jk9VarT.c(ih9VarZzd, object);
        }
        return ih9VarZzd;
    }

    public final void x(int i, Object obj, Object obj2) {
        if (j(i, obj2)) {
            int iR = r(i) & 1048575;
            Unsafe unsafe = l;
            long j = iR;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                l0.e(u48.k(this.a[i], "Source subfield ", " is present but null: ", obj2.toString()));
                return;
            }
            jk9 jk9VarT = t(i);
            if (!j(i, obj)) {
                if (k(object)) {
                    ih9 ih9VarZzd = jk9VarT.zzd();
                    jk9VarT.c(ih9VarZzd, object);
                    unsafe.putObject(obj, j, ih9VarZzd);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                z(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!k(object2)) {
                ih9 ih9VarZzd2 = jk9VarT.zzd();
                jk9VarT.c(ih9VarZzd2, object2);
                unsafe.putObject(obj, j, ih9VarZzd2);
                object2 = ih9VarZzd2;
            }
            jk9VarT.c(object2, object);
        }
    }

    public final void y(int i, Object obj, Object obj2) {
        int[] iArr = this.a;
        int i2 = iArr[i];
        if (l(obj2, i2, i)) {
            int iR = r(i) & 1048575;
            Unsafe unsafe = l;
            long j = iR;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                l0.e(u48.k(iArr[i], "Source subfield ", " is present but null: ", obj2.toString()));
                return;
            }
            jk9 jk9VarT = t(i);
            if (!l(obj, i2, i)) {
                if (k(object)) {
                    ih9 ih9VarZzd = jk9VarT.zzd();
                    jk9VarT.c(ih9VarZzd, object);
                    unsafe.putObject(obj, j, ih9VarZzd);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                fm9.h(obj, iArr[i + 2] & 1048575, i2);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!k(object2)) {
                ih9 ih9VarZzd2 = jk9VarT.zzd();
                jk9VarT.c(ih9VarZzd2, object2);
                unsafe.putObject(obj, j, ih9VarZzd2);
                object2 = ih9VarZzd2;
            }
            jk9VarT.c(object2, object);
        }
    }

    public final void z(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        fm9.h(obj, j, (1 << (i2 >>> 20)) | fm9.a(obj, j));
    }

    @Override // defpackage.jk9
    public final ih9 zzd() {
        return ((ih9) this.e).b();
    }
}
