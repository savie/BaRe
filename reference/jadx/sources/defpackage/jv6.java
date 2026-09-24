package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.text.SimpleDateFormat;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jv6 implements jl0 {
    public static final a Companion = new a(null);
    private static final os4 simpleDateFormat$delegate = new gv7(new dl(17));
    private String color;
    private long id;
    private int messageType;
    private String msg;
    private long time;
    private String title;

    public jv6(long j, int i, String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.time = j;
        this.messageType = i;
        this.title = str;
        this.msg = str2;
        this.color = str3;
    }

    public static /* synthetic */ jv6 copy$default(jv6 jv6Var, long j, int i, String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j = jv6Var.time;
        }
        long j2 = j;
        if ((i2 & 2) != 0) {
            i = jv6Var.messageType;
        }
        int i3 = i;
        if ((i2 & 4) != 0) {
            str = jv6Var.title;
        }
        String str4 = str;
        if ((i2 & 8) != 0) {
            str2 = jv6Var.msg;
        }
        String str5 = str2;
        if ((i2 & 16) != 0) {
            str3 = jv6Var.color;
        }
        return jv6Var.copy(j2, i3, str4, str5, str3);
    }

    private static final vr6.a getLogColor$lambda$0(jv6 jv6Var) {
        String str = jv6Var.color;
        if (str != null) {
            return vr6.a.valueOf(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SimpleDateFormat simpleDateFormat_delegate$lambda$0() {
        return new SimpleDateFormat("dd/MM/yy HH:mm:ss.SSS", Locale.forLanguageTag("en-IN"));
    }

    public static /* synthetic */ String toString$default(jv6 jv6Var, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        if ((i & 4) != 0) {
            z3 = false;
        }
        return jv6Var.toString(z, z2, z3);
    }

    public final long component1() {
        return this.time;
    }

    public final int component2() {
        return this.messageType;
    }

    public final String component3() {
        return this.title;
    }

    public final String component4() {
        return this.msg;
    }

    public final String component5() {
        return this.color;
    }

    public final jv6 copy(long j, int i, String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        return new jv6(j, i, str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jv6)) {
            return false;
        }
        jv6 jv6Var = (jv6) obj;
        return this.time == jv6Var.time && this.messageType == jv6Var.messageType && pe4.d(this.title, jv6Var.title) && pe4.d(this.msg, jv6Var.msg) && pe4.d(this.color, jv6Var.color);
    }

    public final String getColor() {
        return this.color;
    }

    @Override // defpackage.jl0
    public jv6 getCopy() {
        return copy$default(this, 0L, 0, null, null, null, 31, null);
    }

    public final long getId() {
        return this.id;
    }

    @Override // defpackage.jl0
    public String getItemId() {
        return String.valueOf(this.id);
    }

    public final vr6.a getLogColor() {
        try {
            return getLogColor$lambda$0(this);
        } catch (Exception unused) {
            return null;
        }
    }

    public final int getMessageType() {
        return this.messageType;
    }

    public final String getMsg() {
        return this.msg;
    }

    public final long getTime() {
        return this.time;
    }

    public final String getTimeString(boolean z) {
        String str = Companion.getSimpleDateFormat().format(Long.valueOf(this.time));
        str.getClass();
        return z ? str : uq7.T(str, TokenAuthenticationScheme.SCHEME_DELIMITER, "\n");
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int iG = fz5.g(fz5.g(eq3.d(this.messageType, Long.hashCode(this.time) * 31, 31), 31, this.title), 31, this.msg);
        String str = this.color;
        return iG + (str == null ? 0 : str.hashCode());
    }

    public final void setColor(String str) {
        this.color = str;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setMessageType(int i) {
        this.messageType = i;
    }

    public final void setMsg(String str) {
        str.getClass();
        this.msg = str;
    }

    public final void setTime(long j) {
        this.time = j;
    }

    public final void setTitle(String str) {
        str.getClass();
        this.title = str;
    }

    public final String toString(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(getTimeString(true));
        }
        if (z2) {
            if (sb.length() > 0) {
                sb.append("/");
            }
            sb.append(this.title);
        }
        if (sb.length() > 0) {
            sb.append(": ");
        }
        sb.append((this.messageType == 6 && z3) ? eq3.k("<", this.msg, ">") : this.msg);
        return sb.toString();
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final SimpleDateFormat getSimpleDateFormat() {
            return (SimpleDateFormat) jv6.simpleDateFormat$delegate.getValue();
        }

        private a() {
        }
    }

    public String toString() {
        return toString();
    }
}
