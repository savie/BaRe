package defpackage;

import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.Session;
import com.jcraft.jsch.SftpStatVFS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xc1 implements qt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ xc1(li4 li4Var) {
        this.a = 1;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return dd1._init_$lambda$9((il0) obj, ((Integer) obj2).intValue());
            case 1:
                ChannelSftp channelSftp = (ChannelSftp) obj;
                channelSftp.getClass();
                ((Session) obj2).getClass();
                try {
                    SftpStatVFS sftpStatVFSStatVFS = channelSftp.statVFS(".");
                    return new ni1(Long.valueOf(sftpStatVFSStatVFS.getUsed() * 1024), Long.valueOf(sftpStatVFSStatVFS.getSize() * 1024));
                } catch (Exception e) {
                    vr6.e$default(vr6.INSTANCE, "JschService", "getQuota", e, null, 8, null);
                    return new ni1(null, null);
                }
            default:
                u28 u28Var = (u28) obj;
                mx1 mx1Var = (mx1) obj2;
                if (mx1Var instanceof l28) {
                    l28 l28Var = (l28) mx1Var;
                    ox1 ox1Var = u28Var.a;
                    Object objA = l28Var.a();
                    Object[] objArr = u28Var.b;
                    int i = u28Var.d;
                    objArr[i] = objA;
                    l28[] l28VarArr = u28Var.c;
                    u28Var.d = i + 1;
                    l28VarArr[i] = l28Var;
                }
                return u28Var;
        }
    }

    public /* synthetic */ xc1(int i) {
        this.a = i;
    }
}
