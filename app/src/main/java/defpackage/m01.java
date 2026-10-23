package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.model.provider.CallLogItem;
import org.swiftapps.swiftbackup.views.MCheckBox;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m01 extends gm7 {
    public final TextView l;

    public m01(TextView textView) {
        super(null);
        this.l = textView;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        int i2;
        int i3;
        final l01 l01Var = (l01) fh6Var;
        final CallLogItem callLogItem = (CallLogItem) m(i);
        final m01 m01Var = l01Var.D;
        callLogItem.getClass();
        MCheckBox mCheckBox = l01Var.C;
        mCheckBox.setOnCheckedChangeListener(null);
        mCheckBox.setClickable(false);
        mi7 mi7Var = l01Var.v;
        mi7Var.d.setCheckable(true);
        jm1.D(l01Var.x, callLogItem.getPhotoUri());
        l01Var.z.setText(TextUtils.isEmpty(callLogItem.getName()) ? callLogItem.getNumber() : callLogItem.getName());
        ImageView imageView = l01Var.y;
        Context context = imageView.getContext();
        context.getClass();
        int type = callLogItem.getType();
        int i4 = 4;
        if (type == 2) {
            i2 = R.drawable.ic_call_outgoing;
            i3 = R.color.call_outgoing;
        } else if (type == 3) {
            i2 = R.drawable.ic_call_missed;
            i3 = R.color.call_missed;
        } else if (type != 4) {
            i2 = R.drawable.ic_call_incoming;
            if (type == 5) {
                i3 = R.color.call_rejected;
            } else if (type != 6) {
                i3 = R.color.call_incoming;
            } else {
                i2 = R.drawable.ic_call_blocked;
                i3 = R.color.call_blocked;
            }
        } else {
            i2 = R.drawable.ic_call_voicemail;
            i3 = R.color.call_voicemail;
        }
        imageView.setImageDrawable(Const.w(context, i2, context.getColor(i3)));
        l01Var.A.setText(callLogItem.getNumber());
        TextView textView = l01Var.B;
        textView.setText(Const.s(callLogItem.getDate()));
        Context context2 = textView.getContext();
        context2.getClass();
        textView.setTextColor(sz8.w(context2));
        mCheckBox.setVisibility(0);
        mCheckBox.setChecked(m01Var.q(callLogItem));
        mi7Var.d.setChecked(mCheckBox.isChecked());
        mCheckBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: k01
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                compoundButton.getClass();
                this.a.v(callLogItem, z, false);
                l01Var.v.d.setChecked(z);
            }
        });
        l01Var.w.setOnClickListener(new mf(l01Var, i4));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.smscalls_backup_restore_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new l01(this, view);
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
