package defpackage;

import android.database.Cursor;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jw6 implements kw6, pd7 {
    public final /* synthetic */ Object a;
    public final /* synthetic */ Serializable b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jw6(Object obj, Serializable serializable, Object obj2) {
        this.a = obj;
        this.b = serializable;
        this.c = obj2;
    }

    @Override // defpackage.pd7
    public void a(OutputStream outputStream, InputStream inputStream, InputStream inputStream2) throws IOException {
        File file = (File) this.a;
        String str = (String) this.b;
        kr7 kr7Var = (kr7) this.c;
        StringBuilder sb = new StringBuilder("cat ");
        sb.append(file);
        sb.append(str);
        outputStream.write(dj7.n(sb, kr7Var.a, " 2>/dev/null &").getBytes(StandardCharsets.UTF_8));
        outputStream.write(10);
        outputStream.flush();
        outputStream.write(ce7.a);
        outputStream.flush();
        inputStream.read(wx3.b);
    }

    @Override // defpackage.kw6
    public Object apply(Object obj) {
        mw6 mw6Var;
        mw6 mw6Var2 = (mw6) this.a;
        ArrayList arrayList = (ArrayList) this.b;
        oe0 oe0Var = (oe0) this.c;
        Cursor cursor = (Cursor) obj;
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            boolean z = cursor.getInt(7) != 0;
            jd0 jd0Var = new jd0();
            jd0Var.n = new HashMap();
            String string = cursor.getString(1);
            if (string == null) {
                f6.n("Null transportName");
                break;
            }
            jd0Var.a = string;
            jd0Var.f = Long.valueOf(cursor.getLong(2));
            jd0Var.k = Long.valueOf(cursor.getLong(3));
            if (z) {
                String string2 = cursor.getString(4);
                jd0Var.e = new xv2(string2 == null ? mw6.f : new dw2(string2), cursor.getBlob(5));
                mw6Var = mw6Var2;
            } else {
                String string3 = cursor.getString(4);
                dw2 dw2Var = string3 == null ? mw6.f : new dw2(string3);
                Cursor cursorQuery = mw6Var2.a().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num");
                try {
                    ArrayList arrayList2 = new ArrayList();
                    int length = 0;
                    while (cursorQuery.moveToNext()) {
                        byte[] blob = cursorQuery.getBlob(0);
                        arrayList2.add(blob);
                        length += blob.length;
                    }
                    byte[] bArr = new byte[length];
                    int i = 0;
                    int length2 = 0;
                    while (i < arrayList2.size()) {
                        byte[] bArr2 = (byte[]) arrayList2.get(i);
                        mw6 mw6Var3 = mw6Var2;
                        System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
                        length2 += bArr2.length;
                        i++;
                        mw6Var2 = mw6Var3;
                    }
                    mw6Var = mw6Var2;
                    cursorQuery.close();
                    jd0Var.e = new xv2(dw2Var, bArr);
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }
            if (!cursor.isNull(6)) {
                jd0Var.c = Integer.valueOf(cursor.getInt(6));
            }
            if (!cursor.isNull(8)) {
                jd0Var.d = Integer.valueOf(cursor.getInt(8));
            }
            if (!cursor.isNull(9)) {
                jd0Var.b = cursor.getString(9);
            }
            if (!cursor.isNull(10)) {
                jd0Var.p = cursor.getBlob(10);
            }
            if (!cursor.isNull(11)) {
                jd0Var.q = cursor.getBlob(11);
            }
            arrayList.add(new ce0(j, oe0Var, jd0Var.b()));
            mw6Var2 = mw6Var;
        }
        return null;
    }
}
