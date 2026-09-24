.class public final enum Luh8;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Luh8;

.field public static final enum Baidu:Luh8;

.field public static final enum CloudflareDns:Luh8;

.field public static final enum Facebook:Luh8;

.field public static final enum GoogleDns:Luh8;

.field public static final enum SwiftApps:Luh8;


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I


# direct methods
.method private static final synthetic $values()[Luh8;
    .locals 5

    .line 1
    sget-object v0, Luh8;->GoogleDns:Luh8;

    .line 2
    .line 3
    sget-object v1, Luh8;->CloudflareDns:Luh8;

    .line 4
    .line 5
    sget-object v2, Luh8;->Facebook:Luh8;

    .line 6
    .line 7
    sget-object v3, Luh8;->Baidu:Luh8;

    .line 8
    .line 9
    sget-object v4, Luh8;->SwiftApps:Luh8;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Luh8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Luh8;

    .line 2
    .line 3
    const-string v1, "GoogleDns"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "8.8.8.8"

    .line 7
    .line 8
    const/16 v4, 0x35

    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Luh8;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Luh8;->GoogleDns:Luh8;

    .line 14
    .line 15
    new-instance v0, Luh8;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const-string v2, "1.1.1.1"

    .line 19
    .line 20
    const-string v3, "CloudflareDns"

    .line 21
    .line 22
    invoke-direct {v0, v3, v1, v2, v4}, Luh8;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Luh8;->CloudflareDns:Luh8;

    .line 26
    .line 27
    new-instance v0, Luh8;

    .line 28
    .line 29
    const-string v1, "Facebook"

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    const-string v3, "facebook.com"

    .line 33
    .line 34
    const/16 v4, 0x50

    .line 35
    .line 36
    invoke-direct {v0, v1, v2, v3, v4}, Luh8;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Luh8;->Facebook:Luh8;

    .line 40
    .line 41
    new-instance v0, Luh8;

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    const-string v2, "baidu.com"

    .line 45
    .line 46
    const-string v3, "Baidu"

    .line 47
    .line 48
    invoke-direct {v0, v3, v1, v2, v4}, Luh8;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Luh8;->Baidu:Luh8;

    .line 52
    .line 53
    new-instance v0, Luh8;

    .line 54
    .line 55
    const/4 v1, 0x4

    .line 56
    const-string v2, "swiftapps.org"

    .line 57
    .line 58
    const-string v3, "SwiftApps"

    .line 59
    .line 60
    invoke-direct {v0, v3, v1, v2, v4}, Luh8;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Luh8;->SwiftApps:Luh8;

    .line 64
    .line 65
    invoke-static {}, Luh8;->$values()[Luh8;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Luh8;->$VALUES:[Luh8;

    .line 70
    .line 71
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Luh8;->$ENTRIES:Ljx2;

    .line 76
    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Luh8;->host:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Luh8;->port:I

    .line 7
    .line 8
    return-void
.end method

.method public static getEntries()Ljx2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljx2;"
        }
    .end annotation

    .line 1
    sget-object v0, Luh8;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Luh8;
    .locals 1

    .line 1
    const-class v0, Luh8;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Luh8;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Luh8;
    .locals 1

    .line 1
    sget-object v0, Luh8;->$VALUES:[Luh8;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Luh8;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getHost()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Luh8;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPort()I
    .locals 0

    .line 1
    iget p0, p0, Luh8;->port:I

    .line 2
    .line 3
    return p0
.end method
