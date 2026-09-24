.class public Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDebugEnabled:Z
    .annotation runtime Ly77;
        value = "debug_enabled"
    .end annotation
.end field

.field private mNotifyOnFailureOnly:Z
    .annotation runtime Ly77;
        value = "notify_on_failure_only"
    .end annotation
.end field

.field private mPiiEnabled:Z
    .annotation runtime Ly77;
        value = "pii_enabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->mPiiEnabled:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->mNotifyOnFailureOnly:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->mDebugEnabled:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final isDebugEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->mDebugEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isPiiEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->mPiiEnabled:Z

    .line 2
    .line 3
    return p0
.end method
