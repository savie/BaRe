package defpackage;

import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import java.io.File;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class y63 extends cu3 implements mt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ y63(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:42:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:44:0x0204  */
    /* JADX WARN: Code duplicated, block: B:45:0x0208  */
    /* JADX WARN: Code duplicated, block: B:46:0x0210  */
    /* JADX WARN: Code duplicated, block: B:49:0x0217  */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        File parentFile;
        int i = this.a;
        be8 be8Var = be8.a;
        boolean zContains = false;
        switch (i) {
            case 0:
                File file = (File) obj;
                file.getClass();
                p63 p63Var = (p63) this.receiver;
                p63Var.getClass();
                if (p63Var.e(file)) {
                    zContains = true;
                } else {
                    String path = file.getPath();
                    path.getClass();
                    if (nq7.Z(path, "SwiftBackup", false)) {
                        if (pe4.d(file.getName(), "SwiftBackup") && file.canWrite()) {
                            p63Var.b(file);
                        } else {
                            String path2 = file.getPath();
                            path2.getClass();
                            List listW0 = nq7.w0(path2, new char[]{'/'}, 6);
                            File file2 = new File(el1.Y0(listW0.subList(0, listW0.indexOf("SwiftBackup") + 1), "/", null, null, null, 62));
                            if (file2.canWrite()) {
                                p63Var.b(file2);
                            } else if (!file.canWrite()) {
                                parentFile = file.getParentFile();
                                if (parentFile != null) {
                                    zContains = p63Var.b.contains(parentFile);
                                }
                            } else if (file.isDirectory()) {
                                p63Var.b(file);
                            } else {
                                p63Var.b(file.getParentFile());
                            }
                        }
                        zContains = true;
                    } else if (!file.canWrite()) {
                        if (file.isDirectory()) {
                            p63Var.b(file);
                        } else {
                            p63Var.b(file.getParentFile());
                        }
                        zContains = true;
                    } else {
                        parentFile = file.getParentFile();
                        if (parentFile != null) {
                            zContains = p63Var.b.contains(parentFile);
                        }
                    }
                }
                return Boolean.valueOf(zContains);
            case 1:
                tl3 tl3Var = (tl3) obj;
                tl3Var.getClass();
                kl3 kl3Var = (kl3) ((FolderDetailActivity) this.receiver).S.getValue();
                jl3 jl3Var = kl3Var.b;
                zx2 zx2Var = jl3Var.e;
                ConstraintLayout constraintLayout = jl3Var.k;
                CircularProgressIndicator circularProgressIndicator = jl3Var.n;
                if (tl3Var.equals(ql3.a)) {
                    circularProgressIndicator.setVisibility(0);
                    constraintLayout.setVisibility(8);
                    zx2Var.a.setVisibility(8);
                    return be8Var;
                }
                int i2 = 5;
                if (tl3Var.equals(pl3.a)) {
                    circularProgressIndicator.setVisibility(8);
                    constraintLayout.setVisibility(8);
                    LinearLayout linearLayout = zx2Var.a;
                    MaterialButton materialButton = zx2Var.b;
                    linearLayout.setVisibility(0);
                    zx2Var.d.setImageResource(R.drawable.ic_cloud_off);
                    zx2Var.e.setText(R.string.cloud_not_connected_summary);
                    materialButton.setVisibility(0);
                    materialButton.setText(R.string.connect_cloud_account);
                    materialButton.setOnClickListener(new of(kl3Var, i2));
                    return be8Var;
                }
                if (tl3Var.equals(rl3.a)) {
                    circularProgressIndicator.setVisibility(8);
                    constraintLayout.setVisibility(8);
                    LinearLayout linearLayout2 = zx2Var.a;
                    MaterialButton materialButton2 = zx2Var.b;
                    linearLayout2.setVisibility(0);
                    zx2Var.d.setImageResource(R.drawable.ic_wifi_off);
                    zx2Var.e.setText(R.string.no_internet_connection_summary);
                    materialButton2.setVisibility(0);
                    materialButton2.setText(R.string.retry);
                    materialButton2.setOnClickListener(new zf1(kl3Var, 2));
                    return be8Var;
                }
                if (tl3Var.equals(sl3.a)) {
                    circularProgressIndicator.setVisibility(8);
                    constraintLayout.setVisibility(8);
                    zx2Var.a.setVisibility(0);
                    zx2Var.d.setImageResource(R.drawable.ic_cloud);
                    zx2Var.e.setText(R.string.no_backup_in_cloud);
                    zx2Var.b.setVisibility(8);
                    return be8Var;
                }
                if (!(tl3Var instanceof ol3)) {
                    q.j();
                    return null;
                }
                circularProgressIndicator.setVisibility(8);
                constraintLayout.setVisibility(0);
                zx2Var.a.setVisibility(8);
                ol3 ol3Var = (ol3) tl3Var;
                jl3Var.p.setText(ol3Var.h);
                lj3 lj3Var = jl3Var.c;
                ((ImageView) lj3Var.b).setImageResource(R.drawable.ic_folder);
                TextView textView = (TextView) lj3Var.d;
                FolderDetailActivity folderDetailActivity = kl3Var.a;
                textView.setText(folderDetailActivity.getString(R.string.base_backup));
                ((TextView) lj3Var.c).setText(ol3Var.f);
                lj3 lj3Var2 = jl3Var.d;
                MaterialCardView materialCardView = (MaterialCardView) lj3Var2.a;
                sz8.d0(materialCardView, ol3Var.d);
                if (materialCardView.getVisibility() == 0) {
                    ((ImageView) lj3Var2.b).setImageResource(R.drawable.ic_stacks);
                    ((TextView) lj3Var2.d).setText(folderDetailActivity.getString(R.string.incremental_backups) + " (" + ol3Var.e + ")");
                    ((TextView) lj3Var2.c).setText(ol3Var.g);
                }
                jl3Var.b.setOnClickListener(new h10(i2, kl3Var, ol3Var));
                jl3Var.f.setOnClickListener(new i10(4, kl3Var, ol3Var));
                return be8Var;
            default:
                long jLongValue = ((Number) obj).longValue();
                ((Const) this.receiver).getClass();
                try {
                    Thread.sleep(jLongValue);
                    break;
                } catch (Exception unused) {
                }
                return be8Var;
        }
    }
}
