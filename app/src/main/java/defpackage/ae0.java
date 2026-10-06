package defpackage;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.BufferedReader;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ae0 {
    public final long a;

    public ae0(long j) {
        this.a = j;
    }

    public static ae0 a(BufferedReader bufferedReader) throws IOException {
        JsonReader jsonReader = new JsonReader(bufferedReader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    if (jsonReader.peek() == JsonToken.STRING) {
                        ae0 ae0Var = new ae0(Long.parseLong(jsonReader.nextString()));
                        jsonReader.close();
                        return ae0Var;
                    }
                    ae0 ae0Var2 = new ae0(jsonReader.nextLong());
                    jsonReader.close();
                    return ae0Var2;
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } catch (Throwable th) {
            jsonReader.close();
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ae0) && this.a == ((ae0) obj).a;
    }

    public final int hashCode() {
        long j = this.a;
        return ((int) ((j >>> 32) ^ j)) ^ 1000003;
    }

    public final String toString() {
        return dj7.h(this.a, "}", new StringBuilder("LogResponse{nextRequestWaitMillis="));
    }
}
