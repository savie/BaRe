package defpackage;

import android.util.Log;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.Session;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ii4 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ii4(int i, Object obj, Object obj2) {
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
                    String strC = li4Var.C(str);
                    ArrayList arrayListF = li4.F(channelSftp.ls(strC));
                    ArrayList arrayList = new ArrayList(hl1.G0(arrayListF, 10));
                    Iterator it = arrayListF.iterator();
                    while (it.hasNext()) {
                        arrayList.add(og1.f((ChannelSftp.LsEntry) it.next(), strC));
                    }
                    return new gh1(arrayList);
                } catch (Exception e) {
                    if (li4.z(e)) {
                        return new gh1(ov2.a);
                    }
                    Log.e("JschService", "listMetadataDirectory", e);
                    vr6.e$default(vr6.INSTANCE, "JschService", "listMetadataDirectory: ".concat(io4.b(e)), null, 4, null);
                    return fh1.a;
                }
            default:
                so7 so7Var = (so7) obj;
                ((Integer) obj2).getClass();
                int i2 = StorageSwitchActivity.f0;
                so7Var.getClass();
                ((qo7) obj4).t(sz8.Y(so7Var.getItemId()));
                ((StorageSwitchActivity) obj3).Z();
                return be8.a;
        }
    }
}
