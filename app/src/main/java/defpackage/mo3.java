package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.jcraft.jsch.Argon2;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;
import org.swiftapps.swiftbackup.settings.h;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.views.MAppBarLayout;
import org.swiftapps.swiftbackup.views.NoSwipeViewPager;
import org.swiftapps.swiftbackup.walls.WallApplyActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mo3 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ mo3(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x038f A[PHI: r1
      0x038f: PHI (r1v4 int) = (r1v3 int), (r1v5 int), (r1v6 int), (r1v7 int), (r1v8 int) binds: [B:100:0x0348, B:102:0x0354, B:104:0x035d, B:106:0x036d, B:108:0x0379] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:65:0x020f A[PHI: r0
      0x020f: PHI (r0v27 int) = (r0v26 int), (r0v31 int), (r0v32 int) binds: [B:45:0x018a, B:47:0x0196, B:49:0x01a3] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.bt3
    public final Object invoke() {
        File cacheDir;
        int i = this.a;
        int i2 = R.id.toolbar;
        int i3 = 12;
        be8 be8Var = be8.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                int i4 = FoldersBatchActivity.Y;
                View viewInflate = ((FoldersBatchActivity) obj).getLayoutInflater().inflate(R.layout.folders_batch_activity, (ViewGroup) null, false);
                int i5 = R.id.appbar_layout;
                if (((MAppBarLayout) ms8.u(viewInflate, R.id.appbar_layout)) != null) {
                    i5 = R.id.btn_actions;
                    ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate, R.id.btn_actions);
                    if (extendedFloatingActionButton != null) {
                        i5 = R.id.error_layout;
                        View viewU = ms8.u(viewInflate, R.id.error_layout);
                        if (viewU != null) {
                            ey2 ey2VarA = ey2.a(viewU);
                            i5 = R.id.progressBar;
                            ProgressBar progressBar = (ProgressBar) ms8.u(viewInflate, R.id.progressBar);
                            if (progressBar != null) {
                                i5 = R.id.rv_folders;
                                RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.rv_folders);
                                if (recyclerView != null) {
                                    View viewU2 = ms8.u(viewInflate, R.id.toolbar);
                                    if (viewU2 != null) {
                                        return new oo3((CoordinatorLayout) viewInflate, extendedFloatingActionButton, ey2VarA, progressBar, recyclerView, tf2.a(viewU2));
                                    }
                                } else {
                                    i2 = i5;
                                }
                            } else {
                                i2 = i5;
                            }
                        } else {
                            i2 = i5;
                        }
                    } else {
                        i2 = i5;
                    }
                } else {
                    i2 = i5;
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                return null;
            case 1:
                final FoldersDashActivity foldersDashActivity = (FoldersDashActivity) obj;
                int i6 = FoldersDashActivity.U;
                List<FolderMetadata> listE = sf1.g.e();
                final ArrayList arrayList = new ArrayList(hl1.G0(listE, 10));
                for (FolderMetadata folderMetadata : listE) {
                    folderMetadata.getClass();
                    arrayList.add(new zk3(folderMetadata.getFolderItem(), folderMetadata.getLatestBackupDate(), null));
                }
                ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((zk3) it.next()).a);
                }
                List listE2 = pz4.g.e();
                ArrayList arrayList3 = new ArrayList(hl1.G0(listE2, 10));
                Iterator it2 = listE2.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(((FolderMetadata) it2.next()).getFolderItem());
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    linkedHashSet.add(((FolderItem) it3.next()).getId());
                }
                ArrayList arrayList4 = new ArrayList();
                for (Object obj2 : arrayList2) {
                    if (!linkedHashSet.contains(((FolderItem) obj2).getId())) {
                        arrayList4.add(obj2);
                    }
                }
                final int size = arrayList4.size();
                zn4 zn4Var = zn4.a;
                zn4.e(new bt3() { // from class: ro3
                    @Override // defpackage.bt3
                    public final Object invoke() {
                        int i7 = FoldersDashActivity.U;
                        FoldersDashActivity foldersDashActivity2 = foldersDashActivity;
                        boolean zIsFinishing = foldersDashActivity2.isFinishing();
                        be8 be8Var2 = be8.a;
                        if (zIsFinishing) {
                            return be8Var2;
                        }
                        int i8 = size;
                        if (i8 == 0) {
                            String string = foldersDashActivity2.getString(R.string.no_backup_in_cloud);
                            string.getClass();
                            zn4 zn4Var2 = zn4.a;
                            zn4.e(new cv(14, foldersDashActivity2, string));
                            return be8Var2;
                        }
                        lk3 lk3Var = new lk3("Copy folder setups", R.string.copy_folder_setup_to_device, null, R.drawable.ic_content_copy, i8, true, R.string.copy_folder_setup_to_device, R.drawable.ic_content_copy);
                        qo3.k = new ArrayList(arrayList);
                        Intent intent = new Intent(foldersDashActivity2, (Class<?>) FoldersBatchActivity.class);
                        intent.putExtra("EXTRA_FOLDER_BATCH_ACTION_ITEM", lk3Var);
                        foldersDashActivity2.startActivity(intent);
                        return be8Var2;
                    }
                });
                return be8Var;
            case 2:
                np3 np3Var = (np3) obj;
                zn4.e(new y2(14, np3Var, np3Var.f));
                return be8Var;
            case 3:
                int i7 = GmsSignInActivity.N;
                return Integer.valueOf(((GmsSignInActivity) obj).getIntent().getIntExtra("EXTRA_REQUEST_CODE", 1003));
            case 4:
                return ((b14) ((a14) obj).p.getValue()).d;
            case 5:
                Map map = HomeActivity.b0;
                View viewInflate2 = ((HomeActivity) obj).getLayoutInflater().inflate(R.layout.home_activity, (ViewGroup) null, false);
                int i8 = R.id.container_btn_new_schedule;
                FrameLayout frameLayout = (FrameLayout) ms8.u(viewInflate2, R.id.container_btn_new_schedule);
                if (frameLayout != null) {
                    i8 = R.id.home_appbar;
                    View viewU3 = ms8.u(viewInflate2, R.id.home_appbar);
                    if (viewU3 != null) {
                        int i9 = R.id.app_logo_container;
                        LinearLayout linearLayout = (LinearLayout) ms8.u(viewU3, R.id.app_logo_container);
                        if (linearLayout != null) {
                            i9 = R.id.iv_user;
                            ImageView imageView = (ImageView) ms8.u(viewU3, R.id.iv_user);
                            if (imageView != null) {
                                i9 = R.id.search_button;
                                MaterialCardView materialCardView = (MaterialCardView) ms8.u(viewU3, R.id.search_button);
                                if (materialCardView != null) {
                                    MaterialToolbar materialToolbar = (MaterialToolbar) ms8.u(viewU3, R.id.toolbar);
                                    if (materialToolbar != null) {
                                        i2 = R.id.toolbar_content;
                                        ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(viewU3, R.id.toolbar_content);
                                        if (constraintLayout != null) {
                                            i2 = R.id.tv_premium;
                                            TextView textView = (TextView) ms8.u(viewU3, R.id.tv_premium);
                                            if (textView != null) {
                                                i2 = R.id.tv_swiftbackup;
                                                TextView textView2 = (TextView) ms8.u(viewU3, R.id.tv_swiftbackup);
                                                if (textView2 != null) {
                                                    x44 x44Var = new x44((AppBarLayout) viewU3, linearLayout, imageView, materialCardView, materialToolbar, constraintLayout, textView, textView2);
                                                    i8 = R.id.primaryNavigation;
                                                    View viewU4 = ms8.u(viewInflate2, R.id.primaryNavigation);
                                                    if (viewU4 != null) {
                                                        i8 = R.id.schedule_fab_menu;
                                                        ScheduleFabMenuView scheduleFabMenuView = (ScheduleFabMenuView) ms8.u(viewInflate2, R.id.schedule_fab_menu);
                                                        if (scheduleFabMenuView != null) {
                                                            i8 = R.id.viewPager;
                                                            NoSwipeViewPager noSwipeViewPager = (NoSwipeViewPager) ms8.u(viewInflate2, R.id.viewPager);
                                                            if (noSwipeViewPager != null) {
                                                                return new w44(viewInflate2, frameLayout, x44Var, viewU4, scheduleFabMenuView, noSwipeViewPager);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    i2 = i9;
                                }
                            } else {
                                i2 = i9;
                            }
                        } else {
                            i2 = i9;
                        }
                        f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i2)));
                        return null;
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i8)));
                return null;
            case 6:
                Preference preferenceJ = ((fs4) obj).j("onedrive_auth_agent");
                preferenceJ.getClass();
                return preferenceJ;
            case 7:
                int i10 = MegaSignInActivity.S;
                return ((MegaSignInActivity) obj).N().b;
            case 8:
                int i11 = MessagesBackupRestoreActivity.c0;
                return ((MessagesBackupRestoreActivity) obj).a0().b;
            case XmlPullParser.COMMENT /* 9 */:
                MultipleBackupsActivity multipleBackupsActivity = (MultipleBackupsActivity) obj;
                int i12 = MultipleBackupsActivity.T;
                return new h(multipleBackupsActivity, multipleBackupsActivity.O().f);
            case 10:
                sa1 sa1Var = (sa1) ((nd6) obj).getActivity();
                sa1Var.getClass();
                return sa1Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                SLogActivity sLogActivity = (SLogActivity) obj;
                int i13 = SLogActivity.R;
                View viewInflate3 = View.inflate(sLogActivity, R.layout.slog_activity_share_dialog, null);
                int i14 = R.id.tv_swiftlogger;
                LinearLayout linearLayout2 = (LinearLayout) ms8.u(viewInflate3, R.id.tv_swiftlogger);
                if (linearLayout2 != null) {
                    i14 = R.id.tv_swiftlogger_text_only;
                    LinearLayout linearLayout3 = (LinearLayout) ms8.u(viewInflate3, R.id.tv_swiftlogger_text_only);
                    if (linearLayout3 != null) {
                        i14 = R.id.tv_swiftlogger_title;
                        TextView textView3 = (TextView) ms8.u(viewInflate3, R.id.tv_swiftlogger_title);
                        if (textView3 != null) {
                            uh7 uh7Var = new uh7((LinearLayout) viewInflate3, linearLayout2, linearLayout3, textView3);
                            linearLayout3.setOnClickListener(new dj(sLogActivity, i3));
                            return new u35(sLogActivity, uh7Var, 12);
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate3.getResources().getResourceName(i14)));
                return null;
            case 12:
                return cy0.w((zl8) obj);
            case 13:
                int i15 = ScheduleLabelsSelectActivity.X;
                return ((ScheduleLabelsSelectActivity) obj).N().d;
            case 14:
                Preference preferenceJ2 = ((pa7) obj).j("dynamic_colors");
                preferenceJ2.getClass();
                return (MSwitchPreference) preferenceJ2;
            case 15:
                int i16 = TaskActivity.c0;
                return (TextView) ((TaskActivity) obj).N().e.a;
            case Argon2.V10 /* 16 */:
                WallApplyActivity wallApplyActivity = (WallApplyActivity) obj;
                ao8 ao8Var = WallApplyActivity.O;
                q63 q63Var = (q63) wallApplyActivity.O().i.d();
                if (q63Var != null && (cacheDir = wallApplyActivity.getCacheDir()) != null) {
                    File fileU = nc3.U(cacheDir, q63Var.q().concat(".png"));
                    wallApplyActivity.M(R.string.processing);
                    String path = fileU.getPath();
                    path.getClass();
                    q63Var.d(new q63(path, 2), null);
                    wallApplyActivity.H();
                    Uri uriB = f93.b(fileU);
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.addCategory("android.intent.category.DEFAULT");
                    intent.addFlags(1);
                    intent.putExtra("android.intent.extra.STREAM", uriB);
                    intent.setType("image/jpeg");
                    intent.putExtra("mimeType", "image/jpeg");
                    Intent intentAddFlags = Intent.createChooser(intent, wallApplyActivity.getString(R.string.share)).addFlags(268435456);
                    intentAddFlags.getClass();
                    zn4 zn4Var2 = zn4.a;
                    zn4.e(new o20(i3, wallApplyActivity, intentAddFlags));
                }
                return be8Var;
            default:
                ((to8) obj).b.l(true);
                return be8Var;
        }
    }
}
