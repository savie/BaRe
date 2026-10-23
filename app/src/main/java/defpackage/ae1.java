package defpackage;

import android.content.Intent;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.StyleSpan;
import android.util.Log;
import java.security.SecureRandom;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ae1 extends cu3 implements mt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ae1(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        q63 q63Var = null;
        switch (i) {
            case 0:
                df1 df1Var = (df1) obj;
                df1Var.getClass();
                CloudDiagnosticsActivity cloudDiagnosticsActivity = (CloudDiagnosticsActivity) this.receiver;
                int i2 = CloudDiagnosticsActivity.Z;
                cloudDiagnosticsActivity.getClass();
                if (df1Var instanceof ze1) {
                    zn4 zn4Var = zn4.a;
                    zn4.f(300L, new cv(3, cloudDiagnosticsActivity, df1Var));
                    return be8Var;
                }
                if (df1Var instanceof bf1) {
                    bf1 bf1Var = (bf1) df1Var;
                    boolean z = bf1Var.a;
                    String str = bf1Var.b;
                    tb1 tb1Var = tb1.a;
                    StringBuilder sbP = u48.p("RESULT status=", z ? "PASS" : "FAIL", " cloud=", qb1.f().getConstant(), " detail=");
                    sbP.append(str);
                    Log.i("CloudDiagnosticsSmoke", sbP.toString());
                    cloudDiagnosticsActivity.setResult(z ? -1 : 0);
                    cloudDiagnosticsActivity.finish();
                    return be8Var;
                }
                if (df1Var instanceof af1) {
                    ye1 ye1Var = ((af1) df1Var).a;
                    String str2 = ye1Var.a;
                    cloudDiagnosticsActivity.X = str2;
                    boolean z2 = ye1Var.b;
                    cloudDiagnosticsActivity.Y = z2;
                    cloudDiagnosticsActivity.X(str2, z2);
                    return be8Var;
                }
                if (!(df1Var instanceof cf1)) {
                    q.j();
                    return null;
                }
                String string = cloudDiagnosticsActivity.getString(((cf1) df1Var).a);
                string.getClass();
                zn4 zn4Var2 = zn4.a;
                zn4.e(new cv(14, cloudDiagnosticsActivity, string));
                return be8Var;
            case 1:
                String str3 = (String) obj;
                str3.getClass();
                ng1 ng1Var = (ng1) this.receiver;
                ng1Var.getClass();
                zn4 zn4Var3 = zn4.a;
                zn4.b(null, new kg1(ng1Var, str3, null));
                return be8Var;
            case 2:
                i62 i62Var = (i62) obj;
                i62Var.getClass();
                CsActivity csActivity = (CsActivity) this.receiver;
                int i3 = CsActivity.P0;
                csActivity.getClass();
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) csActivity.getString(R.string.s3_endpoint_resolution_failed_intro));
                String string2 = csActivity.getString(R.string.s3_endpoint_resolution_endpoint);
                string2.getClass();
                CsActivity.s0(spannableStringBuilder, string2, i62Var.a);
                String string3 = csActivity.getString(R.string.s3_endpoint_resolution_resolved_address);
                string3.getClass();
                String strY0 = el1.Y0(i62Var.b, null, null, null, null, 63);
                if (nq7.j0(strY0)) {
                    strY0 = null;
                }
                if (strY0 == null) {
                    strY0 = "-";
                }
                CsActivity.s0(spannableStringBuilder, string3, strY0);
                String string4 = csActivity.getString(R.string.s3_endpoint_resolution_private_dns);
                string4.getClass();
                String string5 = i62Var.c;
                String str4 = i62Var.d;
                if (str4 != null && !nq7.j0(str4) && string5 != null && !nq7.j0(string5)) {
                    string5 = u48.n(str4, " (", string5, ")");
                } else if (str4 != null && !nq7.j0(str4)) {
                    string5 = str4;
                } else if (string5 == null || nq7.j0(string5)) {
                    string5 = csActivity.getString(R.string.s3_endpoint_resolution_private_dns_not_detected);
                    string5.getClass();
                }
                CsActivity.s0(spannableStringBuilder, string4, string5);
                String string6 = csActivity.getString(R.string.s3_endpoint_resolution_network_dns);
                string6.getClass();
                String strY1 = el1.Y0(i62Var.e, null, null, null, null, 63);
                if (nq7.j0(strY1)) {
                    strY1 = null;
                }
                CsActivity.s0(spannableStringBuilder, string6, strY1 != null ? strY1 : "-");
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.append((CharSequence) csActivity.getString(R.string.s3_endpoint_resolution_explanation));
                spannableStringBuilder.append((CharSequence) "\n\n");
                StyleSpan styleSpan = new StyleSpan(1);
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) csActivity.getString(R.string.s3_endpoint_resolution_try_these_steps));
                spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 17);
                spannableStringBuilder.append((CharSequence) "\n- ");
                spannableStringBuilder.append((CharSequence) csActivity.getString(R.string.s3_endpoint_resolution_workaround_dns));
                spannableStringBuilder.append((CharSequence) "\n- ");
                spannableStringBuilder.append((CharSequence) csActivity.getString(R.string.s3_endpoint_resolution_workaround_alternate_endpoint));
                SpannedString spannedString = new SpannedString(spannableStringBuilder);
                s35 s35Var = new s35(csActivity, R.style.M3AlertDialogTheme, new hv1(csActivity, R.style.M3AlertDialogTheme), Float.valueOf(13.5f));
                s35Var.v(R.string.s3_endpoint_resolution_failed_title);
                ((ra) s35Var.b).f = spannedString;
                s35Var.r(R.string.settings, new iq1(csActivity, 2));
                s35Var.s(R.string.ok, null);
                s35Var.m();
                return be8Var;
            case 3:
                ((b82) this.receiver).getClass();
                return b82.o((String) obj);
            case 4:
                int iIntValue = ((Number) obj).intValue();
                ((hc3) this.receiver).getClass();
                SecureRandom secureRandom = new SecureRandom();
                StringBuilder sb = new StringBuilder(iIntValue);
                for (int i4 = 0; i4 < iIntValue; i4++) {
                    hc3 hc3Var = jc3.q;
                    sb.append("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".charAt(secureRandom.nextInt(62)));
                }
                return sb.toString();
            case 5:
                String str5 = (String) obj;
                FolderDetailActivity folderDetailActivity = (FolderDetailActivity) this.receiver;
                if (str5 != null) {
                    int i5 = FolderDetailActivity.Z;
                    folderDetailActivity.getClass();
                    if (nq7.j0(str5)) {
                        str5 = null;
                    }
                    if (str5 != null) {
                        q63Var = new q63(str5, 1);
                    }
                }
                t9 t9Var = folderDetailActivity.U;
                Intent intentPutExtra = new Intent(folderDetailActivity, (Class<?>) FolderPickerActivity.class).putExtra("extra_initial_folder", q63Var);
                intentPutExtra.getClass();
                t9Var.a(intentPutExtra);
                return be8Var;
            default:
                Exception exc = (Exception) obj;
                exc.getClass();
                return Boolean.valueOf(((pu3) this.receiver).k(exc));
        }
    }
}
