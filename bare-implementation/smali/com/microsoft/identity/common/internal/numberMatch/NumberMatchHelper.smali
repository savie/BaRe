.class public abstract Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic a:I

.field private static final alphaNum8Regex:Lai6;

.field private static final guidRegex:Lai6;

.field private static final numberMatchMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final twoDigitRegex:Lai6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;->numberMatchMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance v0, Lai6;

    .line 9
    .line 10
    const-string v1, "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lai6;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;->guidRegex:Lai6;

    .line 16
    .line 17
    new-instance v0, Lai6;

    .line 18
    .line 19
    const-string v1, "^[A-Za-z0-9]{8}$"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lai6;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;->alphaNum8Regex:Lai6;

    .line 25
    .line 26
    new-instance v0, Lai6;

    .line 27
    .line 28
    const-string v1, "^\\d{2}$"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lai6;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;->twoDigitRegex:Lai6;

    .line 34
    .line 35
    return-void
.end method

.method public static final synthetic access$getAlphaNum8Regex$cp()Lai6;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;->alphaNum8Regex:Lai6;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getGuidRegex$cp()Lai6;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;->guidRegex:Lai6;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getNumberMatchMap$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;->numberMatchMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getTwoDigitRegex$cp()Lai6;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;->twoDigitRegex:Lai6;

    .line 2
    .line 3
    return-object v0
.end method
