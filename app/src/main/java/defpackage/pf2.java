package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pf2 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ pf2(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
        this.e = obj4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.Closeable] */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        BufferedWriter bufferedWriter;
        Exception e;
        int i = this.a;
        ?? r1 = 0;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        Object obj4 = this.b;
        switch (i) {
            case 0:
                final sf2 sf2Var = (sf2) obj4;
                final oe0 oe0Var = (oe0) obj3;
                String str = oe0Var.a;
                za8 za8Var = (za8) obj2;
                kd0 kd0Var = (kd0) obj;
                sf2Var.getClass();
                Logger logger = sf2.f;
                try {
                    ua8 ua8VarA = sf2Var.c.a(str);
                    if (ua8VarA == null) {
                        String str2 = "Transport backend '" + str + "' is not registered";
                        logger.warning(str2);
                        za8Var.b(new IllegalArgumentException(str2));
                    } else {
                        final kd0 kd0VarA = ((d31) ua8VarA).a(kd0Var);
                        sf2Var.e.m(new dv7() { // from class: qf2
                            @Override // defpackage.dv7
                            public final Object g() {
                                sf2 sf2Var2 = sf2Var;
                                final mw6 mw6Var = sf2Var2.d;
                                mw6Var.getClass();
                                final oe0 oe0Var2 = oe0Var;
                                d66 d66Var = oe0Var2.c;
                                final kd0 kd0Var2 = kd0VarA;
                                String str3 = kd0Var2.a;
                                String str4 = oe0Var2.a;
                                String strConcat = "TRuntime.".concat("SQLiteEventStore");
                                if (Log.isLoggable(strConcat, 3)) {
                                    Log.d(strConcat, "Storing event with priority=" + d66Var + ", name=" + str3 + " for destination " + str4);
                                }
                                ((Long) mw6Var.g(new kw6() { // from class: hw6
                                    @Override // defpackage.kw6
                                    public final Object apply(Object obj5) {
                                        long jInsert;
                                        kd0 kd0Var3 = kd0Var2;
                                        xv2 xv2Var = kd0Var3.c;
                                        String str5 = kd0Var3.a;
                                        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj5;
                                        mw6 mw6Var2 = mw6Var;
                                        long jSimpleQueryForLong = mw6Var2.a().compileStatement("PRAGMA page_size").simpleQueryForLong() * mw6Var2.a().compileStatement("PRAGMA page_count").simpleQueryForLong();
                                        ld0 ld0Var = mw6Var2.d;
                                        if (jSimpleQueryForLong >= ld0Var.a) {
                                            mw6Var2.j(1L, c15.CACHE_FULL, str5);
                                            return -1L;
                                        }
                                        oe0 oe0Var3 = oe0Var2;
                                        Long lB = mw6.b(sQLiteDatabase, oe0Var3);
                                        if (lB != null) {
                                            jInsert = lB.longValue();
                                        } else {
                                            ContentValues contentValues = new ContentValues();
                                            contentValues.put("backend_name", oe0Var3.a);
                                            contentValues.put("priority", Integer.valueOf(h66.a(oe0Var3.c)));
                                            contentValues.put("next_request_ms", (Integer) 0);
                                            byte[] bArr = oe0Var3.b;
                                            if (bArr != null) {
                                                contentValues.put("extras", Base64.encodeToString(bArr, 0));
                                            }
                                            jInsert = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                                        }
                                        int i2 = ld0Var.e;
                                        byte[] bArr2 = xv2Var.b;
                                        boolean z = bArr2.length <= i2;
                                        ContentValues contentValues2 = new ContentValues();
                                        contentValues2.put("context_id", Long.valueOf(jInsert));
                                        contentValues2.put("transport_name", str5);
                                        contentValues2.put("timestamp_ms", Long.valueOf(kd0Var3.d));
                                        contentValues2.put("uptime_ms", Long.valueOf(kd0Var3.e));
                                        contentValues2.put("payload_encoding", xv2Var.a.a);
                                        contentValues2.put("code", kd0Var3.b);
                                        contentValues2.put("num_attempts", (Integer) 0);
                                        contentValues2.put("inline", Boolean.valueOf(z));
                                        contentValues2.put("payload", z ? bArr2 : new byte[0]);
                                        contentValues2.put("product_id", kd0Var3.g);
                                        contentValues2.put("pseudonymous_id", kd0Var3.h);
                                        contentValues2.put("experiment_ids_clear_blob", kd0Var3.i);
                                        contentValues2.put("experiment_ids_encrypted_blob", kd0Var3.j);
                                        long jInsert2 = sQLiteDatabase.insert("events", null, contentValues2);
                                        if (!z) {
                                            int iCeil = (int) Math.ceil(((double) bArr2.length) / ((double) i2));
                                            for (int i3 = 1; i3 <= iCeil; i3++) {
                                                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, (i3 - 1) * i2, Math.min(i3 * i2, bArr2.length));
                                                ContentValues contentValues3 = new ContentValues();
                                                contentValues3.put("event_id", Long.valueOf(jInsert2));
                                                contentValues3.put("sequence_num", Integer.valueOf(i3));
                                                contentValues3.put("bytes", bArrCopyOfRange);
                                                sQLiteDatabase.insert("event_payloads", null, contentValues3);
                                            }
                                        }
                                        for (Map.Entry entry : Collections.unmodifiableMap(kd0Var3.f).entrySet()) {
                                            ContentValues contentValues4 = new ContentValues();
                                            contentValues4.put("event_id", Long.valueOf(jInsert2));
                                            contentValues4.put("name", (String) entry.getKey());
                                            contentValues4.put("value", (String) entry.getValue());
                                            sQLiteDatabase.insert("event_metadata", null, contentValues4);
                                        }
                                        return Long.valueOf(jInsert2);
                                    }
                                })).getClass();
                                sf2Var2.a.d(oe0Var2, 1, false);
                                return null;
                            }
                        });
                        za8Var.b(null);
                    }
                    return;
                } catch (Exception e2) {
                    logger.warning("Error scheduling event " + e2.getMessage());
                    za8Var.b(e2);
                    return;
                }
            default:
                i75 i75Var = (i75) obj4;
                String str3 = (String) obj3;
                Map map = (Map) obj2;
                List list = (List) obj;
                lf5 lf5Var = (lf5) i75Var.a;
                AtomicMarkableReference atomicMarkableReference = (AtomicMarkableReference) i75Var.k;
                if (((String) atomicMarkableReference.getReference()) != null) {
                    lf5Var.i(str3, (String) atomicMarkableReference.getReference());
                }
                if (!map.isEmpty()) {
                    lf5Var.h(str3, map, false);
                }
                if (list.isEmpty()) {
                    return;
                }
                File fileG = lf5Var.a.g(str3, "rollouts-state");
                ?? IsEmpty = list.isEmpty();
                try {
                    if (IsEmpty != 0) {
                        lf5.g(fileG, "Rollout state is empty for session: " + str3);
                        return;
                    }
                    try {
                        String strE = lf5.e(list);
                        bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileG), lf5.b));
                        try {
                            bufferedWriter.write(strE);
                            bufferedWriter.flush();
                            IsEmpty = bufferedWriter;
                        } catch (Exception e3) {
                            e = e3;
                            Log.w("FirebaseCrashlytics", "Error serializing rollouts state.", e);
                            lf5.f(fileG);
                            IsEmpty = bufferedWriter;
                        }
                        break;
                    } catch (Exception e4) {
                        bufferedWriter = null;
                        e = e4;
                    } catch (Throwable th) {
                        th = th;
                    }
                    jm1.h(IsEmpty, "Failed to close rollouts state file.");
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    r1 = IsEmpty;
                }
                jm1.h(r1, "Failed to close rollouts state file.");
                throw th;
        }
    }
}
