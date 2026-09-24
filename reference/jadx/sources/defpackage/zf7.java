package defpackage;

import java.io.IOException;
import java.math.RoundingMode;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.stream.Collectors;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class zf7 {
    public static final na4 q;
    public final Request a;
    public final String b;
    public final ZonedDateTime c;
    public final String d;
    public final String e;
    public final String f;
    public String g;
    public TreeMap h;
    public String i;
    public HttpUrl j;
    public String k;
    public String l;
    public String m;
    public byte[] n;
    public String o;
    public String p;

    static {
        Locale locale = Locale.US;
        q = na4.y(3, "Accept-Encoding".toLowerCase(locale), "Authorization".toLowerCase(locale), "User-Agent".toLowerCase(locale));
        na4.B("Accept-Encoding".toLowerCase(locale), "Authorization".toLowerCase(locale), "User-Agent".toLowerCase(locale), "Content-Md5".toLowerCase(locale), "X-Amz-Content-Sha256".toLowerCase(locale), "X-Amz-Date".toLowerCase(locale), "X-Amz-Security-Token".toLowerCase(locale));
    }

    private zf7(Request request, String str, ZonedDateTime zonedDateTime, String str2, String str3, String str4, String str5) {
        this.a = request;
        this.b = str;
        this.c = zonedDateTime;
        this.d = str2;
        this.e = str3;
        this.f = str4;
    }

    public static Request a(Request request, String str, String str2, String str3, String str4) {
        String str5;
        int i;
        zf7 zf7Var = new zf7(request, str4, ZonedDateTime.parse(request.c.d("X-Amz-Date"), h38.b), str, str2, str3, null);
        StringBuilder sb = new StringBuilder();
        DateTimeFormatter dateTimeFormatter = h38.d;
        ZonedDateTime zonedDateTime = zf7Var.c;
        sb.append(zonedDateTime.format(dateTimeFormatter));
        sb.append("/");
        String str6 = zf7Var.d;
        zf7Var.g = dj7.n(sb, str6, "/s3/aws4_request");
        zf7Var.h = new TreeMap();
        Request request2 = zf7Var.a;
        Headers headers = request2.c;
        headers.getClass();
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        comparator.getClass();
        TreeSet treeSet = new TreeSet(comparator);
        int size = headers.size();
        for (int i2 = 0; i2 < size; i2++) {
            treeSet.add(headers.e(i2));
        }
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(treeSet);
        setUnmodifiableSet.getClass();
        for (String str7 : setUnmodifiableSet) {
            String lowerCase = str7.toLowerCase(Locale.US);
            if (!q.contains(lowerCase)) {
                zf7Var.h.put(lowerCase, headers.i(str7).stream().map(new xf7()).collect(Collectors.joining(",")));
            }
        }
        zf7Var.i = new sg9(";", 3).a(zf7Var.h.keySet());
        zf7Var.j = request2.a;
        String strD = zf7Var.j.d();
        int i3 = 5;
        if (strD == null) {
            zf7Var.k = "";
            i = 0;
        } else {
            lg7.c(2, "expectedValuesPerKey");
            TreeMap treeMap = new TreeMap(vk5.a);
            ui5 ui5Var = new ui5();
            vi5 vi5Var = new vi5(treeMap);
            vi5Var.f = ui5Var;
            String[] strArrSplit = strD.split("&");
            int length = strArrSplit.length;
            int i4 = 0;
            while (true) {
                str5 = "=";
                if (i4 >= length) {
                    break;
                }
                String[] strArrSplit2 = strArrSplit[i4].split("=");
                if (strArrSplit2.length > 1) {
                    vi5Var.g(strArrSplit2[0], strArrSplit2[1]);
                } else {
                    vi5Var.g(strArrSplit2[0], "");
                }
                i4++;
            }
            i = 0;
            ib ibVar = new ib(i3, new sg9("&", 3), str5);
            Iterator it = vi5Var.a().iterator();
            StringBuilder sb2 = new StringBuilder();
            try {
                ibVar.d(sb2, it);
                zf7Var.k = sb2.toString();
            } catch (IOException e) {
                e6.e(e);
            }
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(request2.b);
        sb3.append("\n");
        sb3.append(zf7Var.j.b());
        sb3.append("\n");
        sb3.append(zf7Var.k);
        sb3.append("\n");
        ib ibVar2 = new ib(i3, new sg9("\n", 3), ":");
        Iterator it2 = zf7Var.h.entrySet().iterator();
        StringBuilder sb4 = new StringBuilder();
        try {
            ibVar2.d(sb4, it2);
            sb3.append(sb4.toString());
            sb3.append("\n\n");
            sb3.append(zf7Var.i);
            sb3.append("\n");
            sb3.append(zf7Var.b);
            byte[] bytes = sb3.toString().getBytes(StandardCharsets.UTF_8);
            int length2 = bytes.length;
            MessageDigest messageDigest = new y51.g().a;
            messageDigest.update(bytes, i, length2);
            zf7Var.l = y51.b(messageDigest.digest());
            zf7Var.m = "AWS4-HMAC-SHA256\n" + zonedDateTime.format(h38.b) + "\n" + zf7Var.g + "\n" + zf7Var.l;
            StringBuilder sb5 = new StringBuilder("AWS4");
            sb5.append(zf7Var.f);
            String string = sb5.toString();
            Charset charset = StandardCharsets.UTF_8;
            zf7Var.n = b(b(b(b(string.getBytes(charset), zonedDateTime.format(h38.d).getBytes(charset)), str6.getBytes(charset)), "s3".getBytes(charset)), "aws4_request".getBytes(charset));
            byte[] bArrB = b(zf7Var.n, zf7Var.m.getBytes(StandardCharsets.UTF_8));
            ol0 ol0Var = ql0.c;
            ol0Var.getClass();
            int length3 = bArrB.length;
            sz8.i(0, length3, bArrB.length);
            nl0 nl0Var = ol0Var.a;
            int i5 = nl0Var.d;
            int i6 = nl0Var.e;
            RoundingMode roundingMode = RoundingMode.CEILING;
            StringBuilder sb6 = new StringBuilder(ho6.l(length3, i6) * i5);
            try {
                char[] cArr = ol0Var.d;
                sz8.i(0, length3, bArrB.length);
                for (byte b : bArrB) {
                    int i7 = b & 255;
                    sb6.append(cArr[i7]);
                    sb6.append(cArr[i7 | 256]);
                }
                zf7Var.o = sb6.toString().toLowerCase(Locale.US);
            } catch (IOException e2) {
                e6.e(e2);
            }
            zf7Var.p = "AWS4-HMAC-SHA256 Credential=" + zf7Var.e + "/" + zf7Var.g + ", SignedHeaders=" + zf7Var.i + ", Signature=" + zf7Var.o;
            Request.Builder builderA = request.a();
            String str8 = zf7Var.p;
            str8.getClass();
            return xs1.o(builderA.c, "Authorization", str8, builderA);
        } catch (IOException e3) {
            e6.e(e3);
            return null;
        }
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) throws rg5 {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(bArr, "HmacSHA256"));
            mac.update(bArr2);
            return mac.doFinal();
        } catch (InvalidKeyException | NoSuchAlgorithmException e) {
            throw new rg5(e);
        }
    }
}
