package defpackage;

import java.io.BufferedReader;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ez0 extends BufferedReader {
    @Override // java.io.BufferedReader
    public final String readLine() {
        StringBuilder sb = new StringBuilder();
        synchronized (((BufferedReader) this).lock) {
            boolean z = false;
            while (true) {
                try {
                    int i = read();
                    if (i == -1) {
                        String string = sb.toString();
                        if (string.isEmpty()) {
                            return null;
                        }
                        return string;
                    }
                    if (z && i == 10) {
                        return sb.substring(0, sb.length() - 1);
                    }
                    z = i == 13;
                    sb.append((char) i);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
