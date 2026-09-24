package defpackage;

import android.content.SharedPreferences;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gw2 implements SharedPreferences.Editor {
    public final kw2 a;
    public final SharedPreferences.Editor b;
    public final CopyOnWriteArrayList c = new CopyOnWriteArrayList();
    public final AtomicBoolean d = new AtomicBoolean(false);

    public gw2(kw2 kw2Var, SharedPreferences.Editor editor) {
        this.a = kw2Var;
        this.b = editor;
    }

    public final void a() {
        if (this.d.getAndSet(false)) {
            Set setKeySet = ((HashMap) this.a.getAll()).keySet();
            ArrayList arrayList = new ArrayList();
            for (Object obj : setKeySet) {
                if (!this.c.contains((String) obj)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : arrayList) {
                if (!kw2.d((String) obj2)) {
                    arrayList2.add(obj2);
                }
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                remove((String) it.next());
            }
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public final void apply() {
        a();
        this.b.apply();
        b();
        this.c.clear();
    }

    public final void b() {
        kw2 kw2Var = this.a;
        for (SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener : kw2Var.d) {
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                onSharedPreferenceChangeListener.onSharedPreferenceChanged(kw2Var, (String) it.next());
            }
        }
    }

    public final void c(String str, byte[] bArr) {
        kw2 kw2Var = this.a;
        kw2.e(str);
        this.c.add(str);
        try {
            pw5 pw5VarA = kw2.a(kw2Var, str, bArr);
            this.b.putString((String) pw5VarA.a, (String) pw5VarA.b);
        } catch (GeneralSecurityException e) {
            throw new SecurityException("Could not encrypt data.", e);
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor clear() {
        this.d.set(true);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final boolean commit() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.c;
        a();
        try {
            boolean zCommit = this.b.commit();
            if (zCommit) {
                b();
            }
            return zCommit;
        } finally {
            copyOnWriteArrayList.clear();
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putBoolean(String str, boolean z) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(5);
        byteBufferAllocate.putInt(iw2.BOOLEAN.getId());
        byteBufferAllocate.put(z ? (byte) 1 : (byte) 0);
        byte[] bArrArray = byteBufferAllocate.array();
        bArrArray.getClass();
        c(str, bArrArray);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putFloat(String str, float f) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.putInt(iw2.FLOAT.getId());
        byteBufferAllocate.putFloat(f);
        byte[] bArrArray = byteBufferAllocate.array();
        bArrArray.getClass();
        c(str, bArrArray);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putInt(String str, int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.putInt(iw2.INT.getId());
        byteBufferAllocate.putInt(i);
        byte[] bArrArray = byteBufferAllocate.array();
        bArrArray.getClass();
        c(str, bArrArray);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putLong(String str, long j) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(12);
        byteBufferAllocate.putInt(iw2.LONG.getId());
        byteBufferAllocate.putLong(j);
        byte[] bArrArray = byteBufferAllocate.array();
        bArrArray.getClass();
        c(str, bArrArray);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putString(String str, String str2) {
        if (str2 == null) {
            str2 = "__NULL__";
        }
        Charset charset = kw2.e;
        charset.getClass();
        byte[] bytes = str2.getBytes(charset);
        bytes.getClass();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + 8);
        byteBufferAllocate.putInt(iw2.STRING.getId());
        byteBufferAllocate.putInt(bytes.length);
        byteBufferAllocate.put(bytes);
        byte[] bArrArray = byteBufferAllocate.array();
        bArrArray.getClass();
        c(str, bArrArray);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putStringSet(String str, Set set) {
        if (set == null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(x65.q0(1));
            x50.w0(new String[]{"__NULL__"}, linkedHashSet);
            set = linkedHashSet;
        }
        ArrayList<byte[]> arrayList = new ArrayList(hl1.G0(set, 10));
        for (String str2 : set) {
            Charset charset = kw2.e;
            charset.getClass();
            byte[] bytes = str2.getBytes(charset);
            bytes.getClass();
            arrayList.add(bytes);
        }
        Iterator it = arrayList.iterator();
        int length = 0;
        while (it.hasNext()) {
            length += ((byte[]) it.next()).length + 4;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4 + length);
        byteBufferAllocate.putInt(iw2.STRING_SET.getId());
        for (byte[] bArr : arrayList) {
            byteBufferAllocate.putInt(bArr.length);
            byteBufferAllocate.put(bArr);
        }
        byte[] bArrArray = byteBufferAllocate.array();
        bArrArray.getClass();
        c(str, bArrArray);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor remove(String str) {
        kw2.e(str);
        this.b.remove(this.a.b(str));
        this.c.add(str);
        return this;
    }
}
