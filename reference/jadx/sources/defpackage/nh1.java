package defpackage;

import android.app.WallpaperManager;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity;
import org.swiftapps.swiftbackup.cloud.orphans.a;
import org.swiftapps.swiftbackup.cloud.orphans.b;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;
import org.swiftapps.swiftbackup.jobs.AlarmReceiver;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class nh1 extends cu3 implements mt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ nh1(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        pw5 pw5Var;
        Boolean boolValueOf;
        Integer numValueOf;
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                b bVar = (b) obj;
                bVar.getClass();
                CloudOrphanCleanerActivity cloudOrphanCleanerActivity = (CloudOrphanCleanerActivity) this.receiver;
                int i2 = CloudOrphanCleanerActivity.S;
                ph1 ph1VarU = cloudOrphanCleanerActivity.U();
                gv7 gv7Var = cloudOrphanCleanerActivity.R;
                ImageView imageView = ph1VarU.n;
                boolean z = bVar.f;
                String str = bVar.b;
                a.EnumC0013a enumC0013a = bVar.h;
                List list = bVar.i;
                sz8.d0(imageView, z);
                if (z) {
                    boolean z2 = bVar.d;
                    int i3 = bVar.c;
                    if (z2) {
                        y13.D(cloudOrphanCleanerActivity.U().n, i3, str, 3.0f);
                    } else {
                        ImageView imageView2 = cloudOrphanCleanerActivity.U().n;
                        imageView2.setImageResource(i3);
                        imageView2.setContentDescription(str);
                        imageView2.setBackground(null);
                        imageView2.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        imageView2.setAdjustViewBounds(true);
                        imageView2.setPadding(0, 0, 0, 0);
                    }
                }
                cloudOrphanCleanerActivity.U().G.setText(str);
                cloudOrphanCleanerActivity.U().y.setText(bVar.e);
                sz8.d0(cloudOrphanCleanerActivity.U().d, !z);
                cloudOrphanCleanerActivity.U().d.setEnabled(!bVar.d());
                cloudOrphanCleanerActivity.U().J.setText(bVar.k);
                sz8.d0(cloudOrphanCleanerActivity.U().q, bVar.d());
                sz8.d0(cloudOrphanCleanerActivity.U().p, !bVar.d());
                Integer numValueOf2 = Integer.valueOf(R.drawable.ic_information);
                if (!bVar.d()) {
                    if (enumC0013a == a.EnumC0013a.ERROR) {
                        pw5Var = new pw5(Integer.valueOf(R.drawable.ic_error), Integer.valueOf(sz8.r(cloudOrphanCleanerActivity)));
                    } else {
                        a.EnumC0013a enumC0013a2 = a.EnumC0013a.RESULTS;
                        pw5Var = (enumC0013a == enumC0013a2 && list.isEmpty()) ? new pw5(Integer.valueOf(R.drawable.ic_check_circle_outline), Integer.valueOf(sz8.w(cloudOrphanCleanerActivity))) : enumC0013a == enumC0013a2 ? new pw5(numValueOf2, Integer.valueOf(cloudOrphanCleanerActivity.getColor(R.color.ambrdark))) : new pw5(numValueOf2, Integer.valueOf(sz8.A(cloudOrphanCleanerActivity)));
                    }
                    int iIntValue = ((Number) pw5Var.a).intValue();
                    int iIntValue2 = ((Number) pw5Var.b).intValue();
                    cloudOrphanCleanerActivity.U().p.setImageResource(iIntValue);
                    cloudOrphanCleanerActivity.U().p.setColorFilter(iIntValue2);
                }
                boolean z3 = enumC0013a == a.EnumC0013a.RESULTS;
                sz8.d0(cloudOrphanCleanerActivity.U().I, z3);
                if (z3) {
                    cloudOrphanCleanerActivity.U().I.setText(cloudOrphanCleanerActivity.getString(R.string.cloud_orphan_scan_stats, Integer.valueOf(bVar.l), Integer.valueOf(bVar.m)));
                }
                ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new fi1((wa1) it.next()));
                }
                mh1 mh1Var = (mh1) gv7Var.getValue();
                boolean zD = bVar.d();
                if (mh1Var.m != zD) {
                    mh1Var.m = zD;
                    mh1Var.e();
                }
                ((mh1) gv7Var.getValue()).w(new fm7((List) arrayList, bVar.j, false, (String) null, 28), false);
                Iterator it2 = bVar.c().iterator();
                long j = 0;
                while (it2.hasNext()) {
                    long j2 = ((wa1) it2.next()).e;
                    if (j2 < 0) {
                        j2 = 0;
                    }
                    j += j2;
                }
                TextView textView = cloudOrphanCleanerActivity.U().H;
                Integer numValueOf3 = Integer.valueOf(bVar.c().size());
                Integer numValueOf4 = Integer.valueOf(list.size());
                p93 p93Var = p93.a;
                textView.setText(cloudOrphanCleanerActivity.getString(R.string.cloud_orphan_selected_count, numValueOf3, numValueOf4, p93.c(Long.valueOf(j))));
                cloudOrphanCleanerActivity.U().k.setText(!list.isEmpty() && bVar.c().size() == list.size() ? R.string.cloud_orphan_deselect_all : R.string.cloud_orphan_select_all);
                cloudOrphanCleanerActivity.U().k.setEnabled((list.isEmpty() || bVar.d()) ? false : true);
                sz8.d0(cloudOrphanCleanerActivity.U().r, !list.isEmpty());
                sz8.d0(cloudOrphanCleanerActivity.U().x, z3 && list.isEmpty());
                sz8.d0(cloudOrphanCleanerActivity.U().t, z3 && !list.isEmpty());
                cloudOrphanCleanerActivity.U().f.setEnabled(z && !bVar.d());
                cloudOrphanCleanerActivity.U().f.setText(enumC0013a == a.EnumC0013a.IDLE ? R.string.cloud_orphan_scan : R.string.cloud_orphan_scan_again_action);
                cloudOrphanCleanerActivity.U().e.setEnabled(bVar.b());
                sz8.d0(cloudOrphanCleanerActivity.U().e, !list.isEmpty());
                return be8Var;
            default:
                n47 n47Var = (n47) obj;
                n47Var.getClass();
                m37 m37Var = (m37) this.receiver;
                m37Var.getClass();
                if (n47Var.equals(k47.a)) {
                    jk8 jk8Var = m37Var.b;
                    jk8Var.getClass();
                    ((CircularProgressIndicator) ((n37) jk8Var).e.c).setVisibility(0);
                    m37Var.l().setChecked(false);
                    m37Var.k().setVisibility(8);
                    m37Var.m().o(false, false);
                    m37Var.m().setVisibility(8);
                    m37Var.j().a.setVisibility(8);
                    return be8Var;
                }
                if (n47Var.equals(l47.a)) {
                    jk8 jk8Var2 = m37Var.b;
                    jk8Var2.getClass();
                    ((CircularProgressIndicator) ((n37) jk8Var2).e.c).setVisibility(8);
                    m37Var.l().setChecked(false);
                    m37Var.k().setVisibility(8);
                    m37Var.m().o(false, false);
                    m37Var.m().setVisibility(8);
                    m37Var.j().a.setVisibility(0);
                    return be8Var;
                }
                if (!(n47Var instanceof m47)) {
                    q.j();
                    return null;
                }
                m47 m47Var = (m47) n47Var;
                ArrayList arrayList2 = m47Var.e;
                ScheduleData scheduleData = m47Var.c;
                ArrayList arrayList3 = m47Var.a;
                jk8 jk8Var3 = m37Var.b;
                jk8Var3.getClass();
                ((CircularProgressIndicator) ((n37) jk8Var3).e.c).setVisibility(8);
                m37Var.l().setChecked(true);
                m37Var.k().setVisibility(0);
                jk8 jk8Var4 = m37Var.b;
                jk8Var4.getClass();
                sz8.d0(((n37) jk8Var4).q, !arrayList3.isEmpty());
                if (!arrayList3.isEmpty()) {
                    mp6 mp6Var = mp6.a;
                    boolean zF = mp6.f();
                    ScheduleFabMenuView scheduleFabMenuViewM = m37Var.m();
                    g00 g00Var = g00.a;
                    boolean zHasSystemFeature = g00.r().hasSystemFeature("android.hardware.telephony");
                    try {
                        SwiftApp.Companion companion = SwiftApp.d;
                        WallpaperManager wallpaperManager = WallpaperManager.getInstance(SwiftApp.Companion.c());
                        boolValueOf = Boolean.valueOf(wallpaperManager != null && wallpaperManager.isWallpaperSupported());
                    } catch (Exception unused) {
                        boolValueOf = null;
                    }
                    boolean zBooleanValue = boolValueOf != null ? boolValueOf.booleanValue() : false;
                    CharSequence charSequenceN = u48.n(m37Var.getString(R.string.configs), " (", m37Var.getString(R.string.root_access_needed), ")");
                    scheduleFabMenuViewM.n(R.id.action_messages, zHasSystemFeature);
                    scheduleFabMenuViewM.n(R.id.action_call_logs, zHasSystemFeature);
                    scheduleFabMenuViewM.n(R.id.action_walls, zBooleanValue);
                    LinkedHashMap linkedHashMap = scheduleFabMenuViewM.r;
                    Integer numValueOf5 = Integer.valueOf(R.id.action_by_config);
                    b37 b37Var = (b37) linkedHashMap.get(numValueOf5);
                    if (b37Var != null) {
                        MaterialButton materialButton = b37Var.b;
                        if (zF) {
                            charSequenceN = (CharSequence) x65.p0(scheduleFabMenuViewM.t, numValueOf5);
                        }
                        materialButton.setText(charSequenceN);
                        materialButton.setContentDescription(charSequenceN);
                        materialButton.setEnabled(zF);
                        materialButton.setAlpha(materialButton.isEnabled() ? 1.0f : 0.5f);
                    }
                    break;
                } else {
                    m37Var.m().o(false, false);
                }
                sz8.d0(m37Var.m(), !arrayList3.isEmpty());
                jk8 jk8Var5 = m37Var.b;
                jk8Var5.getClass();
                sz8.d0(((n37) jk8Var5).c, arrayList3.isEmpty());
                jk8 jk8Var6 = m37Var.b;
                jk8Var6.getClass();
                sz8.d0(((n37) jk8Var6).b, arrayList3.isEmpty());
                m37Var.j().a.setVisibility(8);
                jk8 jk8Var7 = m37Var.b;
                jk8Var7.getClass();
                TextView textView2 = (TextView) ((gm1) ((n37) jk8Var7).k.f).f;
                DateFormat timeFormat = android.text.format.DateFormat.getTimeFormat(m37Var.i());
                m37Var.p().e.getClass();
                textView2.setText(timeFormat.format(Long.valueOf(AlarmReceiver.b().getTimeInMillis())));
                jk8 jk8Var8 = m37Var.b;
                jk8Var8.getClass();
                ((TextView) ((gm1) ((n37) jk8Var8).k.c).f).setText(scheduleData.getBatteryReqEnum().toDisplayString(scheduleData.getBatteryPercentReq()));
                jk8 jk8Var9 = m37Var.b;
                jk8Var9.getClass();
                MaterialButton materialButton2 = (MaterialButton) ((n37) jk8Var9).k.b;
                materialButton2.setEnabled(m47Var.d);
                materialButton2.setAlpha(materialButton2.isEnabled() ? 1.0f : 0.5f);
                jk8 jk8Var10 = m37Var.b;
                jk8Var10.getClass();
                TextView textView3 = ((n37) jk8Var10).q;
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) m37Var.getString(R.string.schedules));
                ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(sz8.A(m37Var.i()));
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) " (");
                spannableStringBuilder.append((CharSequence) m37Var.getResources().getString(R.string.schedule_count, Integer.valueOf(arrayList3.size()), 20));
                spannableStringBuilder.append((CharSequence) ")");
                spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
                textView3.setText(spannableStringBuilder);
                jk8 jk8Var11 = m37Var.b;
                jk8Var11.getClass();
                w00 w00Var = ((n37) jk8Var11).p;
                MaterialCardView materialCardView = (MaterialCardView) w00Var.b;
                sz8.d0(materialCardView, !arrayList2.isEmpty());
                if (materialCardView.getVisibility() == 0) {
                    ((TextView) w00Var.c).setText(new f75(m37Var.i(), 62).e.e(el1.Y0(arrayList2, "\n", null, null, new e7(m37Var, 23), 30)));
                }
                List list2 = m37Var.o().e.a;
                m37Var.o().w(new fm7((List) arrayList3, (Set) null, false, (String) null, 30), m47Var.b);
                if (list2.isEmpty() || arrayList3.size() <= list2.size()) {
                    numValueOf = null;
                } else {
                    ArrayList arrayList4 = new ArrayList(hl1.G0(list2, 10));
                    Iterator it3 = list2.iterator();
                    while (it3.hasNext()) {
                        arrayList4.add(((org.swiftapps.swiftbackup.home.schedule.data.b) it3.next()).q.getItemId());
                    }
                    Iterator it4 = arrayList3.iterator();
                    int i4 = 0;
                    while (true) {
                        if (!it4.hasNext()) {
                            i4 = -1;
                        } else if (arrayList4.contains(((org.swiftapps.swiftbackup.home.schedule.data.b) it4.next()).q.getItemId())) {
                            i4++;
                        }
                    }
                    numValueOf = Integer.valueOf(i4);
                }
                Integer num = (numValueOf == null || numValueOf.intValue() < 0) ? null : numValueOf;
                if (num == null || num.intValue() < 0) {
                    return be8Var;
                }
                m37Var.n().postDelayed(new b9(3, m37Var, num), 300L);
                return be8Var;
        }
    }
}
