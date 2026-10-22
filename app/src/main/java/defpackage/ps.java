package defpackage;

import android.content.DialogInterface;
import android.content.Intent;
import android.widget.CheckBox;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.settings.FolderBackupStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ps implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ps(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                ji jiVar = (ji) obj;
                jiVar.getClass();
                ((CheckBox) obj2).getClass();
                int i2 = DetailActivity.b0;
                il0 il0Var = ((ws) obj3).l;
                il0Var.getClass();
                Intent intentPutExtra = new Intent(il0Var, (Class<?>) DetailActivity.class).putExtra(ji.PARCEL_KEY, jiVar);
                intentPutExtra.getClass();
                il0Var.startActivity(intentPutExtra);
                break;
            case 1:
                final l20 l20Var = (l20) obj3;
                final int iIntValue = ((Integer) obj).intValue();
                ((ji) obj2).getClass();
                AppsBatchActivity appsBatchActivity = l20Var.l;
                if (l20Var.b() > 1) {
                    final jx2 entries = j20.getEntries();
                    ArrayList arrayList = new ArrayList(hl1.G0(entries, 10));
                    Iterator it = ((z3) entries).iterator();
                    while (true) {
                        w3 w3Var = (w3) it;
                        if (!w3Var.hasNext()) {
                            String[] strArr = (String[]) arrayList.toArray(new String[0]);
                            hv1 hv1Var = new hv1(appsBatchActivity, R.style.M3AlertDialogTheme);
                            appsBatchActivity.getClass();
                            s35 s35Var = new s35(appsBatchActivity, R.style.M3AlertDialogTheme, hv1Var, null);
                            DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: i20
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i3) {
                                    int i4 = k20.a[((j20) ((kx2) entries).get(i3)).ordinal()];
                                    l20 l20Var2 = l20Var;
                                    int i5 = iIntValue;
                                    if (i4 == 1) {
                                        l20Var2.o.invoke(Integer.valueOf(i5));
                                    } else {
                                        if (i4 != 2) {
                                            q.j();
                                            return;
                                        }
                                        l20Var2.p.invoke(Integer.valueOf(i5));
                                    }
                                    dialogInterface.dismiss();
                                }
                            };
                            ra raVar = (ra) s35Var.b;
                            raVar.p = strArr;
                            raVar.r = onClickListener;
                            s35Var.q(R.string.cancel, null);
                            s35Var.m();
                        } else {
                            arrayList.add(appsBatchActivity.getString(((j20) w3Var.next()).getStringRes()));
                        }
                    }
                }
                break;
            case 2:
                md1 md1Var = (md1) obj;
                ((Integer) obj2).getClass();
                int i3 = CloudDiagnosticsActivity.Z;
                md1Var.getClass();
                hf1 hf1VarV = ((CloudDiagnosticsActivity) obj3).U();
                sd1 sd1Var = md1Var.a.a;
                sd1Var.getClass();
                ef1 ef1Var = hf1VarV.h;
                if (ef1Var != null && !ef1Var.i) {
                    hf1VarV.p(new e7(sd1Var, 6));
                }
                break;
            default:
                FolderDetailActivity folderDetailActivity = (FolderDetailActivity) obj3;
                List list = (List) obj;
                FolderBackupStrategy folderBackupStrategy = (FolderBackupStrategy) obj2;
                int i4 = FolderDetailActivity.Z;
                list.getClass();
                folderBackupStrategy.getClass();
                uy7 uy7Var = new uy7(list, folderBackupStrategy, false);
                if (!list.contains(q05.CLOUD)) {
                    zn4.c(new kg(8, folderDetailActivity.U(), uy7Var));
                } else {
                    sa1.R(folderDetailActivity, null, new g52(3, folderDetailActivity, uy7Var), 1);
                }
                break;
        }
        return be8Var;
    }
}
