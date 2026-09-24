package defpackage;

import com.android.billingclient.api.Purchase;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lq0 implements pd7 {
    public final /* synthetic */ Serializable a;
    public final /* synthetic */ Object b;

    public /* synthetic */ lq0(kr7 kr7Var, File file) {
        this.a = kr7Var;
        this.b = file;
    }

    @Override // defpackage.pd7
    public void a(OutputStream outputStream, InputStream inputStream, InputStream inputStream2) throws IOException {
        kr7 kr7Var = (kr7) this.a;
        outputStream.write(("cat " + kr7Var.a + " > " + ((File) this.b) + " 2>/dev/null &").getBytes(StandardCharsets.UTF_8));
        outputStream.write(10);
        outputStream.flush();
        outputStream.write(ce7.a);
        outputStream.flush();
        inputStream.read(wx3.b);
    }

    public void b(yq0 yq0Var, List list) {
        ArrayList arrayList = (ArrayList) this.a;
        CountDownLatch countDownLatch = (CountDownLatch) this.b;
        yq0Var.getClass();
        list.getClass();
        if (yq0Var.a == 0) {
            wb6.a aVar = wb6.Companion;
            ArrayList arrayList2 = new ArrayList(hl1.G0(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(aVar.from((Purchase) it.next()));
            }
            if (!arrayList2.isEmpty()) {
                arrayList.addAll(arrayList2);
            }
        }
        countDownLatch.countDown();
    }

    public /* synthetic */ lq0(String str, ArrayList arrayList, CountDownLatch countDownLatch) {
        this.a = arrayList;
        this.b = countDownLatch;
    }
}
