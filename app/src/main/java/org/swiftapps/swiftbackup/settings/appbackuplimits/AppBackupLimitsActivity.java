package org.swiftapps.swiftbackup.settings.appbackuplimits;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import defpackage.cv;
import defpackage.dk;
import defpackage.ek;
import defpackage.fl1;
import defpackage.fm6;
import defpackage.g7;
import defpackage.gv7;
import defpackage.h7;
import defpackage.hl1;
import defpackage.il0;
import defpackage.iu;
import defpackage.ov2;
import defpackage.pk;
import defpackage.qk;
import defpackage.qo0;
import defpackage.sz8;
import defpackage.vk;
import defpackage.vr6;
import defpackage.zn4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class AppBackupLimitsActivity extends il0 {
    public static final /* synthetic */ int M = 0;
    public final gv7 K = new gv7(new dk(this, 1));
    public final gv7 L = new gv7(new ek(this, 1));

    public static final void N(AppBackupLimitsActivity appBackupLimitsActivity) {
        ArrayList arrayList = new ArrayList(appBackupLimitsActivity.O());
        Intent intent = new Intent(appBackupLimitsActivity, (Class<?>) AppBackupLimitsActivity.class);
        intent.putParcelableArrayListExtra("extra_limits", new ArrayList<>(arrayList));
        appBackupLimitsActivity.setResult(-1, intent);
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 a0() {
        return null;
    }

    public final ArrayList O() {
        Set<Map.Entry> setEntrySet = ((Map) this.L.getValue()).entrySet();
        ArrayList arrayList = new ArrayList(hl1.G0(setEntrySet, 10));
        for (Map.Entry entry : setEntrySet) {
            iu iuVar = (iu) entry.getKey();
            qk qkVar = (qk) entry.getValue();
            String string = iuVar.toString();
            Long l = qkVar.A;
            Long l2 = null;
            if (l == null || l.longValue() <= 0) {
                l = null;
            }
            Long l3 = qkVar.B;
            if (l3 != null && l3.longValue() > 0) {
                l2 = l3;
            }
            arrayList.add(new AppBackupLimitItem(string, l, l2));
        }
        return arrayList;
    }

    public final vk P() {
        return (vk) this.K.getValue();
    }

    @Override // defpackage.io1, android.app.Activity
    public final void onBackPressed() {
        ArrayList arrayList = new ArrayList(O());
        Intent intent = new Intent(this, (Class<?>) AppBackupLimitsActivity.class);
        intent.putParcelableArrayListExtra("extra_limits", new ArrayList<>(arrayList));
        setResult(-1, intent);
        super.onBackPressed();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Object next;
        super.onCreate(bundle);
        setContentView(P().a);
        int iP = p();
        P().n.setBackgroundColor(iP);
        P().k.setBackgroundColor(iP);
        sz8.b(P().f, 7);
        List parcelableArrayList = bundle != null ? bundle.getParcelableArrayList("extra_limits") : null;
        if (parcelableArrayList == null) {
            Intent intent = getIntent();
            Bundle extras = intent != null ? intent.getExtras() : null;
            parcelableArrayList = extras != null ? extras.getParcelableArrayList("extra_limits") : null;
            if (parcelableArrayList == null) {
                parcelableArrayList = ov2.a;
            }
        }
        if (parcelableArrayList.isEmpty()) {
            vr6.e$default(vr6.INSTANCE, r(), "Empty initial data!", null, 4, null);
            Context applicationContext = getApplicationContext();
            applicationContext.getClass();
            zn4 zn4Var = zn4.a;
            zn4.e(new cv(14, applicationContext, "Empty initial data!"));
            finish();
            return;
        }
        Log.d(r(), "initialData=" + parcelableArrayList);
        for (Map.Entry entry : ((Map) this.L.getValue()).entrySet()) {
            iu iuVar = (iu) entry.getKey();
            qk qkVar = (qk) entry.getValue();
            Iterator it = parcelableArrayList.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((AppBackupLimitItem) next).getAppPart() != iuVar);
            AppBackupLimitItem appBackupLimitItem = (AppBackupLimitItem) next;
            View view = qkVar.a;
            view.getClass();
            sz8.d0(view, appBackupLimitItem != null);
            if (appBackupLimitItem != null) {
                Log.d(r(), "binding item = " + appBackupLimitItem);
                TextInputLayout textInputLayout = qkVar.x;
                Context context = qkVar.a.getContext();
                qkVar.v.setText(iu.toDisplayString$default(appBackupLimitItem.getAppPart(), false, 1, null));
                TextInputLayout textInputLayout2 = qkVar.w;
                textInputLayout2.setHint(context.getString(R.string.local_backup_limit));
                textInputLayout2.setSuffixText("MB");
                textInputLayout2.getSuffixTextView().setTypeface(fm6.a(context, R.font.mono_bold));
                EditText editText = textInputLayout2.getEditText();
                if (editText != null) {
                    editText.setTypeface(fm6.a(context, R.font.mono_medium));
                }
                textInputLayout2.setEndIconDrawable(R.drawable.ic_delete);
                textInputLayout2.setEndIconVisible(true);
                int i = 2;
                textInputLayout2.setEndIconOnClickListener(new g7(textInputLayout2, i));
                textInputLayout.setHint(context.getString(R.string.cloud_backup_limit));
                textInputLayout.setSuffixText("MB");
                textInputLayout.getSuffixTextView().setTypeface(fm6.a(context, R.font.mono_bold));
                EditText editText2 = textInputLayout.getEditText();
                if (editText2 != null) {
                    editText2.setTypeface(fm6.a(context, R.font.mono_medium));
                }
                textInputLayout.setEndIconDrawable(R.drawable.ic_delete);
                textInputLayout.setEndIconVisible(true);
                textInputLayout.setEndIconOnClickListener(new h7(textInputLayout, i));
                for (TextInputLayout textInputLayout3 : fl1.A0(textInputLayout2, textInputLayout)) {
                    EditText editText3 = textInputLayout3.getEditText();
                    editText3.getClass();
                    editText3.addTextChangedListener(new pk(editText3, textInputLayout3, qkVar, context));
                }
                TextInputEditText textInputEditText = qkVar.y;
                Long localLimitMBs = appBackupLimitItem.getLocalLimitMBs();
                textInputEditText.setText(localLimitMBs != null ? String.valueOf(localLimitMBs.longValue()) : null);
                TextInputEditText textInputEditText2 = qkVar.z;
                Long cloudLimitMBs = appBackupLimitItem.getCloudLimitMBs();
                textInputEditText2.setText(cloudLimitMBs != null ? String.valueOf(cloudLimitMBs.longValue()) : null);
            }
        }
    }

    @Override // defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        bundle.putParcelableArrayList("extra_limits", new ArrayList<>(O()));
        super.onSaveInstanceState(bundle);
    }
}
