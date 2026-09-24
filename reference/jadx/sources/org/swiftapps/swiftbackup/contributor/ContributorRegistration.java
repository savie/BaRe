package org.swiftapps.swiftbackup.contributor;

import defpackage.d76;
import defpackage.dj7;
import defpackage.hl1;
import defpackage.io4;
import defpackage.jx2;
import defpackage.jz2;
import defpackage.ly8;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.q;
import defpackage.xs1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ContributorRegistration {
    private final String _locales;
    private final String _name;
    private final String _status;
    private final a _type;
    private final String idCrowdin;
    private final String idPaypal;
    private final String idTelegram;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum a {
        Translator,
        CommunityHelper;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }

        public final String toDisplayString() {
            int i = b.a[ordinal()];
            if (i == 1) {
                return "Translator";
            }
            if (i == 2) {
                return "Community Helper";
            }
            q.j();
            return null;
        }
    }

    public /* synthetic */ ContributorRegistration(String str, a aVar, String str2, String str3, String str4, String str5, String str6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : aVar, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : str6);
    }

    public static /* synthetic */ ContributorRegistration copy$default(ContributorRegistration contributorRegistration, String str, a aVar, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = contributorRegistration._status;
        }
        if ((i & 2) != 0) {
            aVar = contributorRegistration._type;
        }
        if ((i & 4) != 0) {
            str2 = contributorRegistration._name;
        }
        if ((i & 8) != 0) {
            str3 = contributorRegistration._locales;
        }
        if ((i & 16) != 0) {
            str4 = contributorRegistration.idTelegram;
        }
        if ((i & 32) != 0) {
            str5 = contributorRegistration.idCrowdin;
        }
        if ((i & 64) != 0) {
            str6 = contributorRegistration.idPaypal;
        }
        String str7 = str5;
        String str8 = str6;
        String str9 = str4;
        String str10 = str2;
        return contributorRegistration.copy(str, aVar, str10, str3, str9, str7, str8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Locale getLocales$lambda$1$0(String str) {
        List listX0 = nq7.x0(str, new String[]{"_"}, 6);
        return Locale.forLanguageTag(listX0.get(0) + "-" + listX0.get(1));
    }

    @jz2
    private final boolean isCrowdinValid() {
        String str = this.idCrowdin;
        return !(str == null || str.length() == 0);
    }

    @jz2
    private final boolean isTelegramValid() {
        String str = this.idTelegram;
        return !(str == null || str.length() == 0);
    }

    public final String component1() {
        return this._status;
    }

    public final a component2() {
        return this._type;
    }

    public final String component3() {
        return this._name;
    }

    public final String component4() {
        return this._locales;
    }

    public final String component5() {
        return this.idTelegram;
    }

    public final String component6() {
        return this.idCrowdin;
    }

    public final String component7() {
        return this.idPaypal;
    }

    public final ContributorRegistration copy(String str, a aVar, String str2, String str3, String str4, String str5, String str6) {
        return new ContributorRegistration(str, aVar, str2, str3, str4, str5, str6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContributorRegistration)) {
            return false;
        }
        ContributorRegistration contributorRegistration = (ContributorRegistration) obj;
        return pe4.d(this._status, contributorRegistration._status) && this._type == contributorRegistration._type && pe4.d(this._name, contributorRegistration._name) && pe4.d(this._locales, contributorRegistration._locales) && pe4.d(this.idTelegram, contributorRegistration.idTelegram) && pe4.d(this.idCrowdin, contributorRegistration.idCrowdin) && pe4.d(this.idPaypal, contributorRegistration.idPaypal);
    }

    public final String getIdCrowdin() {
        return this.idCrowdin;
    }

    public final String getIdPaypal() {
        return this.idPaypal;
    }

    public final String getIdTelegram() {
        return this.idTelegram;
    }

    @jz2
    public final List<Locale> getLocales() {
        String str = this._locales;
        if (str == null) {
            return null;
        }
        List listX0 = nq7.x0(str, new String[]{","}, 6);
        ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
        Iterator it = listX0.iterator();
        while (it.hasNext()) {
            arrayList.add(nq7.H0((String) it.next()).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Locale locale = (Locale) io4.j("TranslatorDetails", null, true, new d76((String) it2.next(), 18), 10);
            if (locale != null) {
                arrayList2.add(locale);
            }
        }
        return arrayList2;
    }

    @jz2
    public final a getType() {
        a aVar = this._type;
        return aVar == null ? a.CommunityHelper : aVar;
    }

    public final String get_locales() {
        return this._locales;
    }

    public final String get_name() {
        return this._name;
    }

    public final String get_status() {
        return this._status;
    }

    public final a get_type() {
        return this._type;
    }

    public int hashCode() {
        String str = this._status;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        a aVar = this._type;
        int iHashCode2 = (iHashCode + (aVar == null ? 0 : aVar.hashCode())) * 31;
        String str2 = this._name;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this._locales;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.idTelegram;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.idCrowdin;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.idPaypal;
        return iHashCode6 + (str6 != null ? str6.hashCode() : 0);
    }

    @jz2
    public final boolean isNameValid() {
        String str = this._name;
        return (str == null || str.length() == 0 || nq7.j0(this._name)) ? false : true;
    }

    @jz2
    public final boolean isTranslator() {
        return getType() == a.Translator;
    }

    @jz2
    public final boolean isValid() {
        int i = c.a[getType().ordinal()];
        if (i == 1) {
            return isNameValid() && isTelegramValid() && isCrowdinValid();
        }
        if (i == 2) {
            return isNameValid() && isTelegramValid();
        }
        q.j();
        return false;
    }

    public String toString() {
        String str = this._status;
        a aVar = this._type;
        String str2 = this._name;
        String str3 = this._locales;
        String str4 = this.idTelegram;
        String str5 = this.idCrowdin;
        String str6 = this.idPaypal;
        StringBuilder sb = new StringBuilder("ContributorRegistration(_status=");
        sb.append(str);
        sb.append(", _type=");
        sb.append(aVar);
        sb.append(", _name=");
        xs1.t(sb, str2, ", _locales=", str3, ", idTelegram=");
        xs1.t(sb, str4, ", idCrowdin=", str5, ", idPaypal=");
        return dj7.n(sb, str6, ")");
    }

    public ContributorRegistration(String str, a aVar, String str2, String str3, String str4, String str5, String str6) {
        this._status = str;
        this._type = aVar;
        this._name = str2;
        this._locales = str3;
        this.idTelegram = str4;
        this.idCrowdin = str5;
        this.idPaypal = str6;
    }

    public ContributorRegistration() {
        this(null, null, null, null, null, null, null, 127, null);
    }
}
