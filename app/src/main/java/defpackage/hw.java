package defpackage;

import java.io.File;
import java.util.Arrays;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hw implements mt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ hw(int i) {
        this.a = i;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) throws InterruptedException {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                File file = (File) obj;
                file.getClass();
                return Boolean.valueOf(file.isFile());
            case 1:
                Thread.sleep(((Long) obj).longValue());
                return be8Var;
            case 2:
                Exception exc = (Exception) obj;
                exc.getClass();
                String simpleName = exc.getClass().getSimpleName();
                String message = exc.getMessage();
                return (message == null || message.length() == 0) ? simpleName : dj7.k(simpleName, ": ", message);
            case 3:
                Byte b = (Byte) obj;
                b.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
            case 4:
                Byte b2 = (Byte) obj;
                b2.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b2}, 1));
            case 5:
                ((MultipleBackupStrategy.NewBackupCondition) obj).getClass();
                return be8Var;
            default:
                wm2 wm2Var = (wm2) obj;
                wm2Var.getClass();
                long j = wm2Var.m().a;
                return new ni1(Long.valueOf(j - wm2Var.m().b), Long.valueOf(j));
        }
    }
}
