package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.timepicker.ChipTextInputComboView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.notice.NoticeItem;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i10 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ i10(pj0 pj0Var, lj0 lj0Var, bt3 bt3Var) {
        this.a = 1;
        this.b = lj0Var;
        this.c = bt3Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                k10 k10Var = (k10) obj2;
                l10 l10Var = (l10) obj;
                String str = l10Var.a;
                str.getClass();
                fm7 fm7Var = k10Var.e;
                List list = fm7Var.a;
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : list) {
                    if (!pe4.d(((jl0) obj3).getItemId(), str)) {
                        arrayList.add(obj3);
                    }
                }
                k10Var.w(fm7.a(fm7Var, arrayList, null, false, 30), false);
                k10Var.m.invoke(l10Var);
                break;
            case 1:
                lj0 lj0Var = (lj0) obj2;
                ((bt3) obj).invoke();
                ((vv0) lj0Var.K).a.postDelayed(new a9(lj0Var, 1), ((Number) lj0.T.getValue()).longValue());
                break;
            case 2:
                g00 g00Var = g00.a;
                g00.B(((gj2) obj2).a, (ji) obj);
                break;
            case 3:
                xc3 xc3Var = (xc3) obj;
                nd3 nd3Var = ((uc3) obj2).b;
                if (nd3Var == ce3.Synced) {
                    nd3Var.reset();
                    xc3Var.h.invoke();
                }
                break;
            case 4:
                FolderDetailActivity folderDetailActivity = ((kl3) obj2).a;
                view.getClass();
                FolderDetailActivity.Z(folderDetailActivity, view, null, ((ol3) obj).a, 2);
                break;
            case 5:
                ((wa) obj2).dismiss();
                ((q02) obj).invoke();
                break;
            case 6:
                j95 j95Var = (j95) obj2;
                ViewGroup viewGroup = (ViewGroup) obj;
                n38 n38Var = j95Var.Q;
                if (n38Var instanceof v38) {
                    v38 v38Var = (v38) n38Var;
                    ChipTextInputComboView chipTextInputComboView = v38Var.e;
                    ChipTextInputComboView chipTextInputComboView2 = v38Var.f;
                    if (chipTextInputComboView.n || chipTextInputComboView2.n) {
                        v38.i(viewGroup);
                        if (chipTextInputComboView2.n) {
                            TextView textView = v38Var.q;
                            EditText editText = chipTextInputComboView2.c;
                            if (editText.getVisibility() == 0) {
                                editText.sendAccessibilityEvent(8);
                            } else {
                                chipTextInputComboView2.a.sendAccessibilityEvent(8);
                            }
                            textView.announceForAccessibility(textView.getText());
                        } else if (chipTextInputComboView.n) {
                            TextView textView2 = v38Var.p;
                            EditText editText2 = chipTextInputComboView.c;
                            if (editText2.getVisibility() == 0) {
                                editText2.sendAccessibilityEvent(8);
                            } else {
                                chipTextInputComboView.a.sendAccessibilityEvent(8);
                            }
                            textView2.announceForAccessibility(textView2.getText());
                        }
                    }
                }
                Iterator it = j95Var.I.iterator();
                while (it.hasNext()) {
                    ((View.OnClickListener) it.next()).onClick(view);
                }
                j95Var.i(false, false);
                break;
            case 7:
                NoticeItem noticeItem = (NoticeItem) obj;
                mt3 mt3Var = ((qo5) obj2).n;
                if (mt3Var != null) {
                    mt3Var.invoke(noticeItem);
                }
                break;
            default:
                WallsDashActivity wallsDashActivity = (WallsDashActivity) obj2;
                int i2 = WallsDashActivity.W;
                xo8 xo8Var = (xo8) ((yo8) obj);
                List listA0 = fl1.A0(xo8Var.a, xo8Var.b);
                cj0 cj0Var = (cj0) wallsDashActivity.V.getValue();
                ln5 ln5Var = new ln5(wallsDashActivity, 15);
                cj0Var.getClass();
                il0 il0Var = cj0Var.a;
                String string = il0Var.getString(R.string.select_backup_locations);
                string.getClass();
                jj0 jj0Var = new jj0("locations", string, false, (bt3) null, 28);
                q05 q05Var = q05.DEVICE;
                String string2 = q05Var.toString();
                String string3 = il0Var.getString(R.string.device);
                string3.getClass();
                li0 li0Var = new li0(string2, string3, (String) null, Integer.valueOf(R.drawable.ic_device), (Integer) null, q05Var.isCheckedInExpansion(4), (ao) null, 212);
                List list2 = jj0Var.c;
                list2.add(li0Var);
                q05 q05Var2 = q05.CLOUD;
                String string4 = q05Var2.toString();
                String string5 = il0Var.getString(R.string.cloud);
                string5.getClass();
                list2.add(new li0(string4, string5, (String) null, Integer.valueOf(R.drawable.ic_cloud), (Integer) null, q05Var2.isCheckedInExpansion(4), (ao) null, 212));
                mj0 mj0Var = new mj0(fl1.C0(jj0Var), false);
                new lj0(il0Var).j(mj0Var, new bj0(ln5Var, cj0Var, listA0, mj0Var));
                break;
        }
    }

    public /* synthetic */ i10(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
