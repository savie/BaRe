package defpackage;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ip7 implements Callable {
    public final InputStream a;
    public final List b;

    public ip7(InputStream inputStream, List list) {
        this.a = inputStream;
        this.b = list;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    public final String a(boolean z) throws IOException {
        boolean z2;
        List list;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.a, StandardCharsets.UTF_8));
        do {
            String line = bufferedReader.readLine();
            z2 = false;
            if (line != null) {
                int length = line.length();
                int i = length - 36;
                boolean zStartsWith = line.startsWith(gy7.c, i);
                if (!zStartsWith) {
                    list = this.b;
                    if (list != null) {
                        list.add(line);
                    }
                    z2 = !zStartsWith;
                } else if (length != 36) {
                    line = line.substring(0, i);
                    list = this.b;
                    if (list != null) {
                        list.add(line);
                    }
                    z2 = !zStartsWith;
                }
            }
        } while (z2);
        if (z) {
            return bufferedReader.readLine();
        }
        return null;
    }
}
