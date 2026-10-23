package defpackage;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;
import org.swiftapps.swiftbackup.notice.NoticeListActivity;
import org.swiftapps.swiftbackup.password.UserPasswordActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;
import org.swiftapps.swiftbackup.settings.f;
import org.swiftapps.swiftbackup.settings.i;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.swiftapps.swiftbackup.wifi.WifiActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qb5 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ qb5(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b2  */
    @Override // defpackage.bt3
    public final Object invoke() {
        Set setG;
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                int i2 = MegaSignInActivity.S;
                return ((MegaSignInActivity) obj).N().f.d;
            case 1:
                int i3 = MessagesBackupsActivity.T;
                return ((ni7) ((MessagesBackupsActivity) obj).Q.getValue()).d;
            case 2:
                int i4 = MultipleBackupsActivity.T;
                View viewInflate = ((MultipleBackupsActivity) obj).getLayoutInflater().inflate(R.layout.multiple_backups_strategy_activity, (ViewGroup) null, false);
                int i5 = R.id.appbar_layout;
                View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                if (viewU != null) {
                    w00 w00VarB = w00.b(viewU);
                    i5 = R.id.btn_action;
                    ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate, R.id.btn_action);
                    if (extendedFloatingActionButton != null) {
                        i5 = R.id.mbs_conditional_item;
                        View viewU2 = ms8.u(viewInflate, R.id.mbs_conditional_item);
                        if (viewU2 != null) {
                            cj5 cj5VarA = cj5.a(viewU2);
                            i5 = R.id.mbs_dated_item;
                            View viewU3 = ms8.u(viewInflate, R.id.mbs_dated_item);
                            if (viewU3 != null) {
                                cj5 cj5VarA2 = cj5.a(viewU3);
                                i5 = R.id.mbs_single_item;
                                View viewU4 = ms8.u(viewInflate, R.id.mbs_single_item);
                                if (viewU4 != null) {
                                    cj5 cj5VarA3 = cj5.a(viewU4);
                                    i5 = R.id.scroll_view;
                                    NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.scroll_view);
                                    if (nestedScrollView != null) {
                                        return new bj5((CoordinatorLayout) viewInflate, w00VarB, extendedFloatingActionButton, cj5VarA, cj5VarA2, cj5VarA3, nestedScrollView);
                                    }
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i5)));
                return null;
            case 3:
                i iVar = (i) obj;
                for (MultipleBackupStrategy multipleBackupStrategy : fl1.A0(iVar.a, iVar.b, iVar.c)) {
                    if (f.b(multipleBackupStrategy) == iVar.d) {
                        return multipleBackupStrategy;
                    }
                }
                throw new NoSuchElementException("Collection contains no element matching the predicate.");
            case 4:
                int i6 = NoticeListActivity.N;
                return ((oo5) ((NoticeListActivity) obj).K.getValue()).c;
            case 5:
                int i7 = PremiumActivity.V;
                return ((PremiumActivity) obj).R().c;
            case 6:
                int i8 = SLogActivity.R;
                return ((th7) ((SLogActivity) obj).L.getValue()).d;
            case 7:
                int i9 = ScheduleFolderSelectActivity.R;
                return ((ScheduleFolderSelectActivity) obj).O().e;
            case 8:
                Parcelable.Creator<zc6> creator = zc6.CREATOR;
                String pinnedQuickActions = ((AppSettings) obj).getPinnedQuickActions();
                if (pinnedQuickActions == null) {
                    setG = yc6.g();
                } else {
                    String str = pinnedQuickActions.length() > 0 ? pinnedQuickActions : null;
                    if (str != null) {
                        List listX0 = nq7.x0(str, new String[]{", "}, 6);
                        ArrayList arrayList = new ArrayList();
                        Iterator it = listX0.iterator();
                        while (it.hasNext()) {
                            Integer numX = uq7.X(nq7.H0((String) it.next()).toString());
                            if (numX != null) {
                                arrayList.add(numX);
                            }
                        }
                        setG = el1.z1(arrayList);
                    } else {
                        setG = yc6.g();
                    }
                }
                yc6.k(setG);
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                SwiftApp.Companion companion = SwiftApp.d;
                return ((zn7) obj).q(SwiftApp.Companion.c());
            case 10:
                return ((qa8) ((pa8) obj).K).c;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i10 = UserPasswordActivity.O;
                return ((UserPasswordActivity) obj).N().e;
            case 12:
                WifiActivity wifiActivity = (WifiActivity) obj;
                et8 et8Var = WifiActivity.Y;
                return new cs8(wifiActivity, wifiActivity.X().n, wifiActivity.a0());
            case 13:
                return new dj0(((cs8) obj).a);
            default:
                xs8 xs8Var = (xs8) obj;
                Toast toast = xs8Var.a;
                if (toast != null) {
                    toast.cancel();
                }
                SwiftApp.Companion companion2 = SwiftApp.d;
                Toast toastMakeText = Toast.makeText(SwiftApp.Companion.c(), R.string.reboot_required_to_restore_hidden_wifi_msg, 1);
                xs8Var.a = toastMakeText;
                if (toastMakeText != null) {
                    toastMakeText.show();
                }
                return be8Var;
        }
    }
}
