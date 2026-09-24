.class public final enum Luu;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Luu;

.field public static final Companion:Ltu;

.field public static final enum DeniedUserFixed:Luu;

.field public static final enum DeniedUserSet:Luu;

.field public static final enum Granted:Luu;


# instance fields
.field private final token:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Luu;
    .locals 3

    .line 1
    sget-object v0, Luu;->Granted:Luu;

    .line 2
    .line 3
    sget-object v1, Luu;->DeniedUserSet:Luu;

    .line 4
    .line 5
    sget-object v2, Luu;->DeniedUserFixed:Luu;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Luu;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Luu;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "g"

    .line 5
    .line 6
    const-string v3, "Granted"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Luu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Luu;->Granted:Luu;

    .line 12
    .line 13
    new-instance v0, Luu;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "ds"

    .line 17
    .line 18
    const-string v3, "DeniedUserSet"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Luu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Luu;->DeniedUserSet:Luu;

    .line 24
    .line 25
    new-instance v0, Luu;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "df"

    .line 29
    .line 30
    const-string v3, "DeniedUserFixed"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Luu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Luu;->DeniedUserFixed:Luu;

    .line 36
    .line 37
    invoke-static {}, Luu;->$values()[Luu;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Luu;->$VALUES:[Luu;

    .line 42
    .line 43
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Luu;->$ENTRIES:Ljx2;

    .line 48
    .line 49
    new-instance v0, Ltu;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object v0, Luu;->Companion:Ltu;

    .line 55
    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Luu;->token:Ljava/lang/String;

    .line 5
    .line 6
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
    sget-object v0, Luu;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Luu;
    .locals 1

    .line 1
    const-class v0, Luu;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Luu;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Luu;
    .locals 1

    .line 1
    sget-object v0, Luu;->$VALUES:[Luu;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Luu;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Luu;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
