package defpackage;

import android.content.Intent;
import android.os.Parcel;
import android.os.ResultReceiver;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.android.billingclient.api.ProxyBillingActivityV2;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.jcraft.jsch.Argon2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.views.NoSwipeViewPager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nh implements t22, a13, zi0, dc5, zv5, av7, jk8, yi6, h9, u1a {
    public final /* synthetic */ int a;
    public Object b;

    public nh(ArrayList arrayList) {
        this.a = 20;
        if (arrayList.isEmpty()) {
            this.b = Collections.EMPTY_LIST;
        } else {
            this.b = Collections.unmodifiableList(arrayList);
        }
    }

    public static nh p(JSONArray jSONArray) throws JSONException {
        d69 d69Var;
        if (jSONArray == null || jSONArray.length() == 0) {
            return new nh(new ArrayList());
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            if (jSONObject == null) {
                d69Var = new d69();
            } else {
                String strA = mq7.a(jSONObject.optString("federatedId"));
                String strA2 = mq7.a(jSONObject.optString("displayName"));
                String strA3 = mq7.a(jSONObject.optString("photoUrl"));
                String strA4 = mq7.a(jSONObject.optString("providerId"));
                String strA5 = mq7.a(jSONObject.optString("phoneNumber"));
                String strA6 = mq7.a(jSONObject.optString("email"));
                d69 d69Var2 = new d69();
                d69Var2.a = strA;
                d69Var2.b = strA2;
                d69Var2.c = strA3;
                d69Var2.d = strA4;
                d69Var2.e = null;
                d69Var2.f = strA5;
                d69Var2.g = strA6;
                d69Var = d69Var2;
            }
            arrayList.add(d69Var);
        }
        return new nh(arrayList);
    }

    @Override // defpackage.a13
    public int a() {
        return ((ExtendedFloatingActionButton) this.b).getMeasuredHeight();
    }

    @Override // defpackage.yi6
    public void accept(Object obj, Object obj2) {
        switch (this.a) {
            case Argon2.V13 /* 19 */:
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                d29 d29Var = (d29) ((k29) obj).p();
                sz7 sz7Var = (sz7) this.b;
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken(d29Var.c);
                int i = m19.a;
                if (sz7Var == null) {
                    parcelObtain.writeInt(0);
                } else {
                    parcelObtain.writeInt(1);
                    sz7Var.writeToParcel(parcelObtain, 0);
                }
                try {
                    d29Var.b.transact(1, parcelObtain, null, 1);
                    parcelObtain.recycle();
                    taskCompletionSource.setResult(null);
                    return;
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            default:
                h12 h12Var = (h12) this.b;
                fe4 fe4Var = new fe4((TaskCompletionSource) obj2);
                v74 v74Var = (v74) ((o94) obj).p();
                ef efVar = new ef(new qn1(-1, -1, 0, true), false);
                efVar.c = false;
                Parcel parcelObtain2 = Parcel.obtain();
                parcelObtain2.writeInterfaceToken("com.google.android.gms.identitycredentials.internal.IIdentityCredentialService");
                int i2 = sa9.a;
                parcelObtain2.writeStrongBinder(fe4Var);
                sa9.b(parcelObtain2, h12Var);
                sa9.b(parcelObtain2, efVar);
                ((t74) v74Var).a(parcelObtain2, 6);
                return;
        }
    }

    @Override // defpackage.a13
    public int b() {
        ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) this.b;
        return ((extendedFloatingActionButton.getMeasuredWidth() - extendedFloatingActionButton.getPaddingStart()) - extendedFloatingActionButton.getPaddingEnd()) + extendedFloatingActionButton.s0 + extendedFloatingActionButton.t0;
    }

    public void d() throws kd5 {
        ThreadLocal threadLocal = (ThreadLocal) this.b;
        e97 e97Var = (e97) threadLocal.get();
        if (e97Var == null) {
            throw new kd5("Session does not exist", new Object[0]);
        }
        int i = e97Var.b - 1;
        e97Var.b = i;
        if (i == 0) {
            threadLocal.remove();
        }
    }

    @Override // defpackage.dc5
    public boolean e(fc5 fc5Var, MenuItem menuItem) {
        switch (this.a) {
            case 10:
                ol5 ol5Var = (ol5) this.b;
                if (ol5Var.f != null && menuItem.getItemId() == ol5Var.getSelectedItemId()) {
                    HomeActivity homeActivity = (HomeActivity) ((er1) ol5Var.f).a;
                    Object obj = HomeActivity.b0.get(Integer.valueOf(menuItem.getItemId()));
                    obj.getClass();
                    int iIntValue = ((Number) obj).intValue();
                    homeActivity.A(menuItem.getItemId() != R.id.nav_home);
                    homeActivity.b0(iIntValue);
                    return true;
                }
                ll5 ll5Var = ol5Var.e;
                if (ll5Var == null) {
                    return false;
                }
                HomeActivity homeActivity2 = (HomeActivity) ((fs) ll5Var).b;
                Map map = HomeActivity.b0;
                menuItem.getClass();
                Object obj2 = HomeActivity.b0.get(Integer.valueOf(menuItem.getItemId()));
                obj2.getClass();
                int iIntValue2 = ((Number) obj2).intValue();
                if (iIntValue2 == 1) {
                    NoSwipeViewPager noSwipeViewPager = homeActivity2.Z().f;
                    noSwipeViewPager.M = false;
                    noSwipeViewPager.w(iIntValue2, 0, false, false);
                    c64 c64VarA0 = homeActivity2.F();
                    zn4 zn4Var = zn4.a;
                    zn4.c(new ej(c64VarA0, 22));
                } else {
                    NoSwipeViewPager noSwipeViewPager2 = homeActivity2.Z().f;
                    noSwipeViewPager2.M = false;
                    noSwipeViewPager2.w(iIntValue2, 0, false, false);
                }
                homeActivity2.A(menuItem.getItemId() != R.id.nav_home);
                return false;
            default:
                return false;
        }
    }

    @Override // defpackage.av7
    public void f(qc6 qc6Var, hx7 hx7Var, gd gdVar, gd gdVar2) {
        ((wj6) this.b).n(new rj6(0, this, qc6Var, gdVar2));
    }

    @Override // defpackage.u1a
    public Iterator g(fu fuVar, CharSequence charSequence) {
        return new h1a(fuVar, charSequence, (gl9) this.b);
    }

    @Override // defpackage.a13
    public int getPaddingEnd() {
        return ((ExtendedFloatingActionButton) this.b).t0;
    }

    @Override // defpackage.a13
    public int getPaddingStart() {
        return ((ExtendedFloatingActionButton) this.b).s0;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (NestedScrollView) this.b;
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        ProxyBillingActivityV2 proxyBillingActivityV2 = (ProxyBillingActivityV2) this.b;
        g9 g9Var = (g9) obj;
        Intent intent = g9Var.b;
        int i = ta9.e(intent, "ProxyBillingActivityV2").a;
        ResultReceiver resultReceiver = proxyBillingActivityV2.f;
        if (resultReceiver != null) {
            resultReceiver.send(i, intent == null ? null : intent.getExtras());
        }
        int i2 = g9Var.a;
        if (i2 != -1 || i != 0) {
            ta9.h("ProxyBillingActivityV2", "External offer dialog finished with resultCode: " + i2 + " and billing's responseCode: " + i);
        }
        proxyBillingActivityV2.finish();
    }

    @Override // defpackage.a13
    public ViewGroup.LayoutParams i() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    @Override // defpackage.zv5
    public Object k(od odVar) {
        return ((aw5) this.b).d.D(odVar);
    }

    public i87 l() {
        ThreadLocal threadLocal = (ThreadLocal) this.b;
        e97 e97Var = (e97) threadLocal.get();
        if (e97Var != null) {
            int i = e97Var.b;
            if (i >= 0) {
                e97Var.b = i + 1;
            }
            return e97Var.a;
        }
        e97 e97Var2 = new e97();
        i87 i87Var = new i87();
        e97Var2.a = i87Var;
        threadLocal.set(e97Var2);
        int i2 = e97Var2.b;
        if (i2 >= 0) {
            e97Var2.b = i2 + 1;
        }
        return i87Var;
    }

    @Override // defpackage.dc5
    public void m(fc5 fc5Var) {
        switch (this.a) {
            case 10:
                break;
            default:
                o88 o88Var = (o88) this.b;
                boolean zO = o88Var.e.a.o();
                Window.Callback callback = o88Var.f;
                if (zO) {
                    callback.onPanelClosed(108, fc5Var);
                } else if (callback.onPreparePanel(0, null, fc5Var)) {
                    callback.onMenuOpened(108, fc5Var);
                }
                break;
        }
    }

    public void n(final k55 k55Var) {
        zm zmVar = (zm) this.b;
        final w45 w45Var = new w45(zmVar);
        w45Var.setTitle(zmVar.getString(R.string.preparing));
        w45Var.r = 1;
        w45Var.n(null);
        w45Var.l(100);
        int i = 0;
        w45Var.m(0);
        w45Var.k(true);
        boolean z = k55Var instanceof wh;
        String string = zmVar.getString(z ? R.string.downloading_backup_files : R.string.preparing_apks);
        string.getClass();
        w45Var.i(string);
        w45Var.setCancelable(false);
        w45Var.show();
        TextView textView = (TextView) w45Var.findViewById(android.R.id.message);
        if (textView != null) {
            textView.setTextSize(13.5f);
        }
        final jh jhVar = z ? new jh(i, this, w45Var) : null;
        zn4 zn4Var = zn4.a;
        zn4.d(new bt3() { // from class: kh
            @Override // defpackage.bt3
            public final Object invoke() {
                Object bn6Var;
                try {
                    bn6Var = jm1.l(k55Var, jhVar);
                } catch (Throwable th) {
                    bn6Var = new bn6(th);
                }
                zn4 zn4Var2 = zn4.a;
                zn4.e(new mh(0, w45Var, bn6Var, this.a));
                return be8.a;
            }
        });
    }

    @Override // defpackage.zi0
    public void o(xy7 xy7Var) {
        MessagesBackupRestoreActivity messagesBackupRestoreActivity = (MessagesBackupRestoreActivity) this.b;
        be5 be5Var = messagesBackupRestoreActivity.T;
        if (be5Var == null) {
            pe4.F("mAdapter");
            throw null;
        }
        ff5 ff5Var = new ff5(be5Var.l(), xy7Var);
        if (xy7Var.e.contains(q05.CLOUD)) {
            sa1.R(messagesBackupRestoreActivity, null, new g52(8, messagesBackupRestoreActivity, ff5Var), 1);
        } else {
            messagesBackupRestoreActivity.b0().c(ff5.class, ff5Var);
        }
    }

    @Override // defpackage.t22
    public void onError(Object obj) {
        wv3 wv3Var = (wv3) obj;
        wv3Var.getClass();
        o21 o21Var = (o21) this.b;
        if (o21Var.t() instanceof ho5) {
            o21Var.resumeWith(new bn6(wv3Var));
        }
    }

    @Override // defpackage.t22
    public void onResult(Object obj) {
        bw3 bw3Var = (bw3) obj;
        bw3Var.getClass();
        o21 o21Var = (o21) this.b;
        if (o21Var.t() instanceof ho5) {
            o21Var.resumeWith(bw3Var);
        }
    }

    private final void j(fc5 fc5Var) {
    }

    @Override // defpackage.av7
    public void c(qc6 qc6Var) {
    }

    public /* synthetic */ nh(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    public nh(zm zmVar) {
        this.a = 0;
        zmVar.getClass();
        this.b = zmVar;
    }

    public nh() {
        this.a = 20;
        this.b = new ArrayList();
    }

    public /* synthetic */ nh(int i) {
        this.a = i;
    }

    public nh(NestedScrollView nestedScrollView, MaterialButton materialButton, MaterialButton materialButton2, ka kaVar, ka kaVar2) {
        this.a = 18;
        this.b = nestedScrollView;
    }

    public nh(TextView textView) {
        this.a = 5;
        this.b = new zu2(textView);
    }
}
