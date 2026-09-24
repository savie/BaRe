package defpackage;

import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.github.chrisbanes.photoview.PhotoView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.l4digital.fastscroll.FastScroller;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;
import org.swiftapps.swiftbackup.notice.NoticeListActivity;
import org.swiftapps.swiftbackup.password.UserPasswordActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.swiftapps.swiftbackup.views.MAppBarLayout;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.walls.WallApplyActivity;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class no5 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ no5(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x00a5 A[PHI: r0
      0x00a5: PHI (r0v63 int) = (r0v62 int), (r0v64 int), (r0v65 int) binds: [B:11:0x0079, B:13:0x0084, B:15:0x0090] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:98:0x0222 A[PHI: r0
      0x0222: PHI (r0v18 int) = (r0v17 int), (r0v19 int), (r0v20 int), (r0v21 int) binds: [B:88:0x01e7, B:90:0x01f0, B:92:0x0200, B:94:0x020c] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.bt3
    public final Object invoke() {
        int iV;
        int iK;
        int i = this.a;
        int i2 = R.id.toolbar;
        be8 be8Var = be8.a;
        int i3 = R.id.appbar_layout;
        Object obj = this.b;
        switch (i) {
            case 0:
                int i4 = NoticeListActivity.N;
                View viewInflate = ((NoticeListActivity) obj).getLayoutInflater().inflate(R.layout.notice_list_activity, (ViewGroup) null, false);
                View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                if (viewU != null) {
                    w00 w00VarB = w00.b(viewU);
                    i3 = R.id.rv_notices;
                    QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_notices);
                    if (quickRecyclerView != null) {
                        return new oo5((CoordinatorLayout) viewInflate, w00VarB, quickRecyclerView);
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
                return null;
            case 1:
                int i5 = SLogActivity.R;
                View viewInflate2 = ((SLogActivity) obj).getLayoutInflater().inflate(R.layout.slog_activity, (ViewGroup) null, false);
                if (((MAppBarLayout) ms8.u(viewInflate2, R.id.appbar_layout)) != null) {
                    i3 = R.id.btn_send_slogs;
                    ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate2, R.id.btn_send_slogs);
                    if (extendedFloatingActionButton != null) {
                        i3 = R.id.fast_scroller;
                        FastScroller fastScroller = (FastScroller) ms8.u(viewInflate2, R.id.fast_scroller);
                        if (fastScroller != null) {
                            i3 = R.id.rv_slog;
                            RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate2, R.id.rv_slog);
                            if (recyclerView != null) {
                                i3 = R.id.toolbar_mini;
                                View viewU2 = ms8.u(viewInflate2, R.id.toolbar_mini);
                                if (viewU2 != null) {
                                    return new th7((CoordinatorLayout) viewInflate2, extendedFloatingActionButton, fastScroller, recyclerView, tf2.a(viewU2));
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i3)));
                return null;
            case 2:
                int i6 = ScheduleFolderSelectActivity.R;
                View viewInflate3 = ((ScheduleFolderSelectActivity) obj).getLayoutInflater().inflate(R.layout.schedule_folder_select_activity, (ViewGroup) null, false);
                if (((MAppBarLayout) ms8.u(viewInflate3, R.id.appbar_layout)) != null) {
                    int i7 = R.id.btn_save;
                    ExtendedFloatingActionButton extendedFloatingActionButton2 = (ExtendedFloatingActionButton) ms8.u(viewInflate3, R.id.btn_save);
                    if (extendedFloatingActionButton2 != null) {
                        i7 = R.id.error_layout;
                        View viewU3 = ms8.u(viewInflate3, R.id.error_layout);
                        if (viewU3 != null) {
                            ey2 ey2VarA = ey2.a(viewU3);
                            i7 = R.id.progressBar;
                            ProgressBar progressBar = (ProgressBar) ms8.u(viewInflate3, R.id.progressBar);
                            if (progressBar != null) {
                                i7 = R.id.rv_folders;
                                RecyclerView recyclerView2 = (RecyclerView) ms8.u(viewInflate3, R.id.rv_folders);
                                if (recyclerView2 != null) {
                                    View viewU4 = ms8.u(viewInflate3, R.id.toolbar);
                                    if (viewU4 != null) {
                                        return new f37((CoordinatorLayout) viewInflate3, extendedFloatingActionButton2, ey2VarA, progressBar, recyclerView2, tf2.a(viewU4));
                                    }
                                } else {
                                    i2 = i7;
                                }
                            } else {
                                i2 = i7;
                            }
                        } else {
                            i2 = i7;
                        }
                    } else {
                        i2 = i7;
                    }
                } else {
                    i2 = R.id.appbar_layout;
                }
                f6.n("Missing required view with ID: ".concat(viewInflate3.getResources().getResourceName(i2)));
                return null;
            case 3:
                int i8 = ScheduleLabelsSelectActivity.X;
                return ((ScheduleLabelsSelectActivity) obj).N().e;
            case 4:
                AppSettings appSettings = (AppSettings) obj;
                Boolean boolIsParallelCloudTransfers = appSettings.isParallelCloudTransfers();
                boolean zBooleanValue = boolIsParallelCloudTransfers != null ? boolIsParallelCloudTransfers.booleanValue() : false;
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putBoolean("parallel_cloud_transfers", zBooleanValue).apply();
                Boolean boolIsMultithreadedDownloads = appSettings.isMultithreadedDownloads();
                boolean zBooleanValue2 = boolIsMultithreadedDownloads != null ? boolIsMultithreadedDownloads.booleanValue() : false;
                SharedPreferences.Editor editor2 = cz4.k;
                if (editor2 == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor2.putBoolean("multithreaded_downloads", zBooleanValue2).apply();
                Integer multiThreadChunksCount = appSettings.getMultiThreadChunksCount();
                if (multiThreadChunksCount != null) {
                    iV = multiThreadChunksCount.intValue();
                } else {
                    gv7 gv7Var = oi5.L;
                    iV = ly8.v();
                }
                ho6.V(iV);
                Integer dropboxChunkSize = appSettings.getDropboxChunkSize();
                ho6.T(dropboxChunkSize != null ? dropboxChunkSize.intValue() : 25);
                Integer oneDriveChunkSize = appSettings.getOneDriveChunkSize();
                ho6.X(oneDriveChunkSize != null ? oneDriveChunkSize.intValue() : 5);
                Integer nextCloudChunkSize = appSettings.getNextCloudChunkSize();
                ho6.W(nextCloudChunkSize != null ? nextCloudChunkSize.intValue() : 100);
                Boolean nextCloudForcedChunking = appSettings.getNextCloudForcedChunking();
                ho6.U(nextCloudForcedChunking != null ? nextCloudForcedChunking.booleanValue() : false);
                Integer s3ChunkSize = appSettings.getS3ChunkSize();
                ho6.Y(s3ChunkSize != null ? s3ChunkSize.intValue() : 5);
                return be8Var;
            case 5:
                Preference preferenceJ = ((pa7) obj).j("encryption_password");
                preferenceJ.getClass();
                return preferenceJ;
            case 6:
                return ((zn7) obj).n();
            case 7:
                k28 k28Var = (k28) obj;
                if (k28Var.v()) {
                    h28.Companion.getClass();
                    if (f28.e()) {
                        iK = -16777216;
                    } else {
                        xt2 xt2Var = new xt2(k28Var);
                        Integer numN = z85.n(k28Var, R.attr.colorSurface);
                        iK = xt2Var.a(numN != null ? numN.intValue() : 0, 0.0f);
                    }
                } else {
                    iK = Const.k(k28Var);
                }
                return Integer.valueOf(iK);
            case 8:
                return ((qa8) ((pa8) obj).K).d;
            case XmlPullParser.COMMENT /* 9 */:
                int i9 = UserPasswordActivity.O;
                return Boolean.valueOf(((UserPasswordActivity) obj).getIntent().getBooleanExtra("extra_is_restoring", false));
            case 10:
                ao8 ao8Var = WallApplyActivity.O;
                View viewInflate4 = ((WallApplyActivity) obj).getLayoutInflater().inflate(R.layout.walls_apply_activity, (ViewGroup) null, false);
                AppBarLayout appBarLayout = (AppBarLayout) ms8.u(viewInflate4, R.id.appbar_layout);
                if (appBarLayout != null) {
                    int i10 = R.id.btn_set;
                    FloatingActionButton floatingActionButton = (FloatingActionButton) ms8.u(viewInflate4, R.id.btn_set);
                    if (floatingActionButton != null) {
                        i10 = R.id.content;
                        if (((RelativeLayout) ms8.u(viewInflate4, R.id.content)) != null) {
                            i10 = R.id.iv_wall;
                            PhotoView photoView = (PhotoView) ms8.u(viewInflate4, R.id.iv_wall);
                            if (photoView != null) {
                                Toolbar toolbar = (Toolbar) ms8.u(viewInflate4, R.id.toolbar);
                                if (toolbar != null) {
                                    return new no8((CoordinatorLayout) viewInflate4, appBarLayout, floatingActionButton, photoView, toolbar);
                                }
                            } else {
                                i2 = i10;
                            }
                        } else {
                            i2 = i10;
                        }
                    } else {
                        i2 = i10;
                    }
                } else {
                    i2 = R.id.appbar_layout;
                }
                f6.n("Missing required view with ID: ".concat(viewInflate4.getResources().getResourceName(i2)));
                return null;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i11 = WallsDashActivity.W;
                return new cj0((WallsDashActivity) obj);
            default:
                ((iu8) obj).j().getClass();
                String str = ry5.u;
                new q63[]{new q63(eq3.j(qy5.f(false, null).n, "wifi_networks.wfi"), 2)}[0].h();
                vr8 vr8Var = vr8.LOCAL;
                vr8Var.getClass();
                wr8 wr8Var = new wr8();
                wr8Var.a = vr8Var;
                ny2.b().e(wr8Var);
                return be8Var;
        }
    }
}
