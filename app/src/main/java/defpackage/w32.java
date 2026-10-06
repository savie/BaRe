package defpackage;

import java.time.Duration;
import java.time.ZonedDateTime;
import java.time.temporal.TemporalAmount;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "Credentials", strict = false)
@nk4(ignoreUnknown = true)
public class w32 {

    @at2(name = "AccessKeyId")
    @nl4("accessKey")
    private final String a;

    @at2(name = "SecretAccessKey")
    @nl4("secretKey")
    private final String b;

    @at2(name = "SessionToken")
    @nl4("sessionToken")
    private final String c;

    @at2(name = "Expiration")
    @nl4("expiration")
    private final h38.a d;

    public w32(@at2(name = "AccessKeyId") @nl4("accessKey") String str, @at2(name = "SecretAccessKey") @nl4("secretKey") String str2, @at2(name = "SessionToken") @nl4("sessionToken") String str3, @at2(name = "Expiration") @nl4("expiration") h38.a aVar) {
        Objects.requireNonNull(str, "AccessKey must not be null");
        this.a = str;
        Objects.requireNonNull(str2, "SecretKey must not be null");
        this.b = str2;
        if (str.isEmpty() || str2.isEmpty()) {
            c6.f("AccessKey and SecretKey must not be empty");
            throw null;
        }
        this.c = str3;
        this.d = aVar;
    }

    public String a() {
        return this.a;
    }

    public ZonedDateTime b() {
        h38.a aVar = this.d;
        if (aVar == null) {
            return null;
        }
        return aVar.b();
    }

    public boolean c() {
        if (this.d == null) {
            return false;
        }
        return ZonedDateTime.now().plus((TemporalAmount) Duration.ofSeconds(10L)).isAfter(this.d.b());
    }

    public String d() {
        return this.b;
    }

    public String e() {
        return this.c;
    }
}
