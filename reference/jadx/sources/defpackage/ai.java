package defpackage;

import java.io.File;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ai implements mt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ ai(int i) {
        this.a = i;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) throws InterruptedException {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                Byte b = (Byte) obj;
                b.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
            case 1:
                File file = (File) obj;
                file.getClass();
                String absolutePath = file.getAbsolutePath();
                absolutePath.getClass();
                return new q63(absolutePath, 1);
            case 2:
                String str = (String) obj;
                if (str != null && str.length() != 0) {
                    tb1 tb1Var = tb1.a;
                    qb1.t(str);
                }
                return be8Var;
            case 3:
                Integer num = (Integer) obj;
                int iIntValue = num.intValue();
                return el1.Y0(fl1.A0(Integer.valueOf(iIntValue >>> 24), Integer.valueOf(iIntValue >>> 16), Integer.valueOf(iIntValue >>> 8), num), ".", null, null, new hc1(3), 30);
            default:
                Thread.sleep(((Long) obj).longValue());
                return be8Var;
        }
    }
}
