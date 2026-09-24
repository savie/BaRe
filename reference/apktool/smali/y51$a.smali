.class public final enum Ly51$a;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Ly51$a;

.field public static final enum b:Ly51$a;

.field public static final enum c:Ly51$a;

.field public static final enum d:Ly51$a;

.field public static final enum e:Ly51$a;

.field public static final enum f:Ly51$a;

.field public static final synthetic k:[Ly51$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ly51$a;

    .line 2
    .line 3
    const-string v1, "CRC32"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ly51$a;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ly51$a;->a:Ly51$a;

    .line 10
    .line 11
    new-instance v1, Ly51$a;

    .line 12
    .line 13
    const-string v2, "CRC32C"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ly51$a;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Ly51$a;->b:Ly51$a;

    .line 20
    .line 21
    new-instance v2, Ly51$a;

    .line 22
    .line 23
    const-string v3, "CRC64NVME"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ly51$a;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Ly51$a;->c:Ly51$a;

    .line 30
    .line 31
    new-instance v3, Ly51$a;

    .line 32
    .line 33
    const-string v4, "SHA1"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ly51$a;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Ly51$a;->d:Ly51$a;

    .line 40
    .line 41
    new-instance v4, Ly51$a;

    .line 42
    .line 43
    const-string v5, "SHA256"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ly51$a;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Ly51$a;->e:Ly51$a;

    .line 50
    .line 51
    new-instance v5, Ly51$a;

    .line 52
    .line 53
    const-string v6, "MD5"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Ly51$a;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Ly51$a;->f:Ly51$a;

    .line 60
    .line 61
    filled-new-array/range {v0 .. v5}, [Ly51$a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Ly51$a;->k:[Ly51$a;

    .line 66
    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly51$a;
    .locals 1

    .line 1
    const-class v0, Ly51$a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ly51$a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ly51$a;
    .locals 1

    .line 1
    sget-object v0, Ly51$a;->k:[Ly51$a;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ly51$a;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ly51$a;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a()Lz51;
    .locals 1

    .line 1
    sget-object v0, Ly51$a;->a:Ly51$a;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ly51$b;

    .line 6
    .line 7
    invoke-direct {p0}, Ly51$b;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object v0, Ly51$a;->b:Ly51$a;

    .line 12
    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    .line 15
    new-instance p0, Ly51$c;

    .line 16
    .line 17
    invoke-direct {p0}, Ly51$c;-><init>()V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object v0, Ly51$a;->c:Ly51$a;

    .line 22
    .line 23
    if-ne p0, v0, :cond_2

    .line 24
    .line 25
    new-instance p0, Ly51$d;

    .line 26
    .line 27
    invoke-direct {p0}, Ly51$d;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    sget-object v0, Ly51$a;->d:Ly51$a;

    .line 32
    .line 33
    if-ne p0, v0, :cond_3

    .line 34
    .line 35
    new-instance p0, Ly51$f;

    .line 36
    .line 37
    invoke-direct {p0}, Ly51$f;-><init>()V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    sget-object v0, Ly51$a;->e:Ly51$a;

    .line 42
    .line 43
    if-ne p0, v0, :cond_4

    .line 44
    .line 45
    new-instance p0, Ly51$g;

    .line 46
    .line 47
    invoke-direct {p0}, Ly51$g;-><init>()V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_4
    sget-object v0, Ly51$a;->f:Ly51$a;

    .line 52
    .line 53
    if-ne p0, v0, :cond_5

    .line 54
    .line 55
    new-instance p0, Ly51$e;

    .line 56
    .line 57
    invoke-direct {p0}, Ly51$e;-><init>()V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_5
    const/4 p0, 0x0

    .line 62
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Ly51$a;->f:Ly51$a;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const-string p0, "Content-Md5"

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "x-amz-checksum-"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
