package defpackage;

import android.content.Intent;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.io.File;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class x11 extends cu3 implements mt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x11(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                return Integer.valueOf(z11.p((z11) this.receiver, ((Number) obj).intValue()));
            case 1:
                ((p63) this.receiver).b((File) obj);
                return be8Var;
            case 2:
                hk6 hk6Var = (hk6) obj;
                hk6Var.getClass();
                final kp3 kp3Var = (kp3) this.receiver;
                Log.d(kp3Var.a, "onViewStatusUpdate: " + hk6Var);
                final int i2 = 0;
                final int i3 = 1;
                boolean z = hk6Var == hk6.Loading;
                int i4 = 2;
                if (z != kp3Var.l().c) {
                    if (z) {
                        kp3Var.l().setRefreshing(true);
                    } else {
                        kp3Var.l().postDelayed(new w7(kp3Var, i4), 1500L);
                    }
                }
                RecyclerView recyclerViewK = kp3Var.k();
                hk6 hk6Var2 = hk6.Success;
                sz8.d0(recyclerViewK, hk6Var == hk6Var2);
                sz8.d0(kp3Var.j().a, hk6Var.isEmpty() || hk6Var.isError());
                kp3Var.j().c.setVisibility(8);
                jk8 jk8Var = kp3Var.b;
                jk8Var.getClass();
                sz8.d0(((lp3) jk8Var).b, hk6Var == hk6Var2);
                int i5 = hp3.a[hk6Var.ordinal()];
                if (i5 == 1) {
                    zx2 zx2VarJ = kp3Var.j();
                    MaterialButton materialButton = zx2VarJ.b;
                    TextView textView = zx2VarJ.e;
                    to3 to3Var = kp3Var.d;
                    if (to3Var == null) {
                        pe4.F("section");
                        throw null;
                    }
                    boolean zIsCloudSection = to3Var.isCloudSection();
                    ImageView imageView = zx2VarJ.d;
                    if (zIsCloudSection) {
                        imageView.setImageResource(R.drawable.ic_cloud_off);
                        textView.setText(R.string.no_backup_in_cloud);
                        materialButton.setVisibility(8);
                    } else {
                        imageView.setImageResource(R.drawable.ic_folder);
                        textView.setText(R.string.create_your_first_folder_msg);
                        materialButton.setVisibility(0);
                        materialButton.setText(R.string.new_folder_setup);
                        materialButton.setOnClickListener(new View.OnClickListener() { // from class: dp3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i6 = i3;
                                kp3 kp3Var2 = kp3Var;
                                switch (i6) {
                                    case 0:
                                        sa1.R(kp3Var2.i(), null, new ak(kp3Var2, 19), 1);
                                        break;
                                    default:
                                        FoldersDashActivity foldersDashActivityI = kp3Var2.i();
                                        foldersDashActivityI.startActivityForResult(new Intent(foldersDashActivityI, (Class<?>) FolderEditActivity.class), 4987);
                                        break;
                                }
                            }
                        });
                        MaterialButton materialButton2 = zx2VarJ.c;
                        materialButton2.setVisibility(0);
                        materialButton2.setText(R.string.copy_folder_setups_from_cloud);
                        materialButton2.setOnClickListener(new View.OnClickListener() { // from class: ep3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i6 = i3;
                                kp3 kp3Var2 = kp3Var;
                                switch (i6) {
                                    case 0:
                                        sa1.R(kp3Var2.i(), null, new bk(kp3Var2, 23), 1);
                                        break;
                                    default:
                                        FoldersDashActivity foldersDashActivityI = kp3Var2.i();
                                        sa1.R(foldersDashActivityI, null, new kn3(foldersDashActivityI, 1), 1);
                                        break;
                                }
                            }
                        });
                    }
                } else if (i5 == 2) {
                    zx2 zx2VarJ2 = kp3Var.j();
                    zx2VarJ2.d.setImageResource(R.drawable.ic_cloud_off);
                    zx2VarJ2.e.setText(R.string.cloud_not_connected_summary);
                    MaterialButton materialButton3 = zx2VarJ2.b;
                    materialButton3.setVisibility(0);
                    materialButton3.setText(R.string.connect_cloud_account);
                    materialButton3.setOnClickListener(new hs(kp3Var, 6));
                } else if (i5 == 3) {
                    zx2 zx2VarJ3 = kp3Var.j();
                    zx2VarJ3.d.setImageResource(R.drawable.ic_cloud_off);
                    zx2VarJ3.e.setText(R.string.unknown_error_occured);
                    MaterialButton materialButton4 = zx2VarJ3.b;
                    materialButton4.setVisibility(0);
                    materialButton4.setText(R.string.retry);
                    materialButton4.setOnClickListener(new View.OnClickListener() { // from class: dp3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i6 = i2;
                            kp3 kp3Var2 = kp3Var;
                            switch (i6) {
                                case 0:
                                    sa1.R(kp3Var2.i(), null, new ak(kp3Var2, 19), 1);
                                    break;
                                default:
                                    FoldersDashActivity foldersDashActivityI = kp3Var2.i();
                                    foldersDashActivityI.startActivityForResult(new Intent(foldersDashActivityI, (Class<?>) FolderEditActivity.class), 4987);
                                    break;
                            }
                        }
                    });
                } else if (i5 == 4) {
                    zx2 zx2VarJ4 = kp3Var.j();
                    zx2VarJ4.d.setImageResource(R.drawable.ic_cloud_off);
                    zx2VarJ4.e.setText(R.string.no_internet_connection_summary);
                    MaterialButton materialButton5 = zx2VarJ4.b;
                    materialButton5.setVisibility(0);
                    materialButton5.setText(R.string.retry);
                    materialButton5.setOnClickListener(new View.OnClickListener() { // from class: ep3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i6 = i2;
                            kp3 kp3Var2 = kp3Var;
                            switch (i6) {
                                case 0:
                                    sa1.R(kp3Var2.i(), null, new bk(kp3Var2, 23), 1);
                                    break;
                                default:
                                    FoldersDashActivity foldersDashActivityI = kp3Var2.i();
                                    sa1.R(foldersDashActivityI, null, new kn3(foldersDashActivityI, 1), 1);
                                    break;
                            }
                        }
                    });
                }
                return be8Var;
            default:
                bt3 bt3Var = (bt3) obj;
                bt3Var.getClass();
                ((zn4) this.receiver).getClass();
                zn4.e(bt3Var);
                return be8Var;
        }
    }
}
