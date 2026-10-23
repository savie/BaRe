.class public final enum Lcb3;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lcb3;

.field public static final enum InvalidCredentials:Lcb3;

.field public static final enum InvalidSession:Lcb3;

.field public static final enum TwoFactorRequired:Lcb3;

.field public static final enum TwoFactorWrong:Lcb3;

.field public static final enum Unknown:Lcb3;


# direct methods
.method private static final synthetic $values()[Lcb3;
    .locals 5

    .line 1
    sget-object v0, Lcb3;->TwoFactorRequired:Lcb3;

    .line 2
    .line 3
    sget-object v1, Lcb3;->TwoFactorWrong:Lcb3;

    .line 4
    .line 5
    sget-object v2, Lcb3;->InvalidCredentials:Lcb3;

    .line 6
    .line 7
    sget-object v3, Lcb3;->InvalidSession:Lcb3;

    .line 8
    .line 9
    sget-object v4, Lcb3;->Unknown:Lcb3;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lcb3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcb3;

    .line 2
    .line 3
    const-string v1, "TwoFactorRequired"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcb3;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcb3;->TwoFactorRequired:Lcb3;

    .line 10
    .line 11
    new-instance v0, Lcb3;

    .line 12
    .line 13
    const-string v1, "TwoFactorWrong"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcb3;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcb3;->TwoFactorWrong:Lcb3;

    .line 20
    .line 21
    new-instance v0, Lcb3;

    .line 22
    .line 23
    const-string v1, "InvalidCredentials"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcb3;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcb3;->InvalidCredentials:Lcb3;

    .line 30
    .line 31
    new-instance v0, Lcb3;

    .line 32
    .line 33
    const-string v1, "InvalidSession"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcb3;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcb3;->InvalidSession:Lcb3;

    .line 40
    .line 41
    new-instance v0, Lcb3;

    .line 42
    .line 43
    const-string v1, "Unknown"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcb3;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcb3;->Unknown:Lcb3;

    .line 50
    .line 51
    invoke-static {}, Lcb3;->$values()[Lcb3;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcb3;->$VALUES:[Lcb3;

    .line 56
    .line 57
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcb3;->$ENTRIES:Ljx2;

    .line 62
    .line 63
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

.method public static getEntries()Ljx2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljx2;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcb3;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcb3;
    .locals 1

    .line 1
    const-class v0, Lcb3;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcb3;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcb3;
    .locals 1

    .line 1
    sget-object v0, Lcb3;->$VALUES:[Lcb3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcb3;

    .line 8
    .line 9
    return-object v0
.end method
