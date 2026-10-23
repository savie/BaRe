.class public final enum Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

.field public static final enum ERROR:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

.field public static final enum INFO:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

.field public static final enum VERBOSE:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

.field public static final enum WARN:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 2
    .line 3
    const-string v1, "ERROR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 10
    .line 11
    new-instance v1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 12
    .line 13
    const-string v2, "WARN"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 20
    .line 21
    new-instance v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 22
    .line 23
    const-string v3, "INFO"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 30
    .line 31
    new-instance v3, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 32
    .line 33
    const-string v4, "VERBOSE"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->$VALUES:[Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 46
    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->$VALUES:[Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 8
    .line 9
    return-object v0
.end method
