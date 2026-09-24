package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.jcraft.jsch.Argon2;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;
import org.swiftapps.swiftbackup.settings.h;
import org.swiftapps.swiftbackup.tasks.PreconditionsActivity;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.wifi.WifiActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xq4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ xq4(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:160:0x03b0 A[Catch: all -> 0x034e, TRY_LEAVE, TryCatch #7 {all -> 0x034e, blocks: (B:65:0x0208, B:67:0x0216, B:68:0x021f, B:78:0x027d, B:80:0x0287, B:128:0x034d, B:124:0x0344, B:131:0x0352, B:160:0x03b0, B:166:0x03cf, B:157:0x03aa, B:172:0x03da, B:175:0x03ed, B:176:0x03f4, B:177:0x03f5, B:178:0x03f8, B:179:0x03f9, B:180:0x040e, B:121:0x033f, B:154:0x03a5, B:81:0x0290, B:83:0x0299, B:86:0x02a9, B:112:0x032e, B:108:0x0327, B:115:0x0332, B:116:0x0337, B:69:0x0228, B:71:0x0233, B:77:0x025b, B:169:0x03d2, B:170:0x03d7), top: B:316:0x0208, inners: #2, #5, #8, #9 }] */
    /* JADX WARN: Code duplicated, block: B:164:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:225:0x050e A[PHI: r5
      0x050e: PHI (r5v8 int) = 
      (r5v0 int)
      (r5v9 int)
      (r5v10 int)
      (r5v11 int)
      (r5v12 int)
      (r5v13 int)
      (r5v14 int)
      (r5v15 int)
      (r5v16 int)
      (r5v17 int)
      (r5v18 int)
      (r5v19 int)
      (r5v20 int)
     binds: [B:192:0x043f, B:194:0x044b, B:196:0x0456, B:198:0x0462, B:204:0x0488, B:206:0x0494, B:208:0x04a0, B:210:0x04ac, B:212:0x04b8, B:214:0x04c5, B:216:0x04ce, B:218:0x04e4, B:220:0x04f1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:293:0x06d3 A[PHI: r1
      0x06d3: PHI (r1v5 int) = (r1v4 int), (r1v6 int), (r1v7 int), (r1v8 int), (r1v14 int), (r1v22 int), (r1v23 int) binds: [B:263:0x0626, B:265:0x0632, B:267:0x063e, B:269:0x0647, B:277:0x0675, B:287:0x06ae, B:289:0x06bf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:294:0x06d5 A[PHI: r1
      0x06d5: PHI (r1v16 int) = (r1v15 int), (r1v17 int), (r1v18 int) binds: [B:279:0x067e, B:281:0x0689, B:283:0x0694] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:297:0x06e7 A[PHI: r1
      0x06e7: PHI (r1v10 int) = (r1v9 int), (r1v11 int) binds: [B:271:0x0652, B:273:0x065d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:320:0x0411 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:348:0x03cf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:351:0x03c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:358:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.bt3
    public final Object invoke() throws IOException {
        int iL0;
        Iterator it;
        Throwable th;
        Throwable th2;
        Throwable th3;
        pw5 pw5Var;
        int i = this.a;
        int i2 = R.id.tv_title;
        be8 be8Var = be8.a;
        boolean z = true;
        int i3 = R.id.appbar_layout;
        boolean z2 = false;
        pw5 pw5Var2 = null;
        ArrayList arrayList = null;
        Object obj = this.b;
        switch (i) {
            case 0:
                int i4 = LabelEditActivity.U;
                View viewInflate = ((LabelEditActivity) obj).getLayoutInflater().inflate(R.layout.label_edit_activity, (ViewGroup) null, false);
                View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                if (viewU != null) {
                    w00 w00VarB = w00.b(viewU);
                    int i5 = R.id.btn_cancel;
                    MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_cancel);
                    if (materialButton != null) {
                        i5 = R.id.btn_save;
                        MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate, R.id.btn_save);
                        if (materialButton2 != null) {
                            i5 = R.id.et_label_name;
                            TextInputEditText textInputEditText = (TextInputEditText) ms8.u(viewInflate, R.id.et_label_name);
                            if (textInputEditText != null) {
                                i5 = R.id.label_edit_apps_view;
                                View viewU2 = ms8.u(viewInflate, R.id.label_edit_apps_view);
                                if (viewU2 != null) {
                                    int i6 = R.id.iv_edit;
                                    if (((ImageView) ms8.u(viewU2, R.id.iv_edit)) != null) {
                                        i6 = R.id.tv_subtitle;
                                        TextView textView = (TextView) ms8.u(viewU2, R.id.tv_subtitle);
                                        if (textView != null) {
                                            TextView textView2 = (TextView) ms8.u(viewU2, R.id.tv_title);
                                            if (textView2 != null) {
                                                zq4 zq4Var = new zq4((MaterialCardView) viewU2, textView, textView2);
                                                i5 = R.id.label_edit_color_view;
                                                View viewU3 = ms8.u(viewInflate, R.id.label_edit_color_view);
                                                if (viewU3 != null) {
                                                    int i7 = R.id.divider;
                                                    if (ms8.u(viewU3, R.id.divider) != null) {
                                                        i7 = R.id.rv_label_colors;
                                                        RecyclerView recyclerView = (RecyclerView) ms8.u(viewU3, R.id.rv_label_colors);
                                                        if (recyclerView != null) {
                                                            i7 = R.id.rv_label_shades;
                                                            RecyclerView recyclerView2 = (RecyclerView) ms8.u(viewU3, R.id.rv_label_shades);
                                                            if (recyclerView2 == null) {
                                                                i2 = i7;
                                                            } else if (((TextView) ms8.u(viewU3, R.id.tv_title)) != null) {
                                                                vq vqVar = new vq(8, (MaterialCardView) viewU3, recyclerView, recyclerView2);
                                                                i5 = R.id.label_preview;
                                                                View viewU4 = ms8.u(viewInflate, R.id.label_preview);
                                                                if (viewU4 != null) {
                                                                    ur urVarA = ur.a(viewU4);
                                                                    i5 = R.id.til_label_name;
                                                                    TextInputLayout textInputLayout = (TextInputLayout) ms8.u(viewInflate, R.id.til_label_name);
                                                                    if (textInputLayout == null) {
                                                                        i2 = i5;
                                                                    } else if (((TextView) ms8.u(viewInflate, R.id.tv_title)) != null) {
                                                                        return new yq4((CoordinatorLayout) viewInflate, w00VarB, materialButton, materialButton2, textInputEditText, zq4Var, vqVar, urVarA, textInputLayout);
                                                                    }
                                                                } else {
                                                                    i2 = i5;
                                                                }
                                                            }
                                                        } else {
                                                            i2 = i7;
                                                        }
                                                    } else {
                                                        i2 = i7;
                                                    }
                                                    f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i2)));
                                                } else {
                                                    i2 = i5;
                                                }
                                            }
                                        } else {
                                            i2 = i6;
                                        }
                                        f6.n("Missing required view with ID: ".concat(viewU2.getResources().getResourceName(i2)));
                                    } else {
                                        i2 = i6;
                                        f6.n("Missing required view with ID: ".concat(viewU2.getResources().getResourceName(i2)));
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
                    return null;
                }
                i2 = R.id.appbar_layout;
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                return null;
            case 1:
                Preference preferenceJ = ((fs4) obj).j("use_test_pdras");
                preferenceJ.getClass();
                return (MSwitchPreference) preferenceJ;
            case 2:
                int i8 = MegaSignInActivity.S;
                return ub5.a(((MegaSignInActivity) obj).getLayoutInflater());
            case 3:
                int i9 = MessagesBackupRestoreActivity.c0;
                return ((MessagesBackupRestoreActivity) obj).a0().c;
            case 4:
                Preference preferenceJ2 = ((cf5) obj).j("max_sms_backups");
                preferenceJ2.getClass();
                return preferenceJ2;
            case 5:
                return xg5.getPartInputStream$lambda$0((xg5) obj);
            case 6:
                MultipleBackupsActivity multipleBackupsActivity = (MultipleBackupsActivity) obj;
                int i10 = MultipleBackupsActivity.T;
                return new h(multipleBackupsActivity, multipleBackupsActivity.O().e);
            case 7:
                int i11 = PreconditionsActivity.P;
                View viewInflate2 = ((PreconditionsActivity) obj).getLayoutInflater().inflate(R.layout.preconditions_activity, (ViewGroup) null, false);
                int i12 = R.id.bottom_actions;
                RelativeLayout relativeLayout = (RelativeLayout) ms8.u(viewInflate2, R.id.bottom_actions);
                if (relativeLayout != null) {
                    i12 = R.id.btn_done;
                    MaterialButton materialButton3 = (MaterialButton) ms8.u(viewInflate2, R.id.btn_done);
                    if (materialButton3 != null) {
                        i12 = R.id.calls_permission_container;
                        RelativeLayout relativeLayout2 = (RelativeLayout) ms8.u(viewInflate2, R.id.calls_permission_container);
                        if (relativeLayout2 != null) {
                            i12 = R.id.calls_permission_dropdown;
                            View viewU5 = ms8.u(viewInflate2, R.id.calls_permission_dropdown);
                            if (viewU5 != null) {
                                gm1 gm1VarA = gm1.a(viewU5);
                                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate2;
                                i12 = R.id.iv_back;
                                ImageView imageView = (ImageView) ms8.u(viewInflate2, R.id.iv_back);
                                if (imageView != null) {
                                    i12 = R.id.sms_permission_container;
                                    RelativeLayout relativeLayout3 = (RelativeLayout) ms8.u(viewInflate2, R.id.sms_permission_container);
                                    if (relativeLayout3 != null) {
                                        i12 = R.id.sms_permission_dropdown;
                                        View viewU6 = ms8.u(viewInflate2, R.id.sms_permission_dropdown);
                                        if (viewU6 != null) {
                                            gm1 gm1VarA2 = gm1.a(viewU6);
                                            i12 = R.id.walls_permission_container;
                                            if (((RelativeLayout) ms8.u(viewInflate2, R.id.walls_permission_container)) != null) {
                                                i12 = R.id.walls_permission_dropdown;
                                                View viewU7 = ms8.u(viewInflate2, R.id.walls_permission_dropdown);
                                                if (viewU7 != null) {
                                                    gm1.a(viewU7);
                                                    return new p36(coordinatorLayout, relativeLayout, materialButton3, relativeLayout2, gm1VarA, imageView, relativeLayout3, gm1VarA2);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i12)));
                return null;
            case 8:
                int i13 = PremiumActivity.V;
                View viewInflate3 = ((PremiumActivity) obj).getLayoutInflater().inflate(R.layout.premium_activity, (ViewGroup) null, false);
                if (((AppBarLayout) ms8.u(viewInflate3, R.id.appbar_layout)) != null) {
                    i3 = R.id.btn_purchase;
                    MaterialButton materialButton4 = (MaterialButton) ms8.u(viewInflate3, R.id.btn_purchase);
                    if (materialButton4 != null) {
                        i3 = R.id.iv_collapsed_plan_toggle;
                        if (((ImageView) ms8.u(viewInflate3, R.id.iv_collapsed_plan_toggle)) != null) {
                            CoordinatorLayout coordinatorLayout2 = (CoordinatorLayout) viewInflate3;
                            i3 = R.id.premium_activity_no_gms_notice;
                            View viewU8 = ms8.u(viewInflate3, R.id.premium_activity_no_gms_notice);
                            if (viewU8 == null) {
                                f6.n("Missing required view with ID: ".concat(viewInflate3.getResources().getResourceName(i3)));
                            } else {
                                if (((ImageView) ms8.u(viewU8, R.id.iv_cancel)) != null) {
                                    TextView textView3 = (TextView) ms8.u(viewU8, R.id.tv_title);
                                    if (textView3 != null) {
                                        d56 d56Var = new d56((MaterialCardView) viewU8, textView3);
                                        i3 = R.id.premium_bottom_actions;
                                        LinearLayout linearLayout = (LinearLayout) ms8.u(viewInflate3, R.id.premium_bottom_actions);
                                        if (linearLayout != null) {
                                            i3 = R.id.premium_collapsed_plan_toggle;
                                            ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(viewInflate3, R.id.premium_collapsed_plan_toggle);
                                            if (constraintLayout != null) {
                                                i3 = R.id.premium_plans_container;
                                                FrameLayout frameLayout = (FrameLayout) ms8.u(viewInflate3, R.id.premium_plans_container);
                                                if (frameLayout != null) {
                                                    i3 = R.id.progress_bar;
                                                    CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(viewInflate3, R.id.progress_bar);
                                                    if (circularProgressIndicator != null) {
                                                        i3 = R.id.recycler_view;
                                                        RecyclerView recyclerView3 = (RecyclerView) ms8.u(viewInflate3, R.id.recycler_view);
                                                        if (recyclerView3 != null) {
                                                            i3 = R.id.rv_premium_features;
                                                            RecyclerView recyclerView4 = (RecyclerView) ms8.u(viewInflate3, R.id.rv_premium_features);
                                                            if (recyclerView4 != null) {
                                                                i3 = R.id.toolbar;
                                                                View viewU9 = ms8.u(viewInflate3, R.id.toolbar);
                                                                if (viewU9 != null) {
                                                                    Toolbar toolbar = (Toolbar) viewU9;
                                                                    ix0 ix0Var = new ix0(9, toolbar, toolbar);
                                                                    i3 = R.id.tv_collapsed_plan_status;
                                                                    TextView textView4 = (TextView) ms8.u(viewInflate3, R.id.tv_collapsed_plan_status);
                                                                    if (textView4 != null) {
                                                                        i3 = R.id.tv_collapsed_plan_title;
                                                                        TextView textView5 = (TextView) ms8.u(viewInflate3, R.id.tv_collapsed_plan_title);
                                                                        if (textView5 != null) {
                                                                            return new c56(coordinatorLayout2, materialButton4, d56Var, linearLayout, constraintLayout, frameLayout, circularProgressIndicator, recyclerView3, recyclerView4, ix0Var, textView4, textView5);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        f6.n("Missing required view with ID: ".concat(viewInflate3.getResources().getResourceName(i3)));
                                    }
                                } else {
                                    i2 = R.id.iv_cancel;
                                }
                                f6.n("Missing required view with ID: ".concat(viewU8.getResources().getResourceName(i2)));
                            }
                        } else {
                            f6.n("Missing required view with ID: ".concat(viewInflate3.getResources().getResourceName(i3)));
                        }
                    } else {
                        f6.n("Missing required view with ID: ".concat(viewInflate3.getResources().getResourceName(i3)));
                    }
                } else {
                    f6.n("Missing required view with ID: ".concat(viewInflate3.getResources().getResourceName(i3)));
                }
                return null;
            case XmlPullParser.COMMENT /* 9 */:
                return (xr8) ((os4) obj).getValue();
            case 10:
                vl6 vl6Var = (vl6) obj;
                ClassLoader classLoader = vl6Var.b;
                fa3 fa3Var = vl6Var.c;
                Enumeration<URL> resources = classLoader.getResources("");
                resources.getClass();
                ArrayList<URL> list = Collections.list(resources);
                list.getClass();
                ArrayList arrayList2 = new ArrayList();
                for (URL url : list) {
                    url.getClass();
                    if (pe4.d(url.getProtocol(), "file")) {
                        String str = ey5.b;
                        String string = new File(url.toURI()).toString();
                        string.getClass();
                        pw5Var = new pw5(fa3Var, ma2.r(string));
                    } else {
                        pw5Var = null;
                    }
                    if (pw5Var != null) {
                        arrayList2.add(pw5Var);
                    }
                }
                Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
                resources2.getClass();
                ArrayList list2 = Collections.list(resources2);
                list2.getClass();
                ArrayList arrayList3 = new ArrayList();
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    URL url2 = (URL) it2.next();
                    url2.getClass();
                    String string2 = url2.toString();
                    string2.getClass();
                    if (uq7.V(string2, "jar:file:", z2) && (iL0 = nq7.l0(6, string2, "!")) != -1) {
                        String str2 = ey5.b;
                        String string3 = new File(URI.create(string2.substring(4, iL0))).toString();
                        string3.getClass();
                        on4 on4VarA = fa3Var.a(ma2.r(string3));
                        try {
                            long size = on4VarA.size();
                            long j = size - 22;
                            long j2 = 0;
                            if (j < 0) {
                                throw new IOException("not a zip: size=" + on4VarA.size());
                            }
                            long jMax = Math.max(size - 65558, 0L);
                            while (true) {
                                tf6 tf6Var = new tf6(on4VarA.a(j));
                                try {
                                    long j3 = j2;
                                    if (tf6Var.b() == 101010256) {
                                        boolean zH = tf6Var.h() & 65535;
                                        boolean zH2 = tf6Var.h() & 65535;
                                        long jH = tf6Var.h() & 65535;
                                        if (jH != (tf6Var.h() & 65535) || zH != 0 || zH2 != 0) {
                                            throw new IOException("unsupported zip: spanned");
                                        }
                                        tf6Var.skip(4L);
                                        long jB = ((long) tf6Var.b()) & 4294967295L;
                                        int iH = tf6Var.h() & 65535;
                                        vx2 vx2Var = new vx2(iH, jH, jB);
                                        tf6Var.j(iH);
                                        tf6Var.close();
                                        long j4 = j - 20;
                                        if (j4 > j3) {
                                            tf6 tf6Var2 = new tf6(on4VarA.a(j4));
                                            try {
                                                if (tf6Var2.b() == 117853008) {
                                                    int iB = tf6Var2.b();
                                                    long jG = tf6Var2.g();
                                                    if (tf6Var2.b() != z || iB != 0) {
                                                        throw new IOException("unsupported zip: spanned");
                                                    }
                                                    tf6 tf6Var3 = new tf6(on4VarA.a(jG));
                                                    try {
                                                        int iB2 = tf6Var3.b();
                                                        if (iB2 != 101075792) {
                                                            throw new IOException("bad zip: expected " + ho6.r(101075792) + " but was " + ho6.r(iB2));
                                                        }
                                                        tf6Var3.skip(12L);
                                                        int iB3 = tf6Var3.b();
                                                        int iB4 = tf6Var3.b();
                                                        long jG2 = tf6Var3.g();
                                                        if (jG2 != tf6Var3.g() || iB3 != 0 || iB4 != 0) {
                                                            throw new IOException("unsupported zip: spanned");
                                                        }
                                                        tf6Var3.skip(8L);
                                                        vx2 vx2Var2 = new vx2(iH, jG2, tf6Var3.g());
                                                        try {
                                                            tf6Var3.close();
                                                            th3 = null;
                                                        } catch (Throwable th4) {
                                                            th3 = th4;
                                                        }
                                                        vx2Var = vx2Var2;
                                                        if (th3 != null) {
                                                            throw th3;
                                                        }
                                                    } catch (Throwable th5) {
                                                        try {
                                                            tf6Var3.close();
                                                        } catch (Throwable th6) {
                                                            yc9.a(th5, th6);
                                                        }
                                                        th3 = th5;
                                                    }
                                                }
                                                try {
                                                    tf6Var2.close();
                                                    th2 = null;
                                                } catch (Throwable th7) {
                                                    th2 = th7;
                                                }
                                            } catch (Throwable th8) {
                                                try {
                                                    tf6Var2.close();
                                                } catch (Throwable th9) {
                                                    yc9.a(th8, th9);
                                                }
                                                th2 = th8;
                                            }
                                            if (th2 != null) {
                                                throw th2;
                                            }
                                        }
                                        vx2 vx2Var3 = vx2Var;
                                        ArrayList arrayList4 = new ArrayList();
                                        tf6 tf6Var4 = new tf6(on4VarA.a(vx2Var3.b));
                                        try {
                                            long j5 = vx2Var3.a;
                                            long j6 = j3;
                                            while (j6 < j5) {
                                                xy8 xy8VarK = ho6.K(tf6Var4);
                                                it = it2;
                                                try {
                                                    if (xy8VarK.b >= vx2Var3.b) {
                                                        throw new IOException("bad zip: local file header offset >= central directory offset");
                                                    }
                                                    ey5 ey5Var = vl6.e;
                                                    if (us2.s(xy8VarK.a)) {
                                                        arrayList4.add(xy8VarK);
                                                    }
                                                    j6++;
                                                    it2 = it;
                                                } catch (Throwable th10) {
                                                    th = th10;
                                                    Throwable th11 = th;
                                                    try {
                                                        tf6Var4.close();
                                                    } catch (Throwable th12) {
                                                        yc9.a(th11, th12);
                                                    }
                                                    th = th11;
                                                    if (th == null) {
                                                        throw th;
                                                    }
                                                    ho6.a(arrayList4);
                                                    iz8 iz8Var = new iz8();
                                                    try {
                                                        on4VarA.close();
                                                        break;
                                                    } catch (Throwable unused) {
                                                    }
                                                    pw5Var2 = new pw5(iz8Var, vl6.e);
                                                    if (pw5Var2 != null) {
                                                        arrayList3.add(pw5Var2);
                                                    }
                                                    it2 = it;
                                                    z = true;
                                                    z2 = false;
                                                    pw5Var2 = null;
                                                }
                                                break;
                                            }
                                            it = it2;
                                            try {
                                                tf6Var4.close();
                                                th = null;
                                            } catch (Throwable th13) {
                                                th = th13;
                                            }
                                        } catch (Throwable th14) {
                                            th = th14;
                                            it = it2;
                                        }
                                        if (th == null) {
                                            throw th;
                                        }
                                        ho6.a(arrayList4);
                                        iz8 iz8Var2 = new iz8();
                                        on4VarA.close();
                                        pw5Var2 = new pw5(iz8Var2, vl6.e);
                                        break;
                                        if (on4VarA != null) {
                                            throw th;
                                        }
                                        try {
                                            on4VarA.close();
                                            throw th;
                                        } catch (Throwable th15) {
                                            yc9.a(th, th15);
                                            throw th;
                                        }
                                    }
                                    Iterator it3 = it2;
                                    tf6Var.close();
                                    j--;
                                    if (j < jMax) {
                                        throw new IOException("not a zip: end of central directory signature not found");
                                    }
                                    it2 = it3;
                                    j2 = j3;
                                    z = true;
                                } catch (Throwable th16) {
                                    tf6Var.close();
                                    throw th16;
                                }
                            }
                        } catch (Throwable th17) {
                            if (on4VarA != null) {
                                throw th17;
                            }
                            on4VarA.close();
                            throw th17;
                        }
                    } else {
                        it = it2;
                    }
                    if (pw5Var2 != null) {
                        arrayList3.add(pw5Var2);
                    }
                    it2 = it;
                    z = true;
                    z2 = false;
                    pw5Var2 = null;
                }
                return el1.g1(arrayList2, arrayList3);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                m37 m37Var = (m37) obj;
                if (c47.d()) {
                    c47.f(m37Var.i());
                    z = false;
                }
                return Boolean.valueOf(z);
            case 12:
                int i14 = ScheduleLabelsSelectActivity.X;
                return ((ScheduleLabelsSelectActivity) obj).N().n;
            case 13:
                q47 q47Var = (q47) obj;
                ScheduleData scheduleDataC = c47.a.c();
                List<ScheduleItem.CallLogs> callLogsSchedules = scheduleDataC.getCallLogsSchedules();
                if (callLogsSchedules != null) {
                    arrayList = new ArrayList(hl1.G0(callLogsSchedules, 10));
                    for (ScheduleItem.CallLogs callLogs : callLogsSchedules) {
                        arrayList.add(ScheduleItem.CallLogs.copy$default(callLogs, null, null, null, null, null, callLogs.isPermissionsGranted(), 31, null));
                    }
                }
                q47.k(q47Var, ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, null, null, null, null, arrayList, null, null, null, null, 7935, null));
                return be8Var;
            case 14:
                Preference preferenceJ3 = ((pa7) obj).j("amoled_black_theme");
                preferenceJ3.getClass();
                return (MSwitchPreference) preferenceJ3;
            case 15:
                int i15 = TaskActivity.c0;
                return (LottieAnimationView) ((TaskActivity) obj).N().e.e;
            case Argon2.V10 /* 16 */:
                return ((i08) obj).c;
            case 17:
                return ah8.updateFields$lambda$2((ah8) obj);
            case 18:
                ((to8) obj).b.l(true);
                return be8Var;
            default:
                et8 et8Var = WifiActivity.Y;
                View viewInflate4 = ((WifiActivity) obj).getLayoutInflater().inflate(R.layout.wifi_activity, (ViewGroup) null, false);
                View viewU10 = ms8.u(viewInflate4, R.id.appbar_layout);
                if (viewU10 != null) {
                    w00 w00VarB2 = w00.b(viewU10);
                    i3 = R.id.btn_got_it;
                    MaterialButton materialButton5 = (MaterialButton) ms8.u(viewInflate4, R.id.btn_got_it);
                    if (materialButton5 != null) {
                        i3 = R.id.content;
                        NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate4, R.id.content);
                        if (nestedScrollView != null) {
                            i3 = R.id.notice_no_batch_restore_on_q;
                            MaterialCardView materialCardView = (MaterialCardView) ms8.u(viewInflate4, R.id.notice_no_batch_restore_on_q);
                            if (materialCardView != null) {
                                i3 = R.id.wifi_card_cloud;
                                View viewU11 = ms8.u(viewInflate4, R.id.wifi_card_cloud);
                                if (viewU11 != null) {
                                    yr8 yr8VarA = yr8.a(viewU11);
                                    i3 = R.id.wifi_card_local;
                                    View viewU12 = ms8.u(viewInflate4, R.id.wifi_card_local);
                                    if (viewU12 != null) {
                                        yr8 yr8VarA2 = yr8.a(viewU12);
                                        i3 = R.id.wifi_card_system;
                                        View viewU13 = ms8.u(viewInflate4, R.id.wifi_card_system);
                                        if (viewU13 != null) {
                                            return new ur8((CoordinatorLayout) viewInflate4, w00VarB2, materialButton5, nestedScrollView, materialCardView, yr8VarA, yr8VarA2, yr8.a(viewU13));
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate4.getResources().getResourceName(i3)));
                return null;
        }
    }
}
