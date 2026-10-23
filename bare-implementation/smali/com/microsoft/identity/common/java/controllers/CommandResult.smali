.class public final Lcom/microsoft/identity/common/java/controllers/CommandResult;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCorrelationId:Ljava/lang/String;

.field private final mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mStatus:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

.field private mTelemetryMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mStatus:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mResult:Ljava/lang/Object;

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    const-string p3, "UNSET"

    .line 18
    .line 19
    :cond_0
    iput-object p3, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mCorrelationId:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const-string p0, "result is marked non-null but is null"

    .line 23
    .line 24
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    throw p0
.end method

.method private constructor <init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mStatus:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mResult:Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 33
    const-string p2, "UNSET"

    :cond_0
    iput-object p2, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mCorrelationId:Ljava/lang/String;

    return-void
.end method

.method public static ofNull(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/String;)Lcom/microsoft/identity/common/java/controllers/CommandResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/identity/common/java/controllers/CommandResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/microsoft/identity/common/java/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final getCorrelationId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mCorrelationId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mResult:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mStatus:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setTelemetryMap(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mTelemetryMap:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
