package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oq8 {
    public static final oq8 i;
    public static final oq8 j;
    public static final oq8 k;
    public static final List l;
    public static final ArrayList m;
    public final String a;
    public final String b;
    public final int c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final List h;

    static {
        oq8 oq8Var = new oq8("any_webdav_server", "Any WebDAV server", R.drawable.ic_webdav_server, "https://www.rfc-editor.org/rfc/rfc4918", null, null, null, 240);
        i = oq8Var;
        oq8 oq8Var2 = new oq8("nextcloud", "Nextcloud", R.drawable.ic_branding_nextcloud, "https://docs.nextcloud.com/server/latest/user_manual/en/files/access_webdav.html", null, "remote.php/dav/files/<username>", null, 176);
        j = oq8Var2;
        oq8 oq8Var3 = new oq8("owncloud", "ownCloud", R.drawable.ic_branding_owncloud, "https://doc.owncloud.com/server/next/classic_ui/files/access_webdav.html", null, "remote.php/dav/files/<username>", null, 176);
        k = oq8Var3;
        List listA0 = fl1.A0(oq8Var2, oq8Var3, new oq8("synology_nas", "Synology", R.drawable.ic_branding_synology, "https://www.synology.com/dsm/packages/WebDAVServer", null, null, null, 240), new oq8("wd_my_cloud", "WD My Cloud", R.drawable.ic_branding_wd_my_cloud, "https://support-en.wd.com/app/answers/detail/a_id/13537", null, null, null, 240), new oq8("koofr", "Koofr", R.drawable.ic_branding_koofr, "https://koofr.eu/help/koofr_with_webdav/how-to-mount-koofr-webdav-share-on-linux-without-GUI/", "app.koofr.net", null, nc8.I(new ai6("app\\.koofr\\.net")), 64), new oq8("seafile", "Seafile", R.drawable.ic_branding_seafile, "https://manual.seafile.com/latest/extension/webdav/", null, "seafdav/", null, 176), new oq8("hidrive", "HiDrive", R.drawable.ic_branding_hidrive, "https://www.strato.de/faq/cloud-speicher/ueber-welche-protokolle-kann-ich-mich-mit-hidrive-verbinden/", "webdav.hidrive.strato.com", null, fl1.A0(new ai6("webdav\\.hidrive\\.strato\\.com"), new ai6("[^.]+\\.webdav\\.hidrive\\.strato\\.com")), 96));
        l = listA0;
        m = el1.g1(nc8.I(oq8Var), listA0);
        ArrayList arrayList = new ArrayList(hl1.G0(listA0, 10));
        Iterator it = listA0.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((oq8) it.next()).c));
        }
    }

    public oq8(String str, String str2, int i2, String str3, String str4, String str5, List list, int i3) {
        str4 = (i3 & 16) != 0 ? null : str4;
        String str6 = (i3 & 32) != 0 ? null : "dav/Koofr";
        str5 = (i3 & 64) != 0 ? null : str5;
        list = (i3 & 128) != 0 ? ov2.a : list;
        this.a = str;
        this.b = str2;
        this.c = i2;
        this.d = str3;
        this.e = str4;
        this.f = str6;
        this.g = str5;
        this.h = list;
    }

    public static String c(String str) {
        String string;
        if (str == null || (string = nq7.H0(str).toString()) == null || string.length() <= 0) {
            return null;
        }
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0099  */
    public final nq8 a(String str, String str2) {
        nq8 nq8Var;
        String strC = c(str);
        String str3 = this.f;
        if (strC == null) {
            nq8Var = new nq8(null, null);
        } else {
            String strQ0 = nq7.q0(nq7.q0(strC, "https://"), "http://");
            String strC0 = nq7.C0(strQ0, "/", strQ0);
            String strC2 = c(nq7.z0(strQ0, "/", ""));
            String strC1 = nq7.C0(strC0, ":", strC0);
            Locale locale = Locale.ROOT;
            String strQ = dj7.q(locale, strC1, locale);
            boolean zD = false;
            boolean z = c(str3) != null;
            if (strC2 == null || !(b(strQ) || z)) {
                nq8Var = new nq8(strQ0, null);
            } else {
                String strI0 = nq7.I0(strC2, '/');
                String strC3 = c(str2);
                String strI1 = strC3 != null ? nq7.I0(strC3, '/') : null;
                String strC4 = c(str3);
                String strI2 = strC4 != null ? nq7.I0(strC4, '/') : null;
                if (strI2 != null) {
                    if (pe4.d(strI0, strI2) || uq7.V(strI0, strI2.concat("/"), false)) {
                        zD = true;
                    }
                } else if (strI1 != null) {
                    zD = pe4.d(strI0, strI1);
                }
                if (zD) {
                    nq8Var = new nq8(strC0, strC2);
                } else {
                    nq8Var = new nq8(strQ0, null);
                }
            }
        }
        String strC5 = c(nq8Var.a);
        if (strC5 == null) {
            strC5 = this.e;
        }
        String strC6 = c(str2);
        if (strC6 != null || (strC6 = c(nq8Var.b)) != null) {
            str3 = strC6;
        }
        return new nq8(strC5, str3);
    }

    public final boolean b(String str) {
        String string;
        String strQ = null;
        if (str != null && (string = nq7.H0(str).toString()) != null) {
            if (string.length() <= 0) {
                string = null;
            }
            if (string != null) {
                String strQ0 = nq7.q0(nq7.q0(string, "https://"), "http://");
                String strC0 = nq7.C0(strQ0, "/", strQ0);
                String strC1 = nq7.C0(strC0, ":", strC0);
                Locale locale = Locale.ROOT;
                strQ = dj7.q(locale, strC1, locale);
            }
        }
        if (strQ == null) {
            return false;
        }
        List list = this.h;
        if (list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((ai6) it.next()).b(strQ)) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oq8)) {
            return false;
        }
        oq8 oq8Var = (oq8) obj;
        return this.a.equals(oq8Var.a) && this.b.equals(oq8Var.b) && this.c == oq8Var.c && this.d.equals(oq8Var.d) && pe4.d(this.e, oq8Var.e) && pe4.d(this.f, oq8Var.f) && pe4.d(this.g, oq8Var.g) && this.h.equals(oq8Var.h);
    }

    public final int hashCode() {
        int iG = fz5.g(eq3.d(this.c, fz5.g(this.a.hashCode() * 31, 31, this.b), 31), 31, this.d);
        String str = this.e;
        int iHashCode = (iG + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        return this.h.hashCode() + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return this.b;
    }
}
