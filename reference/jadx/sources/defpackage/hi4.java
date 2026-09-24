package defpackage;

import android.util.Log;
import android.view.View;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.Session;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class hi4 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ hi4(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj3 = this.c;
        Object obj4 = this.b;
        switch (i) {
            case 0:
                li4 li4Var = (li4) obj4;
                String str = (String) obj3;
                ChannelSftp channelSftp = (ChannelSftp) obj;
                channelSftp.getClass();
                ((Session) obj2).getClass();
                try {
                    li4Var.v(str, channelSftp);
                } catch (Exception e) {
                    Log.e("JschService", "createDirectory", e);
                    vr6.e$default(vr6.INSTANCE, "JschService", "createDirectory: ".concat(io4.b(e)), null, 4, null);
                }
                break;
            default:
                View view = (View) obj;
                int iIntValue = ((Integer) obj2).intValue();
                view.getClass();
                ((bs8) obj4).a.c0(el1.x1(((fu8) ((gu8) obj3)).a), iIntValue, false, view);
                break;
        }
        return be8Var;
        return be8Var;
    }
}
