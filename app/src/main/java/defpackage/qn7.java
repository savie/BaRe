package defpackage;

import java.util.Calendar;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qn7 extends tn7 {
    public final int c;

    public qn7(int i, Class cls) {
        super(0, cls);
        this.c = i;
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        String strValueOf;
        switch (this.c) {
            case 1:
                Date date = (Date) obj;
                c87Var.getClass();
                if (!c87Var.a.l(x77.WRITE_DATE_KEYS_AS_TIMESTAMPS)) {
                    fk4Var.u(c87Var.d().format(date));
                } else {
                    fk4Var.u(String.valueOf(date.getTime()));
                }
                break;
            case 2:
                long timeInMillis = ((Calendar) obj).getTimeInMillis();
                c87Var.getClass();
                if (!c87Var.a.l(x77.WRITE_DATE_KEYS_AS_TIMESTAMPS)) {
                    fk4Var.u(c87Var.d().format(new Date(timeInMillis)));
                } else {
                    fk4Var.u(String.valueOf(timeInMillis));
                }
                break;
            case 3:
                fk4Var.u(((Class) obj).getName());
                break;
            case 4:
                if (c87Var.a.l(x77.WRITE_ENUMS_USING_TO_STRING)) {
                    strValueOf = obj.toString();
                } else {
                    Enum r11 = (Enum) obj;
                    strValueOf = c87Var.a.l(x77.WRITE_ENUM_KEYS_USING_INDEX) ? String.valueOf(r11.ordinal()) : r11.name();
                }
                fk4Var.u(strValueOf);
                break;
            case 5:
            case 6:
                long jLongValue = ((Number) obj).longValue();
                fk4Var.getClass();
                fk4Var.u(Long.toString(jLongValue));
                break;
            case 7:
                bl0 bl0Var = c87Var.a.b.k;
                byte[] bArr = (byte[]) obj;
                char[] cArr = bl0Var.b;
                int i = bl0Var.f;
                int length = bArr.length;
                StringBuilder sb = new StringBuilder((length >> 2) + length + (length >> 3));
                int i2 = i >> 2;
                int i3 = length - 3;
                int i4 = 0;
                while (true) {
                    int i5 = i2;
                    do {
                        if (i4 > i3) {
                            int i6 = length - i4;
                            if (i6 > 0) {
                                int i7 = i4 + 1;
                                int i8 = bArr[i4] << 16;
                                if (i6 == 2) {
                                    i8 |= (bArr[i7] & 255) << 8;
                                }
                                char c = bl0Var.e;
                                sb.append(cArr[(i8 >> 18) & 63]);
                                sb.append(cArr[(i8 >> 12) & 63]);
                                if (bl0Var.k) {
                                    sb.append(i6 == 2 ? cArr[(i8 >> 6) & 63] : c);
                                    sb.append(c);
                                } else if (i6 == 2) {
                                    sb.append(cArr[(i8 >> 6) & 63]);
                                }
                            }
                            fk4Var.u(sb.toString());
                        } else {
                            int i9 = i4 + 2;
                            int i10 = ((bArr[i4 + 1] & 255) | (bArr[i4] << 8)) << 8;
                            i4 += 3;
                            int i11 = i10 | (bArr[i9] & 255);
                            sb.append(cArr[(i11 >> 18) & 63]);
                            sb.append(cArr[(i11 >> 12) & 63]);
                            sb.append(cArr[(i11 >> 6) & 63]);
                            sb.append(cArr[i11 & 63]);
                            i5--;
                        }
                        break;
                    } while (i5 > 0);
                    sb.append("\\n");
                }
                break;
            default:
                fk4Var.u(obj.toString());
                break;
        }
    }
}
