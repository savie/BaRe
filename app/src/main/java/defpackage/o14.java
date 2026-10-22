package defpackage;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o14 implements i98 {
    public final /* synthetic */ int a;
    public final Object b;

    public o14(int i) {
        this.a = i;
        switch (i) {
            case 1:
                this.b = Pattern.compile("_");
                break;
            default:
                this.b = new fd2(Date.class);
                break;
        }
    }

    @Override // defpackage.i98
    public final Object a(String str) throws bg4 {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                Date dateA = ((fd2) obj).a(str);
                GregorianCalendar gregorianCalendar = new GregorianCalendar();
                if (dateA != null) {
                    gregorianCalendar.setTime(dateA);
                }
                return gregorianCalendar;
            default:
                String[] strArrSplit = ((Pattern) obj).split(str);
                if (strArrSplit.length < 1) {
                    throw new bg4("Invalid locale %s", str);
                }
                String[] strArr = new String[3];
                strArr[0] = "";
                strArr[1] = "";
                strArr[2] = "";
                for (int i2 = 0; i2 < 3; i2++) {
                    if (i2 < strArrSplit.length) {
                        strArr[i2] = strArrSplit[i2];
                    }
                }
                return new Locale(strArr[0], strArr[1], strArr[2]);
        }
    }

    @Override // defpackage.i98
    public final String b(Object obj) {
        switch (this.a) {
            case 0:
                return ((fd2) this.b).b(((GregorianCalendar) obj).getTime());
            default:
                return ((Locale) obj).toString();
        }
    }
}
