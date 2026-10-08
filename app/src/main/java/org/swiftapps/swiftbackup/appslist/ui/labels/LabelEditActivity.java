package org.swiftapps.swiftbackup.appslist.ui.labels;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import defpackage.ar4;
import defpackage.b56;
import defpackage.bk;
import defpackage.ck;
import defpackage.d76;
import defpackage.ej;
import defpackage.el1;
import defpackage.fj;
import defpackage.gj;
import defpackage.gt;
import defpackage.gv7;
import defpackage.h00;
import defpackage.hj;
import defpackage.hl1;
import defpackage.i00;
import defpackage.il0;
import defpackage.ix0;
import defpackage.kf;
import defpackage.l90;
import defpackage.lf;
import defpackage.lr4;
import defpackage.mv1;
import defpackage.nc8;
import defpackage.nh4;
import defpackage.nq7;
import defpackage.ns;
import defpackage.o30;
import defpackage.pb7;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.qe3;
import defpackage.ql1;
import defpackage.qr;
import defpackage.qs0;
import defpackage.r35;
import defpackage.re3;
import defpackage.rv1;
import defpackage.sl1;
import defpackage.sz8;
import defpackage.tr;
import defpackage.ur;
import defpackage.wq4;
import defpackage.xe6;
import defpackage.xq4;
import defpackage.yq4;
import defpackage.z20;
import defpackage.zc2;
import defpackage.zn4;
import defpackage.zq4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LabelEditActivity extends il0 {
    public static final /* synthetic */ int U = 0;
    public final gv7 P;
    public final gv7 S;
    public boolean T;
    public final l90 K = new l90(ph6.a(ar4.class), new z20(this, 8), new ns(this, 13), new o30(this, 5));
    public final gv7 L = new gv7(new xq4(this, 0));
    public final gv7 M = new gv7(new d76(this, 27));
    public final gv7 N = new gv7(new kf(this, 29));
    public final gv7 O = new gv7(new lf(this, 24));
    public final gv7 Q = new gv7(new fj(this, 28));
    public final gv7 R = new gv7(new gj(this, 24));

    public LabelEditActivity() {
        int i = 25;
        this.P = new gv7(new ej(this, i));
        this.S = new gv7(new bk(this, i));
    }

    public final yq4 N() {
        return (yq4) this.L.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final ar4 V() {
        return (ar4) this.K.getValue();
    }

    public final LabelParams P() {
        LabelParams labelParams;
        String string;
        Editable text = ((TextInputEditText) this.O.getValue()).getText();
        String string2 = (text == null || (string = text.toString()) == null) ? null : nq7.H0(string).toString();
        if (string2 == null) {
            string2 = "";
        }
        String str = string2;
        String str2 = ((wq4) this.R.getValue()).e.g;
        if (str2 == null) {
            str2 = (String) ((sl1) sl1.e.getValue()).b.getValue();
        }
        String str3 = str2;
        LabelParams labelParams2 = V().h;
        if (labelParams2 == null || (labelParams = LabelParams.copy$default(labelParams2, null, str, str3, 1, null)) == null) {
            LabelParams.Companion.getClass();
            String strK = nh4.k(6, true, true, null, (Random) xe6.b.a.get());
            strK.getClass();
            labelParams = new LabelParams(strK, str, str3);
        }
        LabelParams labelParams3 = labelParams;
        gt gtVar = new gt(((ur) this.M.getValue()).a, 1.0f, v(), false, null);
        String str4 = str.length() > 0 ? str : null;
        if (str4 == null) {
            str4 = "---";
        }
        gtVar.r(LabelParams.copy$default(labelParams3, null, str4, null, 5, null));
        return labelParams3;
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String name;
        LabelsData labelsData;
        Map<String, LabelledApp> labelledAppsMap;
        Collection<LabelledApp> collectionValues;
        Map<String, LabelParams> labelParamsMap;
        super.onCreate(bundle);
        V v = V.INSTANCE;
        int i = 0;
        if (!v.getA()) {
            zn4 zn4Var = zn4.a;
            zn4.e(new b56(this, i));
            finish();
        }
        setContentView(N().a);
        Intent intent = getIntent();
        ArrayList arrayList = null;
        LabelParams labelParams = (LabelParams) (intent != null ? intent.getParcelableExtra("label_edit") : null);
        int i2 = 1;
        this.T = labelParams != null;
        ar4 ar4VarV = V();
        if (!ar4VarV.e) {
            ar4VarV.e = true;
            ar4VarV.g = labelParams;
            ar4VarV.h = labelParams;
            if (!v.getVp()) {
                zc2 zc2Var = re3.a;
                String str = ar4VarV.b;
                LabelsData labelsData2 = lr4.e;
                try {
                    new qe3(str, "numLabels=" + ((labelsData2 == null || (labelParamsMap = labelsData2.getLabelParamsMap()) == null) ? null : Integer.valueOf(labelParamsMap.size()))).invoke();
                } catch (Exception unused) {
                }
            }
        }
        setSupportActionBar((Toolbar) ((ix0) N().b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.f0(getString(!this.T ? R.string.create_new_label : R.string.edit_label));
            if (labelParams != null) {
                supportActionBar.d0(labelParams.getName());
            }
        }
        TextInputEditText textInputEditText = (TextInputEditText) this.O.getValue();
        LabelParams labelParams2 = V().h;
        if (labelParams2 == null || (name = labelParams2.getName()) == null) {
            name = "";
        }
        textInputEditText.setText(name);
        textInputEditText.addTextChangedListener(new mv1(this, 2));
        wq4 wq4Var = (wq4) this.R.getValue();
        LabelParams labelParams3 = V().h;
        Integer numValueOf = labelParams3 != null ? Integer.valueOf(labelParams3.getColorInt()) : null;
        pb7 pb7Var = wq4Var.e;
        ql1 ql1Var = wq4Var.d;
        gv7 gv7Var = sl1.e;
        sl1 sl1Var = null;
        String str2 = null;
        for (sl1 sl1Var2 : (List) sl1.f.getValue()) {
            for (String str3 : (List) sl1Var2.d.getValue()) {
                int color = Color.parseColor(str3);
                if (numValueOf != null && color == numValueOf.intValue()) {
                    sl1Var = sl1Var2;
                    str2 = str3;
                    break;
                }
            }
        }
        if (sl1Var == null) {
            gv7 gv7Var2 = sl1.e;
            sl1Var = (sl1) sl1.e.getValue();
        }
        if (str2 == null) {
            str2 = (String) sl1Var.b.getValue();
        }
        ql1Var.getClass();
        sl1Var.getClass();
        ql1Var.g = sl1Var;
        ql1Var.e();
        List list = (List) sl1Var.d.getValue();
        pb7Var.getClass();
        list.getClass();
        str2.getClass();
        pb7Var.g = str2;
        r35.m(pb7Var, list);
        gj gjVar = pb7Var.h;
        if (gjVar != null) {
            gjVar.invoke();
        }
        RecyclerView recyclerView = wq4Var.b;
        Iterator it = ql1Var.d.iterator();
        int i3 = 0;
        while (true) {
            if (!it.hasNext()) {
                i3 = -1;
                break;
            }
            sl1 sl1Var3 = (sl1) it.next();
            sl1 sl1Var4 = ql1Var.g;
            if (sl1Var4 == null) {
                sl1Var4 = (sl1) sl1.e.getValue();
            }
            if (pe4.d(sl1Var3, sl1Var4)) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 != -1) {
            recyclerView.f0(i3);
        }
        RecyclerView recyclerView2 = wq4Var.c;
        Iterator it2 = pb7Var.d.iterator();
        int i4 = 0;
        while (true) {
            if (!it2.hasNext()) {
                i4 = -1;
                break;
            }
            String str4 = (String) it2.next();
            String str5 = pb7Var.g;
            if (str5 == null) {
                str5 = (String) ((sl1) sl1.e.getValue()).b.getValue();
            }
            if (pe4.d(str4, str5)) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 != -1) {
            recyclerView2.f0(i4);
        }
        gv7 gv7Var3 = this.S;
        ((zq4) gv7Var3.getValue()).a.setVisibility(8);
        int i5 = 10;
        if (sz8.I(((zq4) gv7Var3.getValue()).a)) {
            lr4 lr4Var = lr4.a;
            LabelParams labelParams4 = V().h;
            String id = labelParams4 != null ? labelParams4.getId() : null;
            if (id != null && id.length() != 0 && (labelsData = lr4.e) != null && (labelledAppsMap = labelsData.getLabelledAppsMap()) != null && (collectionValues = labelledAppsMap.values()) != null) {
                arrayList = new ArrayList();
                for (Object obj : collectionValues) {
                    if (((LabelledApp) obj).getLabelIds().contains(id)) {
                        arrayList.add(obj);
                    }
                }
            }
            TextView textView = ((zq4) gv7Var3.getValue()).c;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) getString(R.string.apps));
            qr qrVar = tr.n0;
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(qr.c(this));
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) (" (" + (arrayList != null ? arrayList.size() : 0) + ")"));
            spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
            textView.setText(spannableStringBuilder);
            TextView textView2 = ((zq4) gv7Var3.getValue()).b;
            if (arrayList == null || arrayList.isEmpty()) {
                textView2.setVisibility(8);
            } else {
                textView2.setVisibility(0);
                ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    arrayList2.add(((LabelledApp) it3.next()).getName());
                }
                String.CASE_INSENSITIVE_ORDER.getClass();
                textView2.setText(el1.Y0(el1.n1(arrayList2, new qs0(3)), ", ", null, null, null, 62));
            }
        }
        ((MaterialButton) this.P.getValue()).setOnClickListener(new h00(this, 5));
        ((MaterialButton) this.Q.getValue()).setOnClickListener(new i00(this, i5));
        V().j(P());
        V().f.e(this, new rv1(i2, new hj(this, 18)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        if (this.T) {
            getMenuInflater().inflate(R.menu.menu_label_edit, menu);
            MenuItem menuItemFindItem = menu.findItem(R.id.action_delete);
            if (menuItemFindItem != null) {
                Drawable icon = menuItemFindItem.getIcon();
                icon.getClass();
                int iR = sz8.r(this);
                Drawable drawableMutate = icon.mutate();
                drawableMutate.getClass();
                drawableMutate.setTint(iR);
                menuItemFindItem.setIcon(drawableMutate);
            }
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() == R.id.action_delete_label) {
            Const.K(this, R.string.delete_label, new ck(this, 28), null);
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
