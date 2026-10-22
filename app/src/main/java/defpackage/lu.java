package defpackage;

import android.content.DialogInterface;
import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Set;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.walls.WallApplyActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class lu implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ lu(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i2) {
            case 0:
                mt3 mt3Var = (mt3) obj;
                Set<String> setKeySet = ((LinkedHashMap) obj2).keySet();
                ArrayList arrayList = new ArrayList();
                for (String str : setKeySet) {
                    iu.Companion.getClass();
                    iu iuVarA = gu.a(str);
                    if (iuVarA != null) {
                        arrayList.add(iuVarA);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                for (Object obj3 : arrayList) {
                    if (((iu) obj3).getBackupReq().isPossible()) {
                        arrayList2.add(obj3);
                    }
                }
                mt3Var.invoke(el1.z1(arrayList2));
                break;
            case 1:
                rz0 rz0Var = (rz0) obj;
                ((x01) obj2).U().j(nc8.I(rz0Var), rz0Var.isCloudItem());
                break;
            case 2:
                int i3 = CsActivity.P0;
                ((CsActivity) obj2).Y((vi1) obj);
                break;
            default:
                WallApplyActivity wallApplyActivity = (WallApplyActivity) obj2;
                Bitmap bitmap = (Bitmap) obj;
                ao8 ao8Var = WallApplyActivity.O;
                jv1 jv1Var = null;
                if (i == 0) {
                    co8 co8VarO = wallApplyActivity.U();
                    ho8 ho8Var = ho8.HOME;
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new m30(co8VarO, ho8Var, bitmap, jv1Var, 1));
                    break;
                } else if (i == 1) {
                    co8 co8VarO2 = wallApplyActivity.U();
                    ho8 ho8Var2 = ho8.LOCK;
                    zn4 zn4Var2 = zn4.a;
                    zn4.b(null, new m30(co8VarO2, ho8Var2, bitmap, jv1Var, 1));
                    break;
                } else if (i == 2) {
                    co8 co8VarO3 = wallApplyActivity.U();
                    ho8 ho8Var3 = ho8.BOTH;
                    zn4 zn4Var3 = zn4.a;
                    zn4.b(null, new m30(co8VarO3, ho8Var3, bitmap, jv1Var, 1));
                    break;
                }
                break;
        }
    }
}
