package defpackage;

import android.util.Log;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.Session;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.manage.ManageSpaceActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gi4 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ gi4(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
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
                    channelSftp.stat(li4Var.C(str));
                    return ih1.Exists;
                } catch (Exception e) {
                    if (li4.z(e)) {
                        return ih1.Missing;
                    }
                    Log.e("JschService", "getMetadataPathExistence", e);
                    vr6.e$default(vr6.INSTANCE, "JschService", "getMetadataPathExistence: ".concat(io4.b(e)), null, 4, null);
                    return ih1.Unknown;
                }
            default:
                final ManageSpaceActivity manageSpaceActivity = (ManageSpaceActivity) obj4;
                final ry5 ry5Var = (ry5) obj3;
                final u55 u55Var = (u55) obj;
                final int iIntValue = ((Integer) obj2).intValue();
                int i2 = ManageSpaceActivity.O;
                u55Var.getClass();
                Const.I(manageSpaceActivity, u55Var.b, u55Var.a == 0 ? manageSpaceActivity.getString(R.string.app_will_restart_after_deleting) : null, new bt3() { // from class: o55
                    @Override // defpackage.bt3
                    public final Object invoke() {
                        int i3 = ManageSpaceActivity.O;
                        ManageSpaceActivity manageSpaceActivity2 = manageSpaceActivity;
                        manageSpaceActivity2.M(R.string.processing);
                        zn4 zn4Var = zn4.a;
                        zn4.b(null, new q55(u55Var, ry5Var, manageSpaceActivity2, iIntValue, null));
                        return be8.a;
                    }
                });
                return be8.a;
        }
    }
}
