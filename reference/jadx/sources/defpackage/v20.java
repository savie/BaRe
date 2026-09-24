package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.Button;
import androidx.fragment.app.u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.Handshake;
import okhttp3.internal.tls.CertificateChainCleaner;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.cloud.orphans.a;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class v20 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ v20(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        String strI;
        int i = this.a;
        int i2 = 1;
        be8 be8Var = be8.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                int i3 = AppsConfigRunActivity.m0;
                ((AppsConfigRunActivity) obj3).V().k((ArrayList) obj2, (ry7) obj);
                return be8Var;
            case 1:
                a aVar = (a) obj3;
                a.j((pe4) obj2, aVar);
                ix6 ix6Var = aVar.f;
                String message = ((bi1) obj).i.getMessage();
                if (message == null) {
                    message = "";
                }
                ix6Var.k(new th1(message));
                return be8Var;
            case 2:
                CertificateChainCleaner certificateChainCleaner = ((CertificatePinner) obj3).b;
                certificateChainCleaner.getClass();
                return certificateChainCleaner.a(((Address) obj).h.d, ((Handshake) obj2).a());
            case 3:
                ((DetailActivity) obj3).a0().l((hz) obj2, (ky7) obj);
                return be8Var;
            case 4:
                AppCloudBackup appCloudBackup = (AppCloudBackup) obj3;
                String str = (String) obj2;
                mk2 mk2Var = (mk2) obj;
                CloudMetadata metadata = appCloudBackup.getMetadata();
                boolean z = str == null || str.length() == 0;
                if (z) {
                    vr6 vr6Var = vr6.INSTANCE;
                    String str2 = mk2Var.b;
                    ji jiVar = mk2Var.e;
                    if (jiVar == null) {
                        pe4.F("app");
                        throw null;
                    }
                    vr6.i$default(vr6Var, str2, dj7.l("Removing note from cloud backup for ", jiVar.asString(), " with backup id: ", appCloudBackup.getBackupId()), null, 4, null);
                } else {
                    vr6 vr6Var2 = vr6.INSTANCE;
                    String str3 = mk2Var.b;
                    ji jiVar2 = mk2Var.e;
                    if (jiVar2 == null) {
                        pe4.F("app");
                        throw null;
                    }
                    vr6.i$default(vr6Var2, str3, dj7.l("Adding note for cloud backup for ", jiVar2.asString(), " with backup id: ", appCloudBackup.getBackupId()), null, 4, null);
                    vr6.i$default(vr6Var2, mk2Var.b, eq3.k("Note: '", str, "'"), null, 4, null);
                }
                metadata.updateNote(str);
                ji jiVar3 = mk2Var.e;
                if (jiVar3 == null) {
                    pe4.F("app");
                    throw null;
                }
                String appId = jiVar3.getAppId();
                zc2 zc2Var = re3.a;
                af3 af3VarC = cf3.c(re3.a(appId, appCloudBackup.getBackupId()), metadata);
                if (pe4.d(af3VarC, ze3.b)) {
                    vr6.i$default(vr6.INSTANCE, mk2Var.b, (z ? "Removing" : "Adding").concat(" note successful"), null, 4, null);
                } else {
                    if (!(af3VarC instanceof ye3)) {
                        q.j();
                        return null;
                    }
                    vr6 vr6Var3 = vr6.INSTANCE;
                    String str4 = mk2Var.b;
                    String str5 = z ? "Removing" : "Adding";
                    vr6.e$default(vr6Var3, str4, str5 + " note failed: " + ((ye3) af3VarC).b, null, 4, null);
                }
                return be8Var;
            case 5:
                kj3 kj3Var = (kj3) obj3;
                FolderMetadata folderMetadata = (FolderMetadata) obj2;
                FolderDetailActivity folderDetailActivity = (FolderDetailActivity) obj;
                int i4 = FolderDetailActivity.Z;
                if (kj3Var != null) {
                    strI = q63.H(kj3Var.d());
                } else {
                    if (folderMetadata == null) {
                        g84.h("Unexpected state reached.");
                        return null;
                    }
                    gv7 gv7Var = w14.a;
                    strI = w14.d().i(folderMetadata);
                }
                zn4 zn4Var = zn4.a;
                zn4.e(new w01(9, folderDetailActivity, strI));
                return be8Var;
            case 6:
                FoldersBatchActivity foldersBatchActivity = (FoldersBatchActivity) obj3;
                List list = (List) obj2;
                int i5 = FoldersBatchActivity.Y;
                List listI = nc8.I(((lk3) obj).f ? q05.CLOUD : q05.DEVICE);
                ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new co3(((zk3) it.next()).a, listI));
                }
                d32 d32Var = new d32(4, foldersBatchActivity, arrayList, new vy7(listI));
                if (listI.contains(q05.CLOUD)) {
                    sa1.R(foldersBatchActivity, null, d32Var, 1);
                } else {
                    d32Var.invoke();
                }
                return be8Var;
            default:
                fs4 fs4Var = (fs4) obj3;
                final ArrayList arrayList2 = (ArrayList) obj2;
                qo0 qo0Var = (qo0) obj;
                if (fs4Var.getActivity() != null && !fs4Var.isDetached()) {
                    if (arrayList2.isEmpty()) {
                        Context contextRequireContext = fs4Var.requireContext();
                        zn4 zn4Var2 = zn4.a;
                        dj7.y(contextRequireContext, "No apps with GMS files");
                    } else {
                        ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList2, 10));
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            arrayList3.add(((bz3) it2.next()).a);
                        }
                        String[] strArr = (String[]) arrayList3.toArray(new String[0]);
                        final ArrayList arrayList4 = new ArrayList();
                        final lh6 lh6Var = new lh6();
                        u uVarRequireActivity = fs4Var.requireActivity();
                        s35 s35Var = new s35(uVarRequireActivity, R.style.M3AlertDialogTheme, new hv1(uVarRequireActivity, R.style.M3AlertDialogTheme), null);
                        ((ra) s35Var.b).d = strArr.length + " Apps with GMS files";
                        s35Var.o(strArr, null, new DialogInterface.OnMultiChoiceClickListener() { // from class: es4
                            @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                            public final void onClick(DialogInterface dialogInterface, int i6, boolean z2) {
                                Object next;
                                ArrayList arrayList5 = arrayList2;
                                Iterator it3 = arrayList5.iterator();
                                do {
                                    if (!it3.hasNext()) {
                                        next = null;
                                        break;
                                    }
                                    next = it3.next();
                                } while (!pe4.d(((bz3) next).b, ((bz3) arrayList5.get(i6)).b));
                                bz3 bz3Var = (bz3) next;
                                if (bz3Var != null) {
                                    ArrayList arrayList6 = arrayList4;
                                    if (z2) {
                                        arrayList6.add(bz3Var);
                                    } else {
                                        arrayList6.remove(bz3Var);
                                    }
                                    Button button = (Button) lh6Var.a;
                                    if (button != null) {
                                        button.setEnabled(!arrayList6.isEmpty());
                                    }
                                }
                            }
                        });
                        s35Var.t("Delete GMS files", new kb1(i2, qo0Var, arrayList4));
                        s35Var.p();
                        wa waVarM = s35Var.m();
                        waVarM.getClass();
                        Button buttonF = waVarM.f(-1);
                        lh6Var.a = buttonF;
                        if (buttonF != null) {
                            buttonF.setEnabled(!arrayList4.isEmpty());
                        }
                    }
                }
                return be8Var;
        }
    }
}
