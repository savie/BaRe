package defpackage;

import android.content.Intent;
import android.content.SharedPreferences;
import android.view.animation.PathInterpolator;
import androidx.fragment.app.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vo3 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ vo3(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                FoldersDashActivity foldersDashActivity = (FoldersDashActivity) il0Var;
                xk3 xk3Var = (xk3) obj;
                vk3 vk3Var = (vk3) obj2;
                xk3Var.getClass();
                vk3Var.getClass();
                String str = xk3Var + ":" + vk3Var;
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putString("folders_list_sort_options", str).apply();
                int i2 = FoldersDashActivity.U;
                List<o> listF = foldersDashActivity.getSupportFragmentManager().c.f();
                listF.getClass();
                ArrayList arrayList = new ArrayList(hl1.G0(listF, 10));
                for (o oVar : listF) {
                    oVar.getClass();
                    arrayList.add((kp3) oVar);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    np3 np3VarM = ((kp3) it.next()).m();
                    np3VarM.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.c(new mo3(np3VarM, 2));
                }
                return be8Var;
            case 1:
                s54 s54Var = (s54) obj;
                ((Integer) obj2).getClass();
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                s54Var.getClass();
                ((HomeSearchActivity) il0Var).Z(s54Var);
                return be8Var;
            default:
                LabelsActivity labelsActivity = (LabelsActivity) il0Var;
                vq4 vq4Var = (vq4) obj;
                ((Integer) obj2).getClass();
                int i3 = LabelsActivity.Z;
                vq4Var.getClass();
                LabelParams labelParams = vq4Var.a;
                labelParams.getClass();
                if (V.INSTANCE.getA()) {
                    Intent intent = new Intent(labelsActivity, (Class<?>) LabelEditActivity.class);
                    intent.putExtra("label_edit", labelParams);
                    labelsActivity.startActivity(intent);
                } else {
                    zn4 zn4Var2 = zn4.a;
                    zn4.e(new b56(labelsActivity, 0));
                }
                return be8Var;
        }
    }
}
