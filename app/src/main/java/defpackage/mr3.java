package defpackage;

import android.content.ServiceConnection;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.z;
import com.topjohnwu.superuser.Shell;
import com.yubico.yubikit.android.ui.OtpActivity;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mr3 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ mr3(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                Iterator it = ((z) obj).n.iterator();
                if (it.hasNext()) {
                    throw eq3.h(it);
                }
                return;
            case 1:
                int i2 = OtpActivity.x;
                ((OtpActivity) obj).k.setText(R.string.yubikit_otp_touch);
                return;
            case 2:
                pd7 pd7Var = (pd7) obj;
                try {
                    int i3 = Shell.UNKNOWN;
                    zd7 zd7VarJ = k55.j();
                    if (zd7VarJ.isRoot()) {
                        zd7VarJ.execTask(pd7Var);
                        return;
                    }
                    return;
                } catch (IOException e) {
                    ji8.k("LIBSU", e);
                    return;
                }
            case 3:
                ue7 ue7Var = (ue7) obj;
                HashSet hashSet = ue7Var.a;
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((ServiceConnection) it2.next()).onServiceDisconnected(ue7Var.b);
                }
                hashSet.clear();
                ArrayList arrayList = new ArrayList();
                Map map = ve7.a;
                for (Map.Entry entry : map.entrySet()) {
                    if (entry.getValue() == ue7Var) {
                        arrayList.add((String) entry.getKey());
                    }
                }
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    map.remove((String) it3.next());
                }
                return;
            case 4:
                int i4 = SwiftSegmentedCardGroup.k;
                ((View) obj).setPressed(false);
                return;
            case 5:
                k88 k88Var = ((Toolbar) obj).h0;
                ic5 ic5Var = k88Var == null ? null : k88Var.b;
                if (ic5Var != null) {
                    ic5Var.collapseActionView();
                    return;
                }
                return;
            default:
                ((HttpURLConnection) obj).disconnect();
                return;
        }
    }
}
