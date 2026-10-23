package defpackage;

import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.card.MaterialCardView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class g70 extends cu3 implements mt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g70(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0093  */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        Object next;
        int i;
        boolean z = false;
        int i2 = 1;
        switch (this.a) {
            case 0:
                q63 q63Var = (q63) obj;
                q63Var.getClass();
                ((h70) this.receiver).getClass();
                String strA = h70.a(q63Var.v());
                List listA = yn7.a();
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : listA) {
                    String strA2 = h70.a(((zn7) obj2).n().v());
                    if (strA2.equals("/") || strA.equals(strA2) || uq7.V(strA, strA2.concat("/"), false)) {
                        arrayList.add(obj2);
                    }
                }
                Iterator it = arrayList.iterator();
                if (it.hasNext()) {
                    next = it.next();
                    if (it.hasNext()) {
                        int length = h70.a(((zn7) next).n().v()).length();
                        do {
                            Object next2 = it.next();
                            int length2 = h70.a(((zn7) next2).n().v()).length();
                            if (length < length2) {
                                next = next2;
                                length = length2;
                            }
                        } while (it.hasNext());
                    }
                } else {
                    next = null;
                }
                zn7 zn7Var = (zn7) next;
                if (zn7Var == null) {
                    return null;
                }
                String str = ry5.u;
                return new q63(qy5.d(zn7Var), ".trash/atomic-delete", 2);
            case 1:
                wf3 wf3Var = (wf3) obj;
                wf3Var.getClass();
                ((sa1) this.receiver).P(wf3Var);
                return be8.a;
            case 2:
                List list = (List) obj;
                list.getClass();
                CsActivity csActivity = (CsActivity) this.receiver;
                int i3 = CsActivity.P0;
                csActivity.getClass();
                if (!list.isEmpty()) {
                    m86 m86Var = csActivity.k0().r;
                    ImageView imageView = (ImageView) m86Var.c;
                    MaterialCardView materialCardView = (MaterialCardView) m86Var.e;
                    csActivity.M0 = true;
                    String displayName = csActivity.d0().getDisplayName();
                    displayName.getClass();
                    vi1 vi1Var = (vi1) el1.l1(list);
                    oq8 oq8VarK = vi1Var != null ? zh8.k(vi1Var) : null;
                    if (oq8VarK != null && !oq8VarK.equals(oq8.i)) {
                        displayName = oq8VarK.b;
                    }
                    vi1 vi1Var2 = (vi1) el1.l1(list);
                    if (vi1Var2 == null) {
                        i = R.drawable.ic_computer_24px;
                    } else {
                        oq8 oq8VarK2 = zh8.k(vi1Var2);
                        if (pe4.d(oq8VarK2, oq8.i)) {
                            i = R.drawable.ic_computer_24px;
                        } else {
                            i = oq8VarK2.c;
                        }
                    }
                    imageView.setImageResource(i);
                    imageView.setImageTintList(i == R.drawable.ic_computer_24px ? sz8.h0(csActivity.getColor(sz8.y(csActivity, R.attr.colorOnPrimaryContainer))) : null);
                    ((TextView) m86Var.n).setText(list.size() == 1 ? csActivity.getString(R.string.local_server_found_title, displayName) : csActivity.getString(R.string.local_servers_found_title, Integer.valueOf(list.size()), displayName));
                    ((TextView) m86Var.k).setText(csActivity.getString(R.string.local_servers_found_subtitle));
                    materialCardView.setOnClickListener(new ce1(i2, csActivity, list));
                    materialCardView.setEnabled(true);
                    materialCardView.setClickable(true);
                    ((ProgressBar) m86Var.f).setVisibility(8);
                    ((ImageView) m86Var.d).setVisibility(0);
                    if (!sz8.I(materialCardView)) {
                        ConstraintLayout constraintLayout = csActivity.k0().a;
                        constraintLayout.getClass();
                        csActivity.x(constraintLayout, new Class[0]);
                    }
                    materialCardView.setVisibility(0);
                }
                return be8.a;
            default:
                mt3 mt3Var = (mt3) obj;
                mt3Var.getClass();
                qf4 qf4Var = (qf4) this.receiver;
                synchronized (qf4Var) {
                    pf4 pf4Var = pf4.FAILED;
                    if (!qf4Var.h && qf4Var.g == pf4Var) {
                        pf4 pf4Var2 = pf4.RUNNING;
                        qf4Var.g = pf4Var2;
                        qf4Var.e.invoke(pf4Var2);
                        qf4Var.a.invoke(new kg(11, qf4Var, mt3Var));
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
        }
    }
}
