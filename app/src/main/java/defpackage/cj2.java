package defpackage;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$IncrementalBackup;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.k;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class cj2 extends cu3 implements mt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ cj2(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        int i2 = 1;
        FolderBackup$IncrementalBackup folderBackup$IncrementalBackup = null;
        Object next = null;
        be8 be8Var = be8.a;
        int i3 = 0;
        switch (i) {
            case 0:
                yj2 yj2Var = (yj2) obj;
                yj2Var.getClass();
                pj2 pj2Var = (pj2) this.receiver;
                pj2Var.getClass();
                List<wj2> list = yj2Var.b;
                int size = list.size();
                StringBuilder sb = new StringBuilder();
                sb.append(pj2Var.a.getString(R.string.cloud_backups));
                if (size > 0) {
                    sb.append(" (" + size + ")");
                }
                pj2Var.c.setText(sb.toString());
                xj2 xj2Var = yj2Var.a;
                xj2 xj2Var2 = xj2.Loading;
                CircularProgressIndicator circularProgressIndicator = pj2Var.h;
                if (xj2Var == xj2Var2) {
                    sz8.c0(circularProgressIndicator);
                    sz8.W(pj2Var.i);
                    pj2Var.g.a.setVisibility(8);
                } else {
                    sz8.W(circularProgressIndicator);
                    gm1 gm1Var = pj2Var.f;
                    ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
                    for (wj2 wj2Var : list) {
                        AppCloudBackup appCloudBackup = wj2Var.a;
                        String strH = Const.h(appCloudBackup.getDateBackup());
                        String backupTag = appCloudBackup.getBackupTag();
                        if (backupTag != null && backupTag.length() != 0) {
                            strH = dj7.k(strH, TokenAuthenticationScheme.SCHEME_DELIMITER, backupTag);
                        }
                        arrayList.add(new gk2(strH, wj2Var.q, wj2Var.s, appCloudBackup.getBackupId()));
                    }
                    gm1Var.b(arrayList, new jj2(i3, pj2Var, yj2Var), new lj2(i3, yj2Var, pj2Var), new y2(11, pj2Var, yj2Var));
                }
                return be8Var;
            case 1:
                xl3 xl3Var = (xl3) obj;
                xl3Var.getClass();
                ml3 ml3Var = (ml3) ((FolderDetailActivity) this.receiver).R.getValue();
                jl3 jl3Var = ml3Var.b;
                zx2 zx2Var = jl3Var.e;
                ConstraintLayout constraintLayout = jl3Var.k;
                CircularProgressIndicator circularProgressIndicator2 = jl3Var.n;
                if (xl3Var.equals(vl3.a)) {
                    circularProgressIndicator2.setVisibility(0);
                    constraintLayout.setVisibility(8);
                    zx2Var.a.setVisibility(8);
                } else if (xl3Var.equals(wl3.a)) {
                    circularProgressIndicator2.setVisibility(8);
                    constraintLayout.setVisibility(8);
                    zx2Var.a.setVisibility(0);
                    zx2Var.d.setImageResource(R.drawable.ic_no_backup);
                    zx2Var.e.setText(R.string.no_backup_on_device);
                    zx2Var.b.setVisibility(8);
                } else {
                    if (!(xl3Var instanceof ul3)) {
                        q.j();
                        return null;
                    }
                    circularProgressIndicator2.setVisibility(8);
                    constraintLayout.setVisibility(0);
                    zx2Var.a.setVisibility(8);
                    ul3 ul3Var = (ul3) xl3Var;
                    FolderDetailActivity folderDetailActivity = ml3Var.a;
                    ArrayList arrayListA = ul3Var.a.a();
                    if (arrayListA != null) {
                        Iterator it = arrayListA.iterator();
                        if (it.hasNext()) {
                            next = it.next();
                            if (it.hasNext()) {
                                long date = ((FolderBackup$IncrementalBackup) next).getDate();
                                do {
                                    Object next2 = it.next();
                                    long date2 = ((FolderBackup$IncrementalBackup) next2).getDate();
                                    if (date < date2) {
                                        next = next2;
                                        date = date2;
                                    }
                                } while (it.hasNext());
                            }
                        }
                        folderBackup$IncrementalBackup = (FolderBackup$IncrementalBackup) next;
                    }
                    jl3Var.p.setText(ul3Var.h);
                    lj3 lj3Var = jl3Var.c;
                    ((ImageView) lj3Var.b).setImageResource(R.drawable.ic_folder);
                    ((TextView) lj3Var.d).setText(folderDetailActivity.getString(R.string.base_backup));
                    ((TextView) lj3Var.c).setText(ul3Var.f);
                    ((MaterialCardView) lj3Var.a).setOnClickListener(new fj2(ml3Var, lj3Var, ul3Var));
                    lj3 lj3Var2 = jl3Var.d;
                    MaterialCardView materialCardView = (MaterialCardView) lj3Var2.a;
                    sz8.d0(materialCardView, ul3Var.d);
                    if (materialCardView.getVisibility() == 0) {
                        ((ImageView) lj3Var2.b).setImageResource(R.drawable.ic_stacks);
                        ((TextView) lj3Var2.d).setText(folderDetailActivity.getString(R.string.incremental_backups) + " (" + ul3Var.e + ")");
                        ((TextView) lj3Var2.c).setText(ul3Var.g);
                        materialCardView.setOnClickListener(new ce1(folderBackup$IncrementalBackup, ml3Var, lj3Var2));
                    }
                    jl3Var.b.setOnClickListener(new ll3(i3, ml3Var, ul3Var));
                    jl3Var.f.setOnClickListener(new qi(i2, ml3Var, ul3Var));
                }
                return be8Var;
            case 2:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                FolderPickerActivity folderPickerActivity = (FolderPickerActivity) this.receiver;
                int i4 = FolderPickerActivity.Q;
                sz8.d0((CircularProgressIndicator) folderPickerActivity.N().c.b, zBooleanValue);
                sz8.d0(folderPickerActivity.N().d, !zBooleanValue);
                return be8Var;
            case 3:
                ia5 ia5Var = (ia5) obj;
                ia5Var.getClass();
                ((ka5) this.receiver).getClass();
                String strReplace = ia5Var.c.replace('+', '-');
                strReplace.getClass();
                String strReplace2 = strReplace.replace('/', '_');
                strReplace2.getClass();
                byte[] bArrDecode = Base64.getUrlDecoder().decode(eq3.j(strReplace2, uq7.R((4 - (strReplace2.length() % 4)) % 4, "=")));
                bArrDecode.getClass();
                int i5 = 48;
                if (bArrDecode.length != 48) {
                    f6.g(fz5.j(bArrDecode.length, "Invalid MEGA hashcash token size: "));
                    return null;
                }
                final byte[] bArr = new byte[12582916];
                System.arraycopy(bArrDecode, 0, bArr, 4, 48);
                while (i5 < 12582912) {
                    int iMin = Math.min(i5, 12582912 - i5);
                    System.arraycopy(bArr, 4, bArr, i5 + 4, iMin);
                    i5 += iMin;
                }
                int i6 = ia5Var.a;
                if (i6 < 0 || i6 >= 256) {
                    f6.g(fz5.j(i6, "Invalid MEGA hashcash easiness: "));
                    return null;
                }
                final long j = ((long) (((i6 & 63) << 1) + 1)) << (((i6 >>> 6) * 7) + 3);
                int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
                if (iAvailableProcessors < 1) {
                    iAvailableProcessors = 1;
                }
                final int i7 = 2 > iAvailableProcessors ? iAvailableProcessors : 2;
                final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                final AtomicReference atomicReference = new AtomicReference();
                CountDownLatch countDownLatch = new CountDownLatch(i7);
                ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(i7);
                for (final int i8 = 0; i8 < i7; i8++) {
                    try {
                        final CountDownLatch countDownLatch2 = countDownLatch;
                        countDownLatch = countDownLatch2;
                        executorServiceNewFixedThreadPool.execute(new Runnable() { // from class: ha5
                            @Override // java.lang.Runnable
                            public final void run() {
                                byte[] bArr2 = bArr;
                                long j2 = j;
                                int i9 = i8;
                                int i10 = i7;
                                AtomicBoolean atomicBoolean2 = atomicBoolean;
                                AtomicReference atomicReference2 = atomicReference;
                                CountDownLatch countDownLatch3 = countDownLatch2;
                                try {
                                    String strB = ka5.b(bArr2, j2, i9, i10, atomicBoolean2);
                                    if (strB != null) {
                                        while (!atomicReference2.compareAndSet(null, strB)) {
                                            if (atomicReference2.get() != null) {
                                            }
                                        }
                                        atomicBoolean2.set(true);
                                    }
                                } finally {
                                    countDownLatch3.countDown();
                                }
                            }
                        });
                    } catch (Throwable th) {
                        executorServiceNewFixedThreadPool.shutdownNow();
                        throw th;
                    }
                }
                countDownLatch.await(150000L, TimeUnit.MILLISECONDS);
                atomicBoolean.set(true);
                String str = (String) atomicReference.get();
                if (str == null) {
                    str = "";
                }
                String str2 = str;
                executorServiceNewFixedThreadPool.shutdownNow();
                return str2;
            default:
                MultipleBackupStrategy multipleBackupStrategy = (MultipleBackupStrategy) obj;
                multipleBackupStrategy.getClass();
                ((k) this.receiver).j(multipleBackupStrategy);
                return be8Var;
        }
    }
}
