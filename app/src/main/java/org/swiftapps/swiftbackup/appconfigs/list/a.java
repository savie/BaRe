package org.swiftapps.swiftbackup.appconfigs.list;

import android.content.SharedPreferences;
import defpackage.ai8;
import defpackage.cl7;
import defpackage.cz4;
import defpackage.el1;
import defpackage.ex6;
import defpackage.fm7;
import defpackage.jc1;
import defpackage.jx2;
import defpackage.ly8;
import defpackage.ov2;
import defpackage.pe4;
import defpackage.pw5;
import defpackage.q;
import defpackage.qo0;
import defpackage.u95;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends qo0 {
    public boolean e;
    public ConfigsData f;
    public final ex6 g = new ex6();
    public final u95 h = new u95();

    /* JADX INFO: renamed from: org.swiftapps.swiftbackup.appconfigs.list.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum EnumC0012a {
        Asc(R.string.ascending),
        Desc(R.string.descending);

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
        private final int stringRes;

        EnumC0012a(int i) {
            this.stringRes = i;
        }

        public static jx2 getEntries() {
            return $ENTRIES;
        }

        public final String displayString() {
            SwiftApp.Companion companion = SwiftApp.d;
            String string = SwiftApp.Companion.c().getString(this.stringRes);
            string.getClass();
            return string;
        }

        public final int getStringRes() {
            return this.stringRes;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum b {
        Name(R.string.name),
        LastUpdated(R.string.last_updated);

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
        private final int stringRes;

        b(int i) {
            this.stringRes = i;
        }

        public static jx2 getEntries() {
            return $ENTRIES;
        }

        public final String displayString() {
            SwiftApp.Companion companion = SwiftApp.d;
            String string = SwiftApp.Companion.c().getString(this.stringRes);
            string.getClass();
            return string;
        }

        public final int getStringRes() {
            return this.stringRes;
        }
    }

    public static pw5 j() {
        String string = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("configs_list_sort_options", null);
            if (string == null) {
                string = b.Name + ":" + EnumC0012a.Asc;
            }
            return new pw5(b.valueOf(ai8.g(string, ":")), EnumC0012a.valueOf(ai8.d(string, ":")));
        } catch (ClassCastException unused) {
        }
    }

    public final void k(b bVar, EnumC0012a enumC0012a) {
        bVar.getClass();
        enumC0012a.getClass();
        String str = bVar + ":" + enumC0012a;
        SharedPreferences.Editor editor = cz4.k;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.putString("configs_list_sort_options", str).apply();
        l(this.f);
    }

    public final void l(ConfigsData configsData) {
        Comparator cl7Var;
        this.f = configsData;
        b bVar = (b) j().a;
        EnumC0012a enumC0012a = (EnumC0012a) j().b;
        int i = org.swiftapps.swiftbackup.appconfigs.list.b.a[bVar.ordinal()];
        int i2 = 1;
        if (i == 1) {
            String.CASE_INSENSITIVE_ORDER.getClass();
            cl7Var = new cl7(4);
        } else {
            if (i != 2) {
                q.j();
                return;
            }
            cl7Var = new jc1(i2);
        }
        Collection<Config> values = configsData != null ? configsData.getValues() : null;
        if (values == null) {
            values = ov2.a;
        }
        List listN1 = el1.n1(values, cl7Var);
        if (enumC0012a == EnumC0012a.Desc) {
            listN1 = el1.j1(listN1);
        }
        this.h.k(new fm7(listN1, (Set) null, false, (String) null, 30));
    }
}
