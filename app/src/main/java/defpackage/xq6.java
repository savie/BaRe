package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xq6 {
    public static final xq6 j;
    public static final List k;
    public static final List l;
    public static final ArrayList m;
    public static final ArrayList n;
    public final String a;
    public final String b;
    public final int c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final List i;

    static {
        xq6 xq6Var = new xq6("custom", "Custom S3-compatible storage", R.drawable.ic_branding_s3, "s3.example.com", null, "https://rclone.org/s3/", null, null, null, 480);
        j = xq6Var;
        int i = 96;
        String str = null;
        String str2 = null;
        xq6 xq6Var2 = new xq6("amazon_s3", "Amazon S3", R.drawable.ic_branding_amazon_s3, "s3.<region>.amazonaws.com", fl1.A0(new ai6("s3\\.amazonaws\\.com"), new ai6("s3\\.[^.]+\\.amazonaws\\.com"), new ai6("s3\\.dualstack\\.[^.]+\\.amazonaws\\.com")), "https://docs.aws.amazon.com/general/latest/gr/s3.html", str, str2, "us-east-1", i);
        String str3 = null;
        xq6 xq6Var3 = new xq6("cloudflare_r2", "Cloudflare R2", R.drawable.ic_branding_cloudflare_r2, "<account_id>.r2.cloudflarestorage.com", nc8.I(new ai6("[^.]+\\.r2\\.cloudflarestorage\\.com")), "https://developers.cloudflare.com/r2/api/s3/api/", null, "auto", str3, 160);
        xq6 xq6Var4 = new xq6("mega_s4", "MEGA S4", R.drawable.ic_branding_mega_s4, "s3.<region>.megas4.com", fl1.A0(new ai6("s3\\.[^.]+\\.megas4\\.com"), new ai6("s3\\.[^.]+\\.s4\\.mega\\.io")), "https://help.mega.io/megas4/setup-guides/mega-s4-endpoint-urls", str, str2, "eu-amsterdam", i);
        String str4 = null;
        xq6 xq6Var5 = new xq6("backblaze_b2", "Backblaze B2", R.drawable.ic_branding_backblaze_b2, "s3.<region>.backblazeb2.com", nc8.I(new ai6("s3\\.[^.]+\\.backblazeb2\\.com")), "https://www.backblaze.com/docs/cloud-storage-s3-compatible-api", str3, str4, "us-west-004", 96);
        xq6 xq6Var6 = new xq6("digitalocean_spaces", "DigitalOcean Spaces", R.drawable.ic_branding_digitalocean_spaces, "<region>.digitaloceanspaces.com", nc8.I(new ai6("[^.]+\\.digitaloceanspaces\\.com")), "https://docs.digitalocean.com/products/spaces/reference/s3-sdk-examples/", str4, null, "nyc3", 96);
        String str5 = null;
        String str6 = null;
        List listA0 = fl1.A0(xq6Var2, xq6Var3, xq6Var4, xq6Var5, new xq6("wasabi", "Wasabi", R.drawable.ic_branding_wasabi, "s3.wasabisys.com", nc8.I(new ai6("s3(\\.[^.]+)?\\.wasabisys\\.com")), "https://docs.wasabi.com/docs/what-are-the-service-urls-for-wasabis-different-regions", "s3.wasabisys.com", "us-east-1", str5, 128), xq6Var6, new xq6("hetzner_object_storage", "Hetzner", R.drawable.ic_branding_hetzner_object_storage, "<location>.your-objectstorage.com", nc8.I(new ai6("[^.]+\\.your-objectstorage\\.com")), "https://docs.hetzner.com/storage/object-storage/", null, str5, "fsn1", 96), new xq6("ovhcloud_object_storage", "OVHcloud", R.drawable.ic_branding_ovhcloud_object_storage, "s3.<region>.io.cloud.ovh.net", fl1.A0(new ai6("s3\\.[^.]+\\.io\\.cloud\\.ovh\\.net"), new ai6("s3\\.[^.]+\\.perf\\.cloud\\.ovh\\.net"), new ai6("s3\\.[^.]+\\.cloud\\.ovh\\.net")), "https://docs.ovhcloud.com/en/guides/storage-and-backup/object-storage/s3-location/", str, str2, "gra", i), new xq6("scaleway_object_storage", "Scaleway", R.drawable.ic_branding_scaleway_object_storage, "s3.<region>.scw.cloud", nc8.I(new ai6("s3\\.[^.]+\\.scw\\.cloud")), "https://www.scaleway.com/en/docs/object-storage/concepts/", str5, str6, "fr-par", 96), new xq6("idrive_e2", "IDrive e2", R.drawable.ic_branding_idrive_e2, "s3.<region>.idrivee2.com", nc8.I(new ai6("^s3\\.[a-z0-9-]+\\.idrivee2\\.com$")), "https://www.idrive.com/s3-storage-e2/e2-endpoint-urls", str6, null, "us-west-1", 96), new xq6("storj", "Storj", R.drawable.ic_branding_storj, "gateway.storjshare.io", nc8.I(new ai6("gateway\\.storjshare\\.io")), "https://storj.dev/dcs/api/s3/s3-compatible-gateway", "gateway.storjshare.io", "us-east-1", null, 128));
        k = listA0;
        l = listA0;
        m = el1.g1(nc8.I(xq6Var), listA0);
        List list = xq6Var.i;
        list.getClass();
        n = el1.g1(nc8.I(new xq6("custom", "Any S3-compatible server", R.drawable.ic_branding_s3, "s3.example.com", "https://rclone.org/s3/", xq6Var.f, xq6Var.g, xq6Var.h, list)), listA0);
        ArrayList arrayList = new ArrayList(hl1.G0(listA0, 10));
        Iterator it = listA0.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((xq6) it.next()).c));
        }
    }

    public /* synthetic */ xq6(String str, String str2, int i, String str3, List list, String str4, String str5, String str6, String str7, int i2) {
        this(str, str2, i, str3, str4, (i2 & 32) != 0 ? null : str5, (i2 & 64) != 0 ? null : str6, (i2 & 128) != 0 ? null : str7, (i2 & 256) != 0 ? ov2.a : list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xq6)) {
            return false;
        }
        xq6 xq6Var = (xq6) obj;
        return pe4.d(this.a, xq6Var.a) && pe4.d(this.b, xq6Var.b) && this.c == xq6Var.c && pe4.d(this.d, xq6Var.d) && pe4.d(this.e, xq6Var.e) && pe4.d(this.f, xq6Var.f) && pe4.d(this.g, xq6Var.g) && pe4.d(this.h, xq6Var.h) && pe4.d(this.i, xq6Var.i);
    }

    public final int hashCode() {
        int iG = fz5.g(fz5.g(eq3.d(this.c, fz5.g(this.a.hashCode() * 31, 31, this.b), 31), 31, this.d), 31, this.e);
        String str = this.f;
        int iHashCode = (iG + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.g;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.h;
        return this.i.hashCode() + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return this.b;
    }

    public xq6(String str, String str2, int i, String str3, String str4, String str5, String str6, String str7, List list) {
        list.getClass();
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = str6;
        this.h = str7;
        this.i = list;
    }
}
