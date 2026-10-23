package defpackage;

import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ed8 {
    private static final a6 QUERY_PARAM_SEPARATORS = new a6(10);
    private static final f88 QUERY_VALUE_SEPARATORS = new f88('&');
    private final Charset charset;
    private String encodedAuthority;
    private final String encodedFragment;
    private String encodedPath;
    private String encodedQuery;
    private String encodedSchemeSpecificPart;
    private final String encodedUserInfo;
    private final String fragment;
    private String host;
    private boolean pathRootless;
    private List<String> pathSegments;
    private final int port;
    private ArrayList queryParams;
    private String scheme;
    private final String userInfo;

    /* JADX WARN: Code duplicated, block: B:45:0x0125  */
    public ed8(URI uri) {
        List<String> list;
        String strP;
        Charset charset = StandardCharsets.UTF_8;
        this.scheme = uri.getScheme();
        this.encodedSchemeSpecificPart = uri.getRawSchemeSpecificPart();
        this.encodedAuthority = uri.getRawAuthority();
        String host = uri.getHost();
        if (host != null) {
            Pattern pattern = ac4.a;
            if (host.length() != 0 && host.charAt(0) == '[' && host.charAt(host.length() - 1) == ']' && ac4.b(host.subSequence(1, host.length() - 1))) {
                host = xs1.g(1, 1, host);
            }
        }
        this.host = host;
        this.port = uri.getPort();
        this.encodedUserInfo = uri.getRawUserInfo();
        this.userInfo = uri.getUserInfo();
        String str = this.encodedAuthority;
        if (str != null && this.host == null) {
            try {
                cd8 cd8VarB = cd8.b(str);
                e64 e64Var = cd8VarB.b;
                String str2 = cd8VarB.a;
                this.encodedUserInfo = str2;
                this.userInfo = xy5.a(str2);
                this.host = xy5.a(e64Var.a);
                this.port = e64Var.c;
            } catch (URISyntaxException unused) {
            }
        }
        this.encodedPath = uri.getRawPath();
        String rawPath = uri.getRawPath();
        if (rawPath == null) {
            list = Collections.EMPTY_LIST;
        } else {
            List listSplitPath = splitPath(rawPath);
            ArrayList arrayList = new ArrayList(listSplitPath.size());
            Iterator it = listSplitPath.iterator();
            while (it.hasNext()) {
                arrayList.add(xy5.a((String) it.next()));
            }
            list = arrayList;
        }
        this.pathSegments = list;
        this.pathRootless = uri.getRawPath() == null || !uri.getRawPath().startsWith("/");
        this.encodedQuery = uri.getRawQuery();
        String rawQuery = uri.getRawQuery();
        ArrayList arrayList2 = null;
        if (rawQuery != null) {
            dx5 dx5Var = new dx5(rawQuery.length());
            ArrayList arrayList3 = new ArrayList();
            while (!dx5Var.a()) {
                String strP2 = zv1.p(rawQuery, dx5Var, QUERY_PARAM_SEPARATORS);
                if (dx5Var.a()) {
                    strP = null;
                } else {
                    char cCharAt = rawQuery.charAt(dx5Var.c);
                    dx5Var.b(dx5Var.c + 1);
                    if (cCharAt == '=') {
                        strP = zv1.p(rawQuery, dx5Var, QUERY_VALUE_SEPARATORS);
                        if (!dx5Var.a()) {
                            dx5Var.b(dx5Var.c + 1);
                        }
                    } else {
                        strP = null;
                    }
                }
                if (!strP2.isEmpty()) {
                    arrayList3.add(new cp0(xy5.a(strP2), xy5.a(strP)));
                }
            }
            arrayList2 = arrayList3;
        }
        this.queryParams = arrayList2;
        this.encodedFragment = uri.getRawFragment();
        this.fragment = uri.getFragment();
        this.charset = charset;
    }

    public static List splitPath(String str) {
        if (str == null) {
            return Collections.EMPTY_LIST;
        }
        dx5 dx5Var = new dx5(str.length());
        if (dx5Var.a()) {
            return new ArrayList(0);
        }
        if (str.charAt(dx5Var.c) == '/') {
            dx5Var.b(dx5Var.c + 1);
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        while (!dx5Var.a()) {
            char cCharAt = str.charAt(dx5Var.c);
            if (cCharAt == '/') {
                arrayList.add(sb.toString());
                sb.setLength(0);
            } else {
                sb.append(cCharAt);
            }
            dx5Var.b(dx5Var.c + 1);
        }
        arrayList.add(sb.toString());
        return arrayList;
    }

    public final void a(String str, String str2) {
        cp0 cp0Var = new cp0(str, str2);
        if (this.queryParams == null) {
            this.queryParams = new ArrayList();
        }
        this.queryParams.add(cp0Var);
        this.encodedQuery = null;
        this.encodedSchemeSpecificPart = null;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:63:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:64:0x0107  */
    /* JADX WARN: Code duplicated, block: B:71:0x0120  */
    /* JADX WARN: Code duplicated, block: B:73:0x0128  */
    /* JADX WARN: Code duplicated, block: B:76:0x0138  */
    /* JADX WARN: Code duplicated, block: B:88:0x0140 A[SYNTHETIC] */
    public final String b() {
        boolean z;
        String string;
        String str;
        List<String> list;
        int i;
        ArrayList arrayList;
        String str2;
        BitSet bitSet;
        StringBuilder sb = new StringBuilder();
        String str3 = this.scheme;
        if (str3 != null) {
            sb.append(str3);
            sb.append(':');
        }
        String str4 = this.encodedSchemeSpecificPart;
        Charset charset = this.charset;
        if (str4 != null) {
            sb.append(str4);
        } else {
            int i2 = 0;
            if (this.encodedAuthority != null) {
                sb.append("//");
                sb.append(this.encodedAuthority);
            } else {
                if (this.host != null) {
                    sb.append("//");
                    String str5 = this.encodedUserInfo;
                    if (str5 != null) {
                        sb.append(str5);
                        sb.append("@");
                    } else {
                        String str6 = this.userInfo;
                        if (str6 != null) {
                            int iIndexOf = str6.indexOf(58);
                            if (iIndexOf != -1) {
                                String strSubstring = str6.substring(0, iIndexOf);
                                BitSet bitSet2 = xy5.b;
                                xy5.b(sb, strSubstring, charset, bitSet2);
                                sb.append(':');
                                xy5.b(sb, str6.substring(iIndexOf + 1), charset, bitSet2);
                            } else {
                                xy5.b(sb, str6, charset, xy5.b);
                            }
                            sb.append("@");
                        }
                    }
                    if (ac4.b(this.host)) {
                        sb.append("[");
                        sb.append(this.host);
                        sb.append("]");
                    } else {
                        String str7 = this.host;
                        BitSet bitSet3 = xy5.a;
                        if (str7 == null) {
                            string = null;
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            xy5.b(sb2, str7, charset, xy5.b);
                            string = sb2.toString();
                        }
                        sb.append(string);
                    }
                    int i3 = this.port;
                    if (i3 >= 0) {
                        sb.append(":");
                        sb.append(i3);
                    }
                } else {
                    z = false;
                }
                str = this.encodedPath;
                if (str != null) {
                    if (z && str.length() != 0 && !this.encodedPath.startsWith("/")) {
                        sb.append('/');
                    }
                    sb.append(this.encodedPath);
                } else {
                    list = this.pathSegments;
                    if (list != null) {
                        boolean z2 = z && this.pathRootless;
                        i = 0;
                        for (String str8 : list) {
                            if (i <= 0 || !z2) {
                                sb.append('/');
                            }
                            xy5.b(sb, str8, charset, xy5.b);
                            i++;
                        }
                    }
                }
                if (this.encodedQuery != null) {
                    sb.append("?");
                    sb.append(this.encodedQuery);
                } else {
                    arrayList = this.queryParams;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        sb.append("?");
                        for (cp0 cp0Var : this.queryParams) {
                            if (i2 > 0) {
                                sb.append('&');
                            }
                            String str9 = cp0Var.a;
                            str2 = cp0Var.b;
                            bitSet = xy5.b;
                            xy5.b(sb, str9, charset, bitSet);
                            if (str2 != null) {
                                sb.append('=');
                                xy5.b(sb, str2, charset, bitSet);
                            }
                            i2++;
                        }
                    }
                }
            }
            z = true;
            str = this.encodedPath;
            if (str != null) {
                if (z) {
                    sb.append('/');
                }
                sb.append(this.encodedPath);
            } else {
                list = this.pathSegments;
                if (list != null) {
                    if (z) {
                    }
                    i = 0;
                    while (r1.hasNext()) {
                        if (i <= 0) {
                            sb.append('/');
                        } else {
                            sb.append('/');
                        }
                        xy5.b(sb, str8, charset, xy5.b);
                        i++;
                    }
                }
            }
            if (this.encodedQuery != null) {
                sb.append("?");
                sb.append(this.encodedQuery);
            } else {
                arrayList = this.queryParams;
                if (arrayList != null) {
                    sb.append("?");
                    while (r1.hasNext()) {
                        if (i2 > 0) {
                            sb.append('&');
                        }
                        String str10 = cp0Var.a;
                        str2 = cp0Var.b;
                        bitSet = xy5.b;
                        xy5.b(sb, str10, charset, bitSet);
                        if (str2 != null) {
                            sb.append('=');
                            xy5.b(sb, str2, charset, bitSet);
                        }
                        i2++;
                    }
                }
            }
        }
        String str11 = this.encodedFragment;
        if (str11 != null) {
            sb.append("#");
            sb.append(str11);
        } else {
            String str12 = this.fragment;
            if (str12 != null) {
                sb.append("#");
                xy5.b(sb, str12, charset, xy5.b);
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002a  */
    /* JADX WARN: Code duplicated, block: B:6:0x0018  */
    public final URI build() throws URISyntaxException {
        fd8 fd8Var = fd8.HTTPS;
        if (!fd8Var.a.equalsIgnoreCase(this.scheme)) {
            fd8 fd8Var2 = fd8.HTTP;
            if (fd8Var2.a.equalsIgnoreCase(this.scheme)) {
                if (jm1.A(this.host)) {
                    throw new URISyntaxException(this.scheme, "http/https URI cannot have an empty host identifier");
                }
            }
        } else if (jm1.A(this.host)) {
            throw new URISyntaxException(this.scheme, "http/https URI cannot have an empty host identifier");
        }
        return new URI(b());
    }

    public final void c(final String str, String str2) {
        if (this.queryParams == null) {
            this.queryParams = new ArrayList();
        }
        if (!this.queryParams.isEmpty()) {
            this.queryParams.removeIf(new Predicate() { // from class: dd8
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((cp0) obj).a.equals(str);
                }
            });
        }
        this.queryParams.add(new cp0(str, str2));
        this.encodedQuery = null;
        this.encodedSchemeSpecificPart = null;
    }

    public final String getHost() {
        return this.host;
    }

    public final ArrayList getPathSegments() {
        return this.pathSegments != null ? new ArrayList(this.pathSegments) : new ArrayList();
    }

    public final int getPort() {
        return this.port;
    }

    public final ArrayList getQueryParams() {
        return this.queryParams != null ? new ArrayList(this.queryParams) : new ArrayList();
    }

    public final String getScheme() {
        return this.scheme;
    }

    public final boolean isPathEmpty() {
        List<String> list = this.pathSegments;
        if (list != null && !list.isEmpty()) {
            return false;
        }
        String str = this.encodedPath;
        return str == null || str.isEmpty();
    }

    public final void setHost(String str) {
        this.host = str;
        this.encodedSchemeSpecificPart = null;
        this.encodedAuthority = null;
    }

    public final void setPath(String str) {
        setPathSegments(str != null ? splitPath(str) : null);
        this.pathRootless = (str == null || str.startsWith("/")) ? false : true;
    }

    public final void setPathSegments(List list) {
        this.pathSegments = (list == null || list.isEmpty()) ? null : new ArrayList(list);
        this.encodedSchemeSpecificPart = null;
        this.encodedPath = null;
        this.pathRootless = false;
    }

    public final void setScheme() {
        this.scheme = jm1.A("https") ? null : "https";
    }

    public final String toString() {
        return b();
    }

    public ed8() {
        this.port = -1;
    }
}
