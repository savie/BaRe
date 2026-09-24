package defpackage;

import android.R;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.intro.d;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;
import org.swiftapps.swiftbackup.settings.f;
import org.swiftapps.swiftbackup.settings.h;
import org.swiftapps.swiftbackup.settings.i;
import org.swiftapps.swiftbackup.settings.k;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class hl0 extends cu3 implements mt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ hl0(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        MultipleBackupStrategy multipleBackupStrategyN;
        MultipleBackupStrategy.Representation representationA;
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                f00 f00Var = (f00) obj;
                w45 w45Var = (w45) ((il0) this.receiver).H.getValue();
                if (f00Var != null) {
                    w45Var.l(f00Var.b);
                    w45Var.m(f00Var.a);
                    if (!w45Var.isShowing()) {
                        w45Var.show();
                        TextView textView = (TextView) w45Var.findViewById(R.id.message);
                        if (textView != null) {
                            textView.setTextSize(13.5f);
                        }
                    }
                } else {
                    sz8.m(w45Var);
                }
                return be8Var;
            case 1:
                String str = (String) obj;
                str.getClass();
                CsActivity csActivity = (CsActivity) this.receiver;
                int i2 = CsActivity.P0;
                csActivity.getClass();
                vr6.i$default(vr6.INSTANCE, csActivity.r(), "Showing SMB data encryption required dialog", null, 4, null);
                b05.l(csActivity, csActivity.getString(org.swiftapps.swiftbackup.R.string.data_encryption_smb_3), str, 8);
                return be8Var;
            case 2:
                ((d) this.receiver).k(((Boolean) obj).booleanValue());
                return be8Var;
            case 3:
                bt3 bt3Var = (bt3) obj;
                bt3Var.getClass();
                ((zn4) this.receiver).getClass();
                zn4.e(bt3Var);
                return be8Var;
            case 4:
                i iVar = (i) obj;
                iVar.getClass();
                gv7 gv7Var = iVar.e;
                final MultipleBackupsActivity multipleBackupsActivity = (MultipleBackupsActivity) this.receiver;
                boolean z = multipleBackupsActivity.S;
                gv7 gv7Var2 = multipleBackupsActivity.M;
                if (!z) {
                    multipleBackupsActivity.y(TextView.class);
                }
                multipleBackupsActivity.S = false;
                MultipleBackupStrategy multipleBackupStrategy = iVar.a;
                h.b((h) multipleBackupsActivity.N.getValue(), multipleBackupStrategy, pe4.d((MultipleBackupStrategy) gv7Var.getValue(), multipleBackupStrategy), new k00(1, multipleBackupsActivity.a0(), k.class, "onStrategyClicked", "onStrategyClicked(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V", 0, 3), null, 24);
                MultipleBackupStrategy multipleBackupStrategy2 = iVar.b;
                int i3 = 3;
                h.b((h) multipleBackupsActivity.O.getValue(), multipleBackupStrategy2, pe4.d((MultipleBackupStrategy) gv7Var.getValue(), multipleBackupStrategy2), new xf(1, multipleBackupsActivity.a0(), k.class, "onStrategyClicked", "onStrategyClicked(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V", 0, 5), new eh2(i3, multipleBackupStrategy2, multipleBackupsActivity), 16);
                MultipleBackupStrategy multipleBackupStrategy3 = iVar.c;
                ((h) multipleBackupsActivity.P.getValue()).a(multipleBackupStrategy3, pe4.d((MultipleBackupStrategy) gv7Var.getValue(), multipleBackupStrategy3), new cj2(1, multipleBackupsActivity.a0(), k.class, "onStrategyClicked", "onStrategyClicked(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V", 0, 4), new nj2(i3, multipleBackupStrategy3, multipleBackupsActivity), new jj2(4, multipleBackupStrategy3, multipleBackupsActivity));
                if (pe4.d(multipleBackupsActivity.N(), (MultipleBackupStrategy) gv7Var2.getValue())) {
                    multipleBackupsActivity.A(false);
                } else if (V.INSTANCE.getA() || (multipleBackupStrategyN = multipleBackupsActivity.N()) == null || (representationA = f.a(multipleBackupStrategyN)) == null || !representationA.isPremium()) {
                    multipleBackupsActivity.A(true);
                } else {
                    multipleBackupsActivity.A(false);
                }
                ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) multipleBackupsActivity.Q.getValue();
                boolean zD = pe4.d(multipleBackupsActivity.N(), (MultipleBackupStrategy) gv7Var2.getValue());
                final boolean z2 = !zD;
                sz8.d0(extendedFloatingActionButton, z2);
                if (sz8.I(extendedFloatingActionButton)) {
                    ColorStateList colorStateListWithAlpha = extendedFloatingActionButton.getTextColors().withAlpha(!zD ? 255 : 128);
                    colorStateListWithAlpha.getClass();
                    extendedFloatingActionButton.setTextColor(colorStateListWithAlpha);
                    extendedFloatingActionButton.setIconTint(colorStateListWithAlpha);
                    extendedFloatingActionButton.setOnClickListener(new View.OnClickListener() { // from class: xi5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            MultipleBackupStrategy multipleBackupStrategyN2;
                            MultipleBackupStrategy.Representation representationA2;
                            int i4 = MultipleBackupsActivity.T;
                            if (z2) {
                                boolean a = V.INSTANCE.getA();
                                MultipleBackupsActivity multipleBackupsActivity2 = multipleBackupsActivity;
                                if (!a && (multipleBackupStrategyN2 = multipleBackupsActivity2.N()) != null && (representationA2 = f.a(multipleBackupStrategyN2)) != null && representationA2.isPremium()) {
                                    zn4 zn4Var = zn4.a;
                                    zn4.e(new b56(multipleBackupsActivity2, 0));
                                    return;
                                }
                                multipleBackupsActivity2.getClass();
                                Intent intentPutExtra = new Intent(multipleBackupsActivity2, (Class<?>) MultipleBackupsActivity.class).putExtra("extra_mbs_strategy", multipleBackupsActivity2.N());
                                intentPutExtra.getClass();
                                multipleBackupsActivity2.setResult(-1, intentPutExtra);
                                multipleBackupsActivity2.finish();
                            }
                        }
                    });
                }
                return be8Var;
            case 5:
                ux5 ux5Var = (ux5) obj;
                ux5Var.getClass();
                ((by5) this.receiver).j(ux5Var);
                return be8Var;
            default:
                return ((jy8) this.receiver).u((String) obj);
        }
    }
}
