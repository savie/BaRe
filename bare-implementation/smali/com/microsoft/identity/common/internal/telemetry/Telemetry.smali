.class public final Lcom/microsoft/identity/common/internal/telemetry/Telemetry;
.super Lcom/microsoft/identity/common/java/telemetry/Telemetry;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final synthetic a:I

.field private static final instance:Lcom/microsoft/identity/common/internal/telemetry/Telemetry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->instance:Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    .line 7
    .line 8
    invoke-static {}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$100()Lcom/microsoft/identity/common/internal/telemetry/Telemetry;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->instance:Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final flush(Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
