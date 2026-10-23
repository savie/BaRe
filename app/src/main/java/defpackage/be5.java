package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.Arrays;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.views.MCheckBox;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class be5 extends gm7 {
    public final TextView l;

    public be5(TextView textView) {
        super(null);
        this.l = textView;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        final ae5 ae5Var = (ae5) fh6Var;
        final qv1 qv1Var = (qv1) m(i);
        qv1Var.getClass();
        MCheckBox mCheckBox = ae5Var.B;
        mCheckBox.setOnCheckedChangeListener(null);
        mCheckBox.setClickable(false);
        mi7 mi7Var = ae5Var.v;
        mi7Var.d.setCheckable(true);
        jm1.D(ae5Var.x, qv1Var.getPhotoUri());
        ae5Var.y.setText(String.format("%s (%s)", Arrays.copyOf(new Object[]{qv1Var.getDisplayName(), Integer.valueOf(qv1Var.getMessageCount())}, 2)));
        ae5Var.z.setText(qv1Var.getSnippet());
        TextView textView = ae5Var.A;
        Context context = textView.getContext();
        context.getClass();
        textView.setTextColor(sz8.w(context));
        textView.setText(Const.s(qv1Var.getLastSmsDate()));
        mCheckBox.setVisibility(0);
        final be5 be5Var = ae5Var.C;
        mCheckBox.setChecked(be5Var.q(qv1Var));
        mi7Var.d.setChecked(mCheckBox.isChecked());
        mCheckBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: zd5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                compoundButton.getClass();
                this.a.v(qv1Var, z, false);
                ae5Var.v.d.setChecked(z);
            }
        });
        ae5Var.w.setOnClickListener(new es(ae5Var, 12));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.smscalls_backup_restore_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new ae5(this, view);
    }

    public final void y() {
        TextView textView = this.l;
        Context context = textView.getContext();
        int size = l().size();
        int iB = b();
        String string = context.getString(R.string.selected);
        string.getClass();
        String string2 = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string2 = sharedPreferences.getString("app_locale", null);
            String lowerCase = string.toLowerCase((string2 == null || string2.length() == 0) ? xx3.h().a() : xx3.g(string2).a());
            lowerCase.getClass();
            textView.setText(size + "/" + iB + TokenAuthenticationScheme.SCHEME_DELIMITER + lowerCase);
        } catch (ClassCastException unused) {
        }
    }
}
