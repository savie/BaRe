package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Guideline;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.preference.Preference;
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.jcraft.jsch.Argon2;
import com.pcloud.sdk.AuthorizationActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.notice.NoticeItem;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;
import org.swiftapps.swiftbackup.settings.h;
import org.swiftapps.swiftbackup.tasks.PreconditionsActivity;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class as4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ as4(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        int i2 = R.id.appbar_layout;
        boolean z = false;
        be8 be8Var = be8.a;
        ArrayList arrayList = null;
        Object[] objArr = 0;
        Object obj = this.b;
        switch (i) {
            case 0:
                Preference preferenceJ = ((fs4) obj).j("extra_logging");
                preferenceJ.getClass();
                return (MSwitchPreference) preferenceJ;
            case 1:
                is4 is4Var = (is4) obj;
                return Locale.forLanguageTag(is4Var.a + "-" + is4Var.b);
            case 2:
                int i3 = MessagesBackupRestoreActivity.c0;
                return ((MessagesBackupRestoreActivity) obj).X().e;
            case 3:
                Preference preferenceJ2 = ((cf5) obj).j("compression_level_msgs");
                preferenceJ2.getClass();
                return preferenceJ2;
            case 4:
                oi5 oi5Var = (oi5) obj;
                q63 q63Var = oi5Var.x;
                try {
                    q63Var.G().close();
                    z = true;
                } catch (Exception e) {
                    Log.w(oi5Var.k, "Unable to open random writer for ".concat(q63Var.v()), e);
                }
                return Boolean.valueOf(z);
            case 5:
                MultipleBackupsActivity multipleBackupsActivity = (MultipleBackupsActivity) obj;
                int i4 = MultipleBackupsActivity.T;
                return new h(multipleBackupsActivity, multipleBackupsActivity.O().d);
            case 6:
                return (NoticeItem) ((eb2) obj).c(NoticeItem.class);
            case 7:
                Intent intent = (Intent) obj;
                Uri uri = AuthorizationActivity.f;
                if (intent.hasExtra("com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_RESULT")) {
                    return (v80) intent.getParcelableExtra("com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_RESULT");
                }
                c6.f("Invalid intent provided.");
                return null;
            case 8:
                int i5 = PreconditionsActivity.P;
                return ((PreconditionsActivity) obj).O().c;
            case XmlPullParser.COMMENT /* 9 */:
                int i6 = PremiumActivity.V;
                return ((PremiumActivity) obj).R().n;
            case 10:
                wx6 wx6Var = (wx6) obj;
                wx6Var.getLifecycle().a(new ag6(wx6Var));
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return ScheduleItem.AppsLabels.getLabelIds$lambda$0((ScheduleItem.AppsLabels) obj);
            case 12:
                int i7 = ScheduleLabelsSelectActivity.X;
                return ((ScheduleLabelsSelectActivity) obj).N().t;
            case 13:
                v37 v37Var = (v37) obj;
                ArrayList arrayListG = w13.g(lr4.e);
                ArrayList arrayList2 = new ArrayList(hl1.G0(arrayListG, 10));
                Iterator it = arrayListG.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((vq4) it.next()).a.getItemId());
                }
                LabelParams.Companion.getClass();
                List listA = hr4.a();
                ArrayList arrayList3 = new ArrayList(hl1.G0(listA, 10));
                Iterator it2 = ((ArrayList) listA).iterator();
                while (it2.hasNext()) {
                    arrayList3.add(((LabelParams) it2.next()).getItemId());
                }
                ArrayList arrayListG1 = el1.g1(arrayList2, arrayList3);
                ArrayList arrayList4 = new ArrayList();
                for (Object obj2 : arrayListG1) {
                    if (v37Var.g.contains((String) obj2)) {
                        arrayList4.add(obj2);
                    }
                }
                ArrayList arrayList5 = new ArrayList();
                for (Object obj3 : arrayList2) {
                    String str = (String) obj3;
                    if (!v37Var.g.contains(str) && !v37Var.f.contains(str)) {
                        arrayList5.add(obj3);
                    }
                }
                ArrayList arrayList6 = new ArrayList();
                for (Object obj4 : arrayList3) {
                    String str2 = (String) obj4;
                    if (!v37Var.g.contains(str2) && !v37Var.f.contains(str2)) {
                        arrayList6.add(obj4);
                    }
                }
                ArrayList arrayList7 = new ArrayList();
                for (Object obj5 : arrayListG1) {
                    if (v37Var.f.contains((String) obj5)) {
                        arrayList7.add(obj5);
                    }
                }
                v37Var.h.k(new u37(arrayList4, arrayList5, arrayList6, arrayList7));
                return be8Var;
            case 14:
                q47 q47Var = (q47) obj;
                ScheduleData scheduleDataC = c47.a.c();
                List<ScheduleItem.Messages> messagesSchedules = scheduleDataC.getMessagesSchedules();
                if (messagesSchedules != null) {
                    arrayList = new ArrayList(hl1.G0(messagesSchedules, 10));
                    for (ScheduleItem.Messages messages : messagesSchedules) {
                        arrayList.add(ScheduleItem.Messages.copy$default(messages, null, null, null, null, null, messages.isPermissionsGranted(), 31, null));
                    }
                }
                q47.k(q47Var, ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, null, null, null, arrayList, null, null, null, null, null, 8063, null));
                return be8Var;
            case 15:
                Preference preferenceJ3 = ((pa7) obj).j("folder_backups");
                preferenceJ3.getClass();
                return preferenceJ3;
            case Argon2.V10 /* 16 */:
                int i8 = StorageSwitchActivity.f0;
                View viewInflate = ((StorageSwitchActivity) obj).getLayoutInflater().inflate(R.layout.storage_switch_activity, (ViewGroup) null, false);
                View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                if (viewU != null) {
                    w00 w00VarB = w00.b(viewU);
                    i2 = R.id.btn_action;
                    ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate, R.id.btn_action);
                    if (extendedFloatingActionButton != null) {
                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                        i2 = R.id.progress_bar;
                        CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(viewInflate, R.id.progress_bar);
                        if (circularProgressIndicator != null) {
                            i2 = R.id.recycler_view;
                            QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.recycler_view);
                            if (quickRecyclerView != null) {
                                return new oo7(coordinatorLayout, w00VarB, extendedFloatingActionButton, circularProgressIndicator, quickRecyclerView);
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                return null;
            case 17:
                TaskActivity taskActivity = (TaskActivity) obj;
                int i9 = TaskActivity.c0;
                LottieAnimationView lottieAnimationView = (LottieAnimationView) taskActivity.N().e.c;
                int iX = sz8.x(taskActivity);
                for (Map.Entry entry : x65.r0(new pw5("Shape Layer 2", Integer.valueOf(iX)), new pw5("Shape Layer 1", Integer.valueOf(iX)), new pw5("Pre-comp 1", Integer.valueOf(iX)), new pw5("Layer 2 Outlines", Integer.valueOf(taskActivity.getColor(sz8.y(taskActivity, android.R.attr.colorBackground)))), new pw5("Layer 1 Outlines", Integer.valueOf(iX))).entrySet()) {
                    lottieAnimationView.n.a(new po4((String) entry.getKey(), "**"), f35.F, new c25(new xx7(((Number) entry.getValue()).intValue())));
                }
                return lottieAnimationView;
            case 18:
                return Long.valueOf(((rf8) obj).a.A());
            case Argon2.V13 /* 19 */:
                int i10 = WallsDashActivity.W;
                View viewInflate2 = ((WallsDashActivity) obj).getLayoutInflater().inflate(R.layout.walls_dash_activity, (ViewGroup) null, false);
                View viewU2 = ms8.u(viewInflate2, R.id.appbar_layout);
                if (viewU2 != null) {
                    w00 w00VarB2 = w00.b(viewU2);
                    i2 = R.id.content;
                    NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate2, R.id.content);
                    if (nestedScrollView != null) {
                        i2 = R.id.wall_card_cloud;
                        View viewU3 = ms8.u(viewInflate2, R.id.wall_card_cloud);
                        if (viewU3 != null) {
                            xp3 xp3VarA = xp3.a(viewU3);
                            i2 = R.id.wall_card_local;
                            View viewU4 = ms8.u(viewInflate2, R.id.wall_card_local);
                            if (viewU4 != null) {
                                xp3 xp3VarA2 = xp3.a(viewU4);
                                i2 = R.id.wall_card_system;
                                View viewU5 = ms8.u(viewInflate2, R.id.wall_card_system);
                                if (viewU5 != null) {
                                    int i11 = R.id.btn_shortcut1;
                                    MaterialButton materialButton = (MaterialButton) ms8.u(viewU5, R.id.btn_shortcut1);
                                    if (materialButton != null) {
                                        i11 = R.id.btn_shortcut2;
                                        MaterialButton materialButton2 = (MaterialButton) ms8.u(viewU5, R.id.btn_shortcut2);
                                        if (materialButton2 != null) {
                                            i11 = R.id.guideline;
                                            if (((Guideline) ms8.u(viewU5, R.id.guideline)) != null) {
                                                i11 = R.id.iv_image1;
                                                ImageView imageView = (ImageView) ms8.u(viewU5, R.id.iv_image1);
                                                if (imageView != null) {
                                                    i11 = R.id.iv_image2;
                                                    ImageView imageView2 = (ImageView) ms8.u(viewU5, R.id.iv_image2);
                                                    if (imageView2 != null) {
                                                        i11 = R.id.loading_helper;
                                                        View viewU6 = ms8.u(viewU5, R.id.loading_helper);
                                                        if (viewU6 != null) {
                                                            i11 = R.id.tv_subtitle2;
                                                            TextView textView = (TextView) ms8.u(viewU5, R.id.tv_subtitle2);
                                                            if (textView != null) {
                                                                i11 = R.id.tv_title;
                                                                TextView textView2 = (TextView) ms8.u(viewU5, R.id.tv_title);
                                                                if (textView2 != null) {
                                                                    so8 so8Var = new so8();
                                                                    so8Var.a = (MaterialCardView) viewU5;
                                                                    so8Var.b = materialButton;
                                                                    so8Var.c = materialButton2;
                                                                    so8Var.d = imageView;
                                                                    so8Var.e = imageView2;
                                                                    so8Var.f = viewU6;
                                                                    so8Var.k = textView;
                                                                    so8Var.n = textView2;
                                                                    return new ro8((CoordinatorLayout) viewInflate2, w00VarB2, nestedScrollView, xp3VarA, xp3VarA2, so8Var);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    f6.n("Missing required view with ID: ".concat(viewU5.getResources().getResourceName(i11)));
                                    return null;
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i2)));
                return null;
            default:
                iu8 iu8Var = ((as8) obj).b;
                iu8Var.getClass();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new uv(iu8Var, objArr == true ? 1 : 0, 2));
                return be8Var;
        }
    }
}
