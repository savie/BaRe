package defpackage;

import android.content.DialogInterface;
import android.os.Parcelable;
import android.view.animation.PathInterpolator;
import androidx.recyclerview.widget.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity;
import org.swiftapps.swiftbackup.settings.FolderBackupStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rs implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ rs(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        int i2 = 3;
        be8 be8Var = be8.a;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                ji jiVar = (ji) obj;
                ((Boolean) obj2).getClass();
                jiVar.getClass();
                ((ws) obj3).q = true;
                v53.a.f(jiVar, true);
                return be8Var;
            case 1:
                final f30 f30Var = (f30) obj3;
                final int iIntValue = ((Integer) obj).intValue();
                ((ji) obj2).getClass();
                AppsConfigRunActivity appsConfigRunActivity = f30Var.l;
                if (f30Var.b() > 1) {
                    List entries = d30.getEntries();
                    final ArrayList arrayList = new ArrayList();
                    Iterator it = ((z3) entries).iterator();
                    while (true) {
                        w3 w3Var = (w3) it;
                        if (w3Var.hasNext()) {
                            Object next = w3Var.next();
                            int i3 = e30.a[((d30) next).ordinal()];
                            if (i3 != 1) {
                                if (i3 != 2) {
                                    q.j();
                                    return null;
                                }
                                if (iIntValue != f30Var.b() - 1) {
                                    arrayList.add(next);
                                }
                            } else if (iIntValue != 0) {
                                arrayList.add(next);
                            }
                        } else if (!arrayList.isEmpty()) {
                            ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                arrayList2.add(appsConfigRunActivity.getString(((d30) it2.next()).getStringRes()));
                            }
                            String[] strArr = (String[]) arrayList2.toArray(new String[0]);
                            hv1 hv1Var = new hv1(appsConfigRunActivity, R.style.M3AlertDialogTheme);
                            appsConfigRunActivity.getClass();
                            s35 s35Var = new s35(appsConfigRunActivity, R.style.M3AlertDialogTheme, hv1Var, null);
                            DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: c30
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i4) {
                                    int i5 = e30.a[((d30) arrayList.get(i4)).ordinal()];
                                    f30 f30Var2 = f30Var;
                                    int i6 = iIntValue;
                                    if (i5 == 1) {
                                        f30Var2.n.invoke(Integer.valueOf(i6));
                                    } else {
                                        if (i5 != 2) {
                                            q.j();
                                            return;
                                        }
                                        f30Var2.o.invoke(Integer.valueOf(i6));
                                    }
                                    dialogInterface.dismiss();
                                }
                            };
                            ra raVar = (ra) s35Var.b;
                            raVar.p = strArr;
                            raVar.r = onClickListener;
                            s35Var.q(R.string.cancel, null);
                            s35Var.m();
                        }
                    }
                }
                return be8Var;
            case 2:
                rz0 rz0Var = (rz0) obj;
                ((Integer) obj2).getClass();
                int i4 = CallsBackupsActivity.T;
                rz0Var.getClass();
                ((CallsBackupsActivity) obj3).V(rz0Var);
                return be8Var;
            case 3:
                FolderPickerActivity folderPickerActivity = (FolderPickerActivity) obj3;
                bn3 bn3Var = (bn3) obj;
                ((Integer) obj2).getClass();
                int i5 = FolderPickerActivity.Q;
                bn3Var.getClass();
                in3 in3VarO = folderPickerActivity.V();
                a layoutManager = folderPickerActivity.N().d.getLayoutManager();
                Parcelable parcelableS0 = layoutManager != null ? layoutManager.s0() : null;
                zn4 zn4Var = zn4.a;
                zn4.c(new d32(i2, parcelableS0, in3VarO, bn3Var));
                return be8Var;
            case 4:
                FoldersBatchActivity foldersBatchActivity = (FoldersBatchActivity) obj3;
                List list = (List) obj;
                FolderBackupStrategy folderBackupStrategy = (FolderBackupStrategy) obj2;
                int i6 = FoldersBatchActivity.Y;
                list.getClass();
                folderBackupStrategy.getClass();
                uy7 uy7Var = new uy7(list, folderBackupStrategy, false);
                List listL = foldersBatchActivity.V.l();
                ArrayList arrayList3 = new ArrayList(hl1.G0(listL, 10));
                Iterator it3 = listL.iterator();
                while (true) {
                    boolean zHasNext = it3.hasNext();
                    List list2 = uy7Var.f;
                    if (!zHasNext) {
                        b22 b22Var = new b22(i2, foldersBatchActivity, arrayList3, uy7Var);
                        if (ji8.r(list2)) {
                            sa1.R(foldersBatchActivity, null, b22Var, 1);
                        } else {
                            b22Var.invoke();
                        }
                        return be8Var;
                    }
                    arrayList3.add(new bo3(((zk3) it3.next()).a, list2, null, uy7Var.g));
                }
                break;
            case 5:
                s54 s54Var = (s54) obj;
                ((Integer) obj2).getClass();
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                s54Var.getClass();
                ((HomeSearchActivity) obj3).Z(s54Var);
                return be8Var;
            case 6:
                MessagesBackupRestoreActivity messagesBackupRestoreActivity = (MessagesBackupRestoreActivity) obj3;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                ((Boolean) obj2).getClass();
                be5 be5Var = messagesBackupRestoreActivity.T;
                if (be5Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                be5Var.y();
                messagesBackupRestoreActivity.c0(zBooleanValue);
                return be8Var;
            default:
                ScheduleFolderSelectActivity scheduleFolderSelectActivity = (ScheduleFolderSelectActivity) obj3;
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                ((Boolean) obj2).getClass();
                int i7 = ScheduleFolderSelectActivity.R;
                scheduleFolderSelectActivity.Q(false);
                scheduleFolderSelectActivity.P(zBooleanValue2);
                return be8Var;
        }
    }
}
