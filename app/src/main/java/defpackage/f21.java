package defpackage;

import android.content.DialogInterface;
import com.microsoft.identity.common.internal.providers.oauth2.CameraPermissionRequestHandler;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity;
import org.swiftapps.swiftbackup.cloud.orphans.a;
import org.swiftapps.swiftbackup.cloud.orphans.b;
import org.swiftapps.swiftbackup.cloud.orphans.c;
import org.swiftapps.swiftbackup.shortcuts.ShortcutsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f21 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ f21(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Object obj = this.b;
        switch (i2) {
            case 0:
                CameraPermissionRequestHandler.b((CameraPermissionRequestHandler) obj);
                break;
            case 1:
                int i3 = CloudOrphanCleanerActivity.S;
                a aVarV = ((CloudOrphanCleanerActivity) obj).U();
                ix6 ix6Var = aVarV.f;
                b bVar = aVarV.g;
                if (bVar != null && bVar.b()) {
                    if (!aVarV.p(bVar)) {
                        aVarV.m++;
                        aVarV.r(a.o());
                        ix6Var.k(new vh1(R.string.cloud_orphan_scan_again));
                    } else {
                        kc kcVar = aVarV.h;
                        if (kcVar != null) {
                            ArrayList arrayListC = bVar.c();
                            String str = bVar.g;
                            long j = aVarV.m;
                            pw5 pw5VarM = aVarV.m();
                            long jLongValue = ((Number) pw5VarM.a).longValue();
                            qh4 qh4Var = (qh4) pw5VarM.b;
                            aVarV.s(new sl(aVarV));
                            zn4 zn4Var = zn4.a;
                            zn4.b(qh4Var, new c(kcVar, arrayListC, aVarV, j, str, jLongValue, qh4Var, null));
                        } else {
                            ix6Var.k(new vh1(R.string.cloud_orphan_scan_again));
                        }
                    }
                }
                break;
            case 2:
                ((ShortcutsActivity) obj).finish();
                break;
            default:
                ((jh6) obj).a = i;
                break;
        }
    }
}
