package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.chip.Chip;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.jcraft.jsch.Argon2;
import com.l4digital.fastscroll.FastScroller;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.intro.d;
import org.swiftapps.swiftbackup.locale.LocaleActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.a;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ak implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ak(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0124  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.bt3
    public final Object invoke() {
        long jLongValue;
        Long dateBackup;
        Activity ownerActivity;
        int i = this.a;
        long jZ = 0;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object obj = this.b;
        switch (i) {
            case 0:
                hk hkVar = (hk) obj;
                Parcelable.Creator<hk> creator = hk.CREATOR;
                Long lE = fk.e(hkVar.a);
                if (lE != null) {
                    jLongValue = lE.longValue();
                } else {
                    try {
                        LocalMetadata localMetadataU = hkVar.u();
                        jZ = (localMetadataU == null || (dateBackup = localMetadataU.getDateBackup()) == null) ? hkVar.v().z() : dateBackup.longValue();
                    } catch (Exception unused) {
                    }
                    jLongValue = jZ;
                }
                return Long.valueOf(jLongValue);
            case 1:
                return Long.valueOf(((wl) obj).b.A());
            case 2:
                Iterator it = ((List) ((dm) obj).e.getValue()).iterator();
                while (it.hasNext()) {
                    jZ += ((q63) it.next()).A();
                }
                return Long.valueOf(jZ);
            case 3:
                return (QuickRecyclerView) ((dt) obj).findViewById(R.id.rv_applied_filters);
            case 4:
                Preference preferenceJ = ((a) obj).j("multiple_backups_strategy");
                preferenceJ.getClass();
                return preferenceJ;
            case 5:
                int i2 = AppsBatchActivity.s0;
                View viewInflate = ((AppsBatchActivity) obj).getLayoutInflater().inflate(R.layout.apps_batch_activity, (ViewGroup) null, false);
                int i3 = R.id.appbar_with_filters;
                View viewU = ms8.u(viewInflate, R.id.appbar_with_filters);
                if (viewU != null) {
                    x00 x00VarA = x00.a(viewU);
                    i3 = R.id.btn_actions;
                    ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate, R.id.btn_actions);
                    if (extendedFloatingActionButton != null) {
                        i3 = R.id.error_layout;
                        View viewU2 = ms8.u(viewInflate, R.id.error_layout);
                        if (viewU2 != null) {
                            ey2 ey2VarA = ey2.a(viewU2);
                            i3 = R.id.fast_scroller;
                            FastScroller fastScroller = (FastScroller) ms8.u(viewInflate, R.id.fast_scroller);
                            if (fastScroller != null) {
                                i3 = R.id.progress_bar;
                                CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(viewInflate, R.id.progress_bar);
                                if (circularProgressIndicator != null) {
                                    i3 = R.id.rv_apps_quick_perform;
                                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.rv_apps_quick_perform);
                                    if (recyclerView != null) {
                                        return new g20((CoordinatorLayout) viewInflate, x00VarA, extendedFloatingActionButton, ey2VarA, fastScroller, circularProgressIndicator, recyclerView);
                                    }
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
                return null;
            case 6:
                il0 il0Var = ((xi0) obj).a;
                tb1 tb1Var = tb1.a;
                if (qb1.m()) {
                    int i4 = PremiumActivity.V;
                    rs9.u(il0Var);
                } else {
                    int i5 = CloudConnectActivity.Q;
                    Intent intentPutExtra = new Intent(il0Var, (Class<?>) CloudConnectActivity.class).putExtra("cloud_constant", (String) null);
                    intentPutExtra.getClass();
                    il0Var.startActivityForResult(intentPutExtra, 2004);
                }
                return be8.a;
            case 7:
                int i6 = CallsBackupRestoreActivity.c0;
                return ((CallsBackupRestoreActivity) obj).Z().e;
            case 8:
                int i7 = CloudDiagnosticsActivity.Z;
                ((CloudDiagnosticsActivity) obj).U().n();
                return be8.a;
            case XmlPullParser.COMMENT /* 9 */:
                sf1 sf1Var = sf1.g;
                sf1Var.getClass();
                FolderMetadata folderMetadata = (FolderMetadata) ((eb2) obj).c(FolderMetadata.class);
                if (folderMetadata != null && sf1Var.b(folderMetadata.getItemId()) == null) {
                    Log.d(sf1Var.a, "onChildAdded = " + folderMetadata.toDisplayString());
                    sf1Var.l(folderMetadata);
                }
                return be8.a;
            case 10:
                io1 io1Var = (io1) obj;
                return new xx6(io1Var.getApplication(), io1Var, io1Var.getIntent() != null ? io1Var.getIntent().getExtras() : null);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return ConfigSettings.ApplyData.getLabelIds$lambda$0((ConfigSettings.ApplyData) obj);
            case 12:
                int i8 = DetailActivity.b0;
                View viewInflate2 = ((DetailActivity) obj).getLayoutInflater().inflate(R.layout.detail_activity, (ViewGroup) null, false);
                int i9 = R.id.appbar_layout;
                View viewU3 = ms8.u(viewInflate2, R.id.appbar_layout);
                if (viewU3 != null) {
                    w00 w00VarB = w00.b(viewU3);
                    i9 = R.id.detail_card_app_backup_cloud;
                    View viewU4 = ms8.u(viewInflate2, R.id.detail_card_app_backup_cloud);
                    if (viewU4 != null) {
                        ej2 ej2VarA = ej2.a(viewU4);
                        i9 = R.id.detail_card_app_backup_device;
                        View viewU5 = ms8.u(viewInflate2, R.id.detail_card_app_backup_device);
                        if (viewU5 != null) {
                            ej2 ej2VarA2 = ej2.a(viewU5);
                            i9 = R.id.detail_card_app_info;
                            View viewU6 = ms8.u(viewInflate2, R.id.detail_card_app_info);
                            if (viewU6 != null) {
                                int i10 = R.id.barrier1;
                                if (((LinearLayout) ms8.u(viewU6, R.id.barrier1)) != null) {
                                    i10 = R.id.btn_enable;
                                    MaterialButton materialButton = (MaterialButton) ms8.u(viewU6, R.id.btn_enable);
                                    if (materialButton != null) {
                                        i10 = R.id.btn_launch;
                                        MaterialButton materialButton2 = (MaterialButton) ms8.u(viewU6, R.id.btn_launch);
                                        if (materialButton2 != null) {
                                            i10 = R.id.btn_not_installed;
                                            MaterialButton materialButton3 = (MaterialButton) ms8.u(viewU6, R.id.btn_not_installed);
                                            if (materialButton3 != null) {
                                                i10 = R.id.btn_uninstall;
                                                MaterialButton materialButton4 = (MaterialButton) ms8.u(viewU6, R.id.btn_uninstall);
                                                if (materialButton4 != null) {
                                                    i10 = R.id.detailed_card_app_storage;
                                                    View viewU7 = ms8.u(viewU6, R.id.detailed_card_app_storage);
                                                    if (viewU7 != null) {
                                                        int i11 = R.id.btn_backup;
                                                        MaterialButton materialButton5 = (MaterialButton) ms8.u(viewU7, R.id.btn_backup);
                                                        if (materialButton5 != null) {
                                                            FrameLayout frameLayout = (FrameLayout) viewU7;
                                                            View viewU8 = ms8.u(viewU7, R.id.loading_view);
                                                            if (viewU8 != null) {
                                                                int i12 = R.id.chip_fake1;
                                                                if (ms8.u(viewU8, R.id.chip_fake1) != null) {
                                                                    i12 = R.id.chip_fake2;
                                                                    if (((Chip) ms8.u(viewU8, R.id.chip_fake2)) != null) {
                                                                        i12 = R.id.tv_fake1;
                                                                        if (ms8.u(viewU8, R.id.tv_fake1) != null) {
                                                                            i12 = R.id.tv_fake2;
                                                                            if (ms8.u(viewU8, R.id.tv_fake2) != null) {
                                                                                ke keVar = new ke((ConstraintLayout) viewU8, 3);
                                                                                int i13 = R.id.main_view;
                                                                                LinearLayout linearLayout = (LinearLayout) ms8.u(viewU7, R.id.main_view);
                                                                                if (linearLayout != null) {
                                                                                    i13 = R.id.rv_chips;
                                                                                    QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewU7, R.id.rv_chips);
                                                                                    if (quickRecyclerView != null) {
                                                                                        i13 = R.id.tv_info;
                                                                                        TextView textView = (TextView) ms8.u(viewU7, R.id.tv_info);
                                                                                        if (textView != null) {
                                                                                            ij2 ij2Var = new ij2();
                                                                                            ij2Var.a = frameLayout;
                                                                                            ij2Var.b = materialButton5;
                                                                                            ij2Var.c = keVar;
                                                                                            ij2Var.d = linearLayout;
                                                                                            ij2Var.e = quickRecyclerView;
                                                                                            ij2Var.f = textView;
                                                                                            i10 = R.id.divider_btns;
                                                                                            View viewU9 = ms8.u(viewU6, R.id.divider_btns);
                                                                                            if (viewU9 != null) {
                                                                                                i10 = R.id.iv_favorite;
                                                                                                ImageView imageView = (ImageView) ms8.u(viewU6, R.id.iv_favorite);
                                                                                                if (imageView != null) {
                                                                                                    i10 = R.id.iv_icon;
                                                                                                    ImageView imageView2 = (ImageView) ms8.u(viewU6, R.id.iv_icon);
                                                                                                    if (imageView2 != null) {
                                                                                                        i10 = R.id.iv_menu;
                                                                                                        ImageView imageView3 = (ImageView) ms8.u(viewU6, R.id.iv_menu);
                                                                                                        if (imageView3 != null) {
                                                                                                            i10 = R.id.rv_app_labels;
                                                                                                            QuickRecyclerView quickRecyclerView2 = (QuickRecyclerView) ms8.u(viewU6, R.id.rv_app_labels);
                                                                                                            if (quickRecyclerView2 != null) {
                                                                                                                i10 = R.id.tv_app_name;
                                                                                                                TextView textView2 = (TextView) ms8.u(viewU6, R.id.tv_app_name);
                                                                                                                if (textView2 != null) {
                                                                                                                    i10 = R.id.tv_package_name;
                                                                                                                    TextView textView3 = (TextView) ms8.u(viewU6, R.id.tv_package_name);
                                                                                                                    if (textView3 != null) {
                                                                                                                        i10 = R.id.tv_version_info;
                                                                                                                        TextView textView4 = (TextView) ms8.u(viewU6, R.id.tv_version_info);
                                                                                                                        if (textView4 != null) {
                                                                                                                            hj2 hj2Var = new hj2((MaterialCardView) viewU6, materialButton, materialButton2, materialButton3, materialButton4, ij2Var, viewU9, imageView, imageView2, imageView3, quickRecyclerView2, textView2, textView3, textView4);
                                                                                                                            i9 = R.id.scroll_view;
                                                                                                                            NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate2, R.id.scroll_view);
                                                                                                                            if (nestedScrollView != null) {
                                                                                                                                return new dj2((CoordinatorLayout) viewInflate2, w00VarB, ej2VarA, ej2VarA2, hj2Var, nestedScrollView);
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                                i11 = i13;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                f6.n("Missing required view with ID: ".concat(viewU8.getResources().getResourceName(i12)));
                                                                return null;
                                                            }
                                                            i11 = R.id.loading_view;
                                                        }
                                                        f6.n("Missing required view with ID: ".concat(viewU7.getResources().getResourceName(i11)));
                                                        return null;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                f6.n("Missing required view with ID: ".concat(viewU6.getResources().getResourceName(i10)));
                                return null;
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i9)));
                return null;
            case 13:
                ArrayList arrayList = new ArrayList();
                ConstraintLayout constraintLayout = ((rj2) obj).e;
                int childCount = constraintLayout.getChildCount();
                for (int i14 = 0; i14 < childCount; i14++) {
                    View childAt = constraintLayout.getChildAt(i14);
                    childAt.getClass();
                    arrayList.add(childAt);
                }
                return arrayList;
            case 14:
                int i15 = DropboxSignInActivity.P;
                View viewInflate3 = ((DropboxSignInActivity) obj).getLayoutInflater().inflate(R.layout.dropbox_signin_activity, (ViewGroup) null, false);
                int i16 = R.id.iv_logo;
                if (((ImageView) ms8.u(viewInflate3, R.id.iv_logo)) != null) {
                    i16 = R.id.tv_connected_status;
                    TextView textView5 = (TextView) ms8.u(viewInflate3, R.id.tv_connected_status);
                    if (textView5 != null) {
                        return new dr2((ConstraintLayout) viewInflate3, textView5);
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate3.getResources().getResourceName(i16)));
                return null;
            case 15:
                return Boolean.valueOf(((jc3) obj).o);
            case Argon2.V10 /* 16 */:
                int i17 = FolderEditActivity.h0;
                return ((FolderEditActivity) obj).Z().e;
            case 17:
                in3 in3Var = (in3) obj;
                q63 q63Var = in3Var.k().c;
                if (q63Var.j()) {
                    zn7 zn7Var = in3Var.k().a;
                    zn7Var.getClass();
                    if (pe4.d(io4.j("FolderPickerHelper", null, false, new cv(9, q63Var, zn7Var), 14), Boolean.TRUE)) {
                        in3Var.k.k(q63Var);
                    } else {
                        vr6.e$default(vr6.INSTANCE, in3Var.b, xs1.i(q63Var, "Folder is not selectable: "), null, 4, null);
                    }
                } else {
                    vr6.e$default(vr6.INSTANCE, in3Var.b, xs1.i(q63Var, "Folder is not selectable: "), null, 4, null);
                }
                return be8.a;
            case 18:
                int i18 = FoldersDashActivity.U;
                ((FoldersDashActivity) obj).V().d.setCurrentItem(0);
                return be8.a;
            case Argon2.V13 /* 19 */:
                ((kp3) obj).m().j(true, true);
                return be8.a;
            case 20:
                ns3 ns3Var = (ns3) obj;
                Context context = ns3Var.a;
                String str = ns3Var.b;
                tr9 tr9Var = new tr9(8, (boolean) (objArr == true ? 1 : 0));
                tr9Var.b = null;
                ms3 ms3Var = new ms3(context, str, tr9Var, ns3Var.c);
                ms3Var.setWriteAheadLoggingEnabled(ns3Var.e);
                return ms3Var;
            case 21:
                Map map = HomeActivity.b0;
                ((HomeActivity) obj).Y().setSelectedItemId(R.id.nav_home);
                return be8.a;
            case 22:
                ((d) obj).l.k(Boolean.TRUE);
                return be8.a;
            case 23:
                return Integer.valueOf(LabelParams.colorInt_delegate$lambda$0((LabelParams) obj));
            case 24:
                int i19 = LabelsActivity.Z;
                return ((LabelsActivity) obj).Q().n;
            case 25:
                int i20 = LocaleActivity.P;
                return new pa8((LocaleActivity) obj);
            case 26:
                int i21 = MessagesBackupsActivity.T;
                return (CircularProgressIndicator) ((ni7) ((MessagesBackupsActivity) obj).Q.getValue()).c.c;
            case 27:
                int i22 = MessagesDashActivity.T;
                ye5 ye5VarF = ((MessagesDashActivity) obj).F();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new qj(ye5VarF, objArr2 == true ? 1 : 0, 2));
                return be8.a;
            case 28:
                vr6 vr6Var = vr6.INSTANCE;
                p93 p93Var = p93.a;
                vr6.i$default(vr6Var, "MultiCompressor", "Decompressed file size: ".concat(p93.c(Long.valueOf(((q63) obj).A()))), null, 4, null);
                return be8.a;
            default:
                ol1 ol1Var = (ol1) obj;
                be8 be8Var = be8.a;
                ho hoVar = (ho) ol1Var.b;
                if (hoVar == null || (ownerActivity = hoVar.getOwnerActivity()) == null || !ownerActivity.isFinishing()) {
                    sz8.m((ho) ol1Var.b);
                }
                return be8Var;
        }
    }
}
