package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.transition.TransitionSet;
import android.widget.TextView;
import android.widget.Toast;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.credentials.playservices.controllers.identityauth.createpassword.CredentialProviderCreatePasswordController;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.Session;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails;
import org.swiftapps.swiftbackup.home.schedule.data.o;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.settings.FolderBackupStrategy;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class l30 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ l30(MessagesDashActivity messagesDashActivity, ArrayList arrayList) {
        this.a = 10;
        this.c = messagesDashActivity;
        this.b = arrayList;
    }

    @Override // defpackage.bt3
    public final Object invoke() throws IOException {
        String strSubstring;
        Collection<FolderItem> folderItems;
        uy7 uy7Var;
        xp1[] xp1VarArrA;
        int i;
        xp1 xp1Var;
        int i2 = this.a;
        DefaultConstructorMarker defaultConstructorMarker = null;
        int i3 = 1;
        char c = 1;
        be8 be8Var = be8.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i2) {
            case 0:
                return new c40((ArrayList) obj2, (ty7) obj, new b40());
            case 1:
                fu3 fu3Var = (fu3) obj2;
                fu3Var.getClass();
                return fu3Var.h.i((String) obj, "id, thumbnailLink").f;
            case 2:
                return CreatePublicKeyCredentialController.handleResponse$lambda$4((CreatePublicKeyCredentialController) obj2, (c12) obj);
            case 3:
                return CredentialProviderCreatePasswordController.handleResponse$lambda$2((CredentialProviderCreatePasswordController) obj2, (k12) obj);
            case 4:
                return CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$4((CredentialProviderCreatePublicKeyCredentialController) obj2, (k12) obj);
            case 5:
                return CredentialProviderGetSignInIntentController.invokePlayServices$lambda$3$0((CredentialProviderGetSignInIntentController) obj2, (wv3) obj);
            case 6:
                DetailActivity detailActivity = (DetailActivity) obj2;
                ek2 ek2Var = (ek2) obj;
                if (!detailActivity.X) {
                    CoordinatorLayout coordinatorLayout = detailActivity.X().a;
                    coordinatorLayout.getClass();
                    TransitionSet transitionSet = (TransitionSet) detailActivity.Y.getValue();
                    transitionSet.getClass();
                    il0.w(coordinatorLayout, transitionSet, TextView.class);
                }
                if (pe4.d(ek2Var, detailActivity.a0().j.d())) {
                    ((rj2) detailActivity.U.getValue()).b(ek2Var);
                }
                return be8Var;
            case 7:
                o23 o23Var = (o23) obj2;
                d23 d23VarZ = o23Var.z(false);
                String strG = o23Var.G((String) obj);
                String parent = new File(strG).getParent();
                if (parent == null || parent.length() == 0) {
                    parent = null;
                }
                g23[] g23VarArrB = o23Var.B(d23VarZ, parent);
                if (!k55.x(d23VarZ.k)) {
                    g84.f(dj7.l("LIST failed for metadata path=", parent, ". Reply=", d23VarZ.i()));
                    return null;
                }
                for (g23 g23Var : g23VarArrB) {
                    String str = g23Var.d;
                    char c2 = mc3.a;
                    if (strG == null) {
                        strSubstring = null;
                    } else {
                        if (strG.indexOf(0) >= 0) {
                            c6.f("Null character present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it");
                            return null;
                        }
                        strSubstring = strG.substring(Math.max(strG.lastIndexOf(47), strG.lastIndexOf(92)) + 1);
                    }
                    if (pe4.d(str, strSubstring)) {
                        return g23Var;
                    }
                }
                return null;
            case 8:
                zo3 zo3Var = (zo3) obj2;
                FolderItem folderItem = (FolderItem) obj;
                folderItem.getClass();
                zn4.c(new ik3(zo3Var, folderItem, c == true ? 1 : 0));
                zo3Var.e.k(to3.LOCAL);
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                Session session = (Session) obj;
                try {
                    ((ChannelSftp) obj2).disconnect();
                    break;
                } catch (Exception unused) {
                }
                try {
                    session.disconnect();
                    break;
                } catch (Exception unused2) {
                }
                return be8Var;
            case 10:
                int i4 = MessagesDashActivity.T;
                ((MessagesDashActivity) obj).F().j((ArrayList) obj2, true);
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                nd6 nd6Var = (nd6) obj2;
                kg kgVar = (kg) obj;
                sa1 sa1Var = (sa1) nd6Var.getActivity();
                if (sa1Var != null && nd6Var.isAdded() && !sa1Var.isFinishing() && !sa1Var.isDestroyed()) {
                    kgVar.invoke();
                }
                return be8Var;
            case 12:
                ScheduleItem.Folders folders = (ScheduleItem.Folders) obj2;
                ScheduleService scheduleService = (ScheduleService) obj;
                String str2 = ScheduleService.p;
                if (folders.isBackupAllFolders()) {
                    List listE = pz4.g.e();
                    ArrayList arrayList = new ArrayList(hl1.G0(listE, 10));
                    Iterator it = listE.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((FolderMetadata) it.next()).getFolderItem());
                    }
                    folderItems = el1.z1(arrayList);
                } else {
                    folderItems = folders.getFolderItems();
                    if (folderItems == null) {
                        folderItems = ov2.a;
                    }
                }
                if (folderItems.isEmpty()) {
                    vr6.w$default(vr6.INSTANCE, ScheduleService.p, xs1.j("No folders found for schedule ", folders.getItemId()), null, 4, null);
                    return null;
                }
                String itemId = folders.getItemId();
                List<q05> locations = folders.getLocations();
                FolderBackupStrategy backupStrategy = folders.getBackupStrategy();
                ArrayList arrayListX1 = el1.x1(locations);
                vr6.i$default(vr6.INSTANCE, ScheduleService.p, "getFoldersTaskParams: Backup locations: ".concat(el1.Y0(arrayListX1, ", ", null, null, null, 62)), null, 4, null);
                ScheduleLastRunDetails scheduleLastRunDetailsG = scheduleService.g("getFoldersTaskParams: ", arrayListX1);
                if (arrayListX1.isEmpty()) {
                    if (scheduleLastRunDetailsG != null) {
                        ScheduleLastRunDetails.Companion.getClass();
                        o.d(itemId, scheduleLastRunDetailsG);
                    }
                    uy7Var = null;
                } else {
                    if (scheduleLastRunDetailsG == null) {
                        scheduleLastRunDetailsG = new ScheduleLastRunDetails.Started(0L, i3, defaultConstructorMarker);
                    }
                    ScheduleLastRunDetails.Companion.getClass();
                    o.d(itemId, scheduleLastRunDetailsG);
                    uy7Var = new uy7(arrayListX1, backupStrategy, false);
                }
                if (uy7Var == null) {
                    return null;
                }
                ArrayList arrayList2 = new ArrayList(hl1.G0(folderItems, 10));
                for (FolderItem folderItem2 : folderItems) {
                    List list = uy7Var.f;
                    FolderBackupStrategy backupStrategy2 = folders.getBackupStrategy();
                    int i5 = -1;
                    try {
                        SharedPreferences sharedPreferences = cz4.f;
                        if (sharedPreferences == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        i5 = sharedPreferences.getInt("compression_level_folders", -1);
                        while (true) {
                            if (i < 2) {
                                xp1Var = xp1VarArrA[i];
                                if (xp1Var.getLevel() != i5) {
                                    i++;
                                }
                            } else {
                                xp1Var = null;
                            }
                        }
                    } catch (ClassCastException unused3) {
                    }
                    xp1.Companion.getClass();
                    xp1VarArrA = wp1.a();
                    i = 0;
                    if (xp1Var == null) {
                        xp1.Companion.getClass();
                        xp1Var = xp1.DEFAULT;
                    }
                    arrayList2.add(new bo3(folderItem2, list, null, backupStrategy2, xp1Var));
                }
                return new qp3(arrayList2, uy7Var, new pp3());
            case 13:
                x27 x27Var = (x27) obj2;
                q47 q47Var = (q47) obj;
                ScheduleData scheduleDataC = c47.a.c();
                ScheduleData.a aVar = x27Var.a;
                q47.k(q47Var, ScheduleData.copy$default(scheduleDataC, 0, 0, aVar.ordinal(), aVar == ScheduleData.a.MINIMUM_PERCENT ? Integer.valueOf(x27Var.b) : null, null, null, null, null, null, null, null, null, null, 8179, null));
                return be8Var;
            case 14:
                q63.K((q63) obj2, (String) obj);
                return Boolean.TRUE;
            default:
                Toast.makeText(((Context) obj2).getApplicationContext(), (String) obj, 1).show();
                return be8Var;
        }
    }

    public /* synthetic */ l30(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
