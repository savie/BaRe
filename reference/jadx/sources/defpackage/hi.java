package defpackage;

import java.io.File;
import java.security.SecureRandom;
import java.util.Locale;
import okhttp3.MediaType;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class hi implements mt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ hi(int i) {
        this.a = i;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        switch (this.a) {
            case 0:
                return ji.getSplitsUsingWorkaround$lambda$2((File) obj);
            case 1:
                dd1 dd1Var = (dd1) obj;
                dd1Var.getClass();
                return Boolean.valueOf(dd1Var.getReleaseState().compareTo(xi6.Dev) <= 0);
            case 2:
                md1 md1Var = (md1) obj;
                md1Var.getClass();
                return md1.a(md1Var, false, rd1.RUNNING, null, null, null, 3);
            case 3:
                byte[] bArr = new byte[((Integer) obj).intValue()];
                new SecureRandom().nextBytes(bArr);
                return bArr;
            case 4:
                Throwable th = (Throwable) obj;
                th.getClass();
                return th.getCause();
            case 5:
                vi1 vi1Var = (vi1) obj;
                vi1Var.getClass();
                return vi1Var.b + "@" + vi1Var.a();
            case 6:
                String str = (String) obj;
                str.getClass();
                byte[] bytes = str.getBytes(f51.a);
                bytes.getClass();
                StringBuilder sb = new StringBuilder(bytes.length);
                for (byte b : bytes) {
                    int i = b & 255;
                    char c = (char) i;
                    MediaType mediaType = st5.f;
                    if (('A' > c || c >= '[') && (('a' > c || c >= '{') && !(('0' <= c && c < ':') || c == '-' || c == '.' || c == '_' || c == '~'))) {
                        sb.append('%');
                        ly8.j(16);
                        String string = Integer.toString(i, 16);
                        string.getClass();
                        String upperCase = string.toUpperCase(Locale.ROOT);
                        upperCase.getClass();
                        sb.append(nq7.o0(2, upperCase));
                    } else {
                        sb.append(c);
                    }
                }
                return sb.toString();
            case 7:
                return ScheduleItem.getRepeatDisplayString$lambda$1((jd2) obj);
            case 8:
                return obj;
            default:
                int iByteValue = ((Byte) obj).byteValue() & 255;
                ly8.j(16);
                String string2 = Integer.toString(iByteValue, 16);
                string2.getClass();
                return nq7.o0(2, string2);
        }
    }
}
