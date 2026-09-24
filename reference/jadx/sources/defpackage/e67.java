package defpackage;

import android.content.SharedPreferences;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e67 implements SharedPreferences.Editor {
    public final SharedPreferences.Editor a;
    public final /* synthetic */ f67 b;

    public e67(f67 f67Var) {
        this.b = f67Var;
        this.a = f67Var.a.edit();
    }

    @Override // android.content.SharedPreferences.Editor
    public final void apply() {
        this.a.apply();
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor clear() {
        this.a.clear();
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final boolean commit() {
        return this.a.commit();
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putBoolean(String str, boolean z) {
        this.a.putString(f67.d(str), f67.a(this.b, Boolean.toString(z)));
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putFloat(String str, float f) {
        this.a.putString(f67.d(str), f67.a(this.b, Float.toString(f)));
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putInt(String str, int i) {
        this.a.putString(f67.d(str), f67.a(this.b, Integer.toString(i)));
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putLong(String str, long j) {
        this.a.putString(f67.d(str), f67.a(this.b, Long.toString(j)));
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putString(String str, String str2) {
        this.a.putString(f67.d(str), f67.a(this.b, str2));
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putStringSet(String str, Set set) {
        HashSet hashSet = new HashSet(set.size());
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(f67.a(this.b, (String) it.next()));
        }
        this.a.putStringSet(f67.d(str), hashSet);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor remove(String str) {
        this.a.remove(f67.d(str));
        return this;
    }
}
