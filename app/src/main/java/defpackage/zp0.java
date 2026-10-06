package defpackage;

import android.text.SpannableStringBuilder;
import com.jcraft.jsch.Argon2;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zp0 {
    public static final String b;
    public static final String c;
    public static final zp0 d;
    public static final zp0 e;
    public final boolean a;

    static {
        be beVar = x08.c;
        b = Character.toString((char) 8206);
        c = Character.toString((char) 8207);
        d = new zp0(false);
        e = new zp0(true);
    }

    public zp0(boolean z) {
        be beVar = x08.a;
        this.a = z;
    }

    public static int a(CharSequence charSequence) {
        byte directionality;
        yp0 yp0Var = new yp0(charSequence);
        yp0Var.c = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = yp0Var.c;
            if (i4 < yp0Var.b && i == 0) {
                CharSequence charSequence2 = yp0Var.a;
                char cCharAt = charSequence2.charAt(i4);
                yp0Var.d = cCharAt;
                boolean zIsHighSurrogate = Character.isHighSurrogate(cCharAt);
                int i5 = yp0Var.c;
                if (zIsHighSurrogate) {
                    int iCodePointAt = Character.codePointAt(charSequence2, i5);
                    yp0Var.c = Character.charCount(iCodePointAt) + yp0Var.c;
                    directionality = Character.getDirectionality(iCodePointAt);
                } else {
                    yp0Var.c = i5 + 1;
                    char c2 = yp0Var.d;
                    directionality = c2 < 1792 ? yp0.e[c2] : Character.getDirectionality(c2);
                }
                if (directionality != 0) {
                    if (directionality == 1 || directionality == 2) {
                        if (i3 == 0) {
                            return 1;
                        }
                    } else if (directionality != 9) {
                        switch (directionality) {
                            case 14:
                            case 15:
                                i3++;
                                i2 = -1;
                                continue;
                            case Argon2.V10 /* 16 */:
                            case 17:
                                i3++;
                                i2 = 1;
                                continue;
                            case 18:
                                i3--;
                                i2 = 0;
                                continue;
                        }
                    }
                } else if (i3 == 0) {
                    return -1;
                }
                i = i3;
            }
        }
        if (i != 0) {
            if (i2 == 0) {
                while (yp0Var.c > 0) {
                    switch (yp0Var.a()) {
                        case 14:
                        case 15:
                            if (i == i3) {
                                return -1;
                            }
                            i3--;
                            break;
                        case Argon2.V10 /* 16 */:
                        case 17:
                            if (i == i3) {
                                return 1;
                            }
                            i3--;
                            break;
                        case 18:
                            i3++;
                            break;
                        default:
                            break;
                    }
                }
            } else {
                return i2;
            }
        }
        return 0;
    }

    public static int b(CharSequence charSequence) {
        yp0 yp0Var = new yp0(charSequence);
        yp0Var.c = yp0Var.b;
        int i = 0;
        while (true) {
            int i2 = i;
            while (yp0Var.c > 0) {
                byte bA = yp0Var.a();
                if (bA == 0) {
                    if (i == 0) {
                        return -1;
                    }
                    if (i2 == 0) {
                    }
                } else if (bA == 1 || bA == 2) {
                    if (i == 0) {
                        return 1;
                    }
                    if (i2 == 0) {
                    }
                } else if (bA != 9) {
                    switch (bA) {
                        case 14:
                        case 15:
                            if (i2 == i) {
                                return -1;
                            }
                            i--;
                            break;
                        case Argon2.V10 /* 16 */:
                        case 17:
                            if (i2 == i) {
                                return 1;
                            }
                            i--;
                            break;
                        case 18:
                            i++;
                            break;
                        default:
                            if (i2 != 0) {
                            }
                            break;
                    }
                } else {
                    continue;
                }
            }
            return 0;
        }
    }

    public final SpannableStringBuilder c(CharSequence charSequence) {
        String str;
        be beVar = x08.c;
        if (charSequence == null) {
            return null;
        }
        boolean zE = beVar.e(charSequence.length(), charSequence);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        boolean zE2 = (zE ? x08.b : x08.a).e(charSequence.length(), charSequence);
        String str2 = "";
        String str3 = c;
        String str4 = b;
        boolean z = this.a;
        if (z || !(zE2 || a(charSequence) == 1)) {
            str = (!z || (zE2 && a(charSequence) != -1)) ? "" : str3;
        } else {
            str = str4;
        }
        spannableStringBuilder.append((CharSequence) str);
        if (zE != z) {
            spannableStringBuilder.append(zE ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        boolean zE3 = (zE ? x08.b : x08.a).e(charSequence.length(), charSequence);
        if (!z && (zE3 || b(charSequence) == 1)) {
            str2 = str4;
        } else if (z && (!zE3 || b(charSequence) == -1)) {
            str2 = str3;
        }
        spannableStringBuilder.append((CharSequence) str2);
        return spannableStringBuilder;
    }
}
