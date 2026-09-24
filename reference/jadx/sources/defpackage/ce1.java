package defpackage;

import android.content.SharedPreferences;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.view.View;
import android.widget.ArrayAdapter;
import com.google.android.material.card.MaterialCardView;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$IncrementalBackup;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.wifi.WifiActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ce1 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ce1(FolderBackup$IncrementalBackup folderBackup$IncrementalBackup, ml3 ml3Var, lj3 lj3Var) {
        this.a = 2;
        this.b = folderBackup$IncrementalBackup;
        this.c = ml3Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        int i2 = 1;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((jf) obj2).invoke((md1) obj);
                return;
            case 1:
                CsActivity csActivity = (CsActivity) obj2;
                List<vi1> list = (List) obj;
                int i3 = CsActivity.P0;
                csActivity.getClass();
                Float fValueOf = Float.valueOf(13.5f);
                int i4 = 2;
                if (list.size() == 1) {
                    vi1 vi1Var = (vi1) el1.k1(list);
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    String string = csActivity.getString(R.string.protocol);
                    string.getClass();
                    CsActivity.r0(spannableStringBuilder, string, vi1Var.b.getDisplayName());
                    String string2 = csActivity.getString(R.string.local_server_detail_address);
                    string2.getClass();
                    CsActivity.r0(spannableStringBuilder, string2, vi1Var.a());
                    String string3 = csActivity.getString(R.string.server);
                    string3.getClass();
                    CsActivity.r0(spannableStringBuilder, string3, vi1Var.c);
                    String string4 = csActivity.getString(R.string.port);
                    string4.getClass();
                    CsActivity.r0(spannableStringBuilder, string4, String.valueOf(vi1Var.d));
                    String string5 = csActivity.getString(R.string.path);
                    string5.getClass();
                    CsActivity.r0(spannableStringBuilder, string5, vi1Var.e);
                    String string6 = csActivity.getString(R.string.local_server_detail_detection);
                    string6.getClass();
                    CsActivity.r0(spannableStringBuilder, string6, zh8.x(vi1Var));
                    SpannedString spannedString = new SpannedString(spannableStringBuilder);
                    s35 s35Var = new s35(csActivity, R.style.M3AlertDialogTheme, new hv1(csActivity, R.style.M3AlertDialogTheme), fValueOf);
                    s35Var.v(R.string.local_server_details_title);
                    ((ra) s35Var.b).f = spannedString;
                    s35Var.s(R.string.local_server_use_button, new lu(i4, csActivity, vi1Var));
                    s35Var.q(R.string.cancel, null);
                    s35Var.m();
                    return;
                }
                jh6 jh6Var = new jh6();
                ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
                for (vi1 vi1Var2 : list) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(vi1Var2.b.getDisplayName());
                    sb.append(" - ");
                    sb.append(vi1Var2.a());
                    String str = vi1Var2.e;
                    if (str != null) {
                        if (nq7.j0(str)) {
                            str = null;
                        }
                        if (str != null) {
                            sb.append("\n");
                            sb.append(csActivity.getString(R.string.path));
                            sb.append(": ");
                            sb.append(str);
                        }
                    }
                    String strX = zh8.x(vi1Var2);
                    if (strX != null) {
                        sb.append("\n");
                        sb.append(csActivity.getString(R.string.local_server_detail_detection));
                        sb.append(": ");
                        sb.append(strX);
                    }
                    arrayList.add(sb.toString());
                }
                ArrayAdapter arrayAdapter = new ArrayAdapter(csActivity, R.layout.local_server_discovery_dialog_item, arrayList);
                s35 s35Var2 = new s35(csActivity, R.style.M3AlertDialogTheme, new hv1(csActivity, R.style.M3AlertDialogTheme), fValueOf);
                s35Var2.v(R.string.local_servers_details_title);
                int i5 = jh6Var.a;
                qj1 qj1Var = new qj1(jh6Var, i2);
                ra raVar = (ra) s35Var2.b;
                raVar.q = arrayAdapter;
                raVar.r = qj1Var;
                raVar.w = i5;
                raVar.v = true;
                s35Var2.s(R.string.local_server_use_button, new rj1(2, csActivity, list, jh6Var));
                s35Var2.q(R.string.cancel, null);
                s35Var2.m();
                return;
            case 2:
                FolderBackup$IncrementalBackup folderBackup$IncrementalBackup = (FolderBackup$IncrementalBackup) obj2;
                ml3 ml3Var = (ml3) obj;
                if (folderBackup$IncrementalBackup == null) {
                    return;
                }
                ml3Var.a.getString(R.string.incremental_backup).getClass();
                folderBackup$IncrementalBackup.getBackupFile().getClass();
                return;
            case 3:
                MessagesDashActivity messagesDashActivity = (MessagesDashActivity) obj2;
                int i6 = MessagesDashActivity.T;
                Const.K(messagesDashActivity, R.string.delete_all, new g52(9, messagesDashActivity, (ArrayList) obj), null);
                return;
            case 4:
                j38 j38Var = ((j95) obj2).d0;
                final int i7 = j38Var.b % 24;
                final int i8 = j38Var.c;
                final q47 q47VarP = ((m37) obj).p();
                zn4 zn4Var = zn4.a;
                zn4.c(new bt3() { // from class: i47
                    @Override // defpackage.bt3
                    public final Object invoke() {
                        ScheduleData scheduleDataCopy$default = ScheduleData.copy$default(c47.a.c(), i7, i8, 0, null, null, null, null, null, null, null, null, null, null, 8188, null);
                        q47 q47Var = q47VarP;
                        zn4.c(new qj3(scheduleDataCopy$default, q47Var, true));
                        q47Var.e.c();
                        return be8.a;
                    }
                });
                return;
            default:
                WifiActivity wifiActivity = (WifiActivity) obj2;
                MaterialCardView materialCardView = (MaterialCardView) obj;
                et8 et8Var = WifiActivity.Y;
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putBoolean("user_acknowledge_no_batch_restore_on_q", true).apply();
                wifiActivity.y(new Class[0]);
                materialCardView.setVisibility(8);
                return;
        }
    }

    public /* synthetic */ ce1(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
