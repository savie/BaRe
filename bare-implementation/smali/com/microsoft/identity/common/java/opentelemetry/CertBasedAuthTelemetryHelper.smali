.class public final Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mSpan:Lr86;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "CertBasedAuth"

    .line 24
    invoke-static {v0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createSpan(Ljava/lang/String;)Lr86;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->mSpan:Lr86;

    return-void
.end method

.method public constructor <init>(Lrj7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string v0, "CertBasedAuth"

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/PropertyBagUtil;->createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->mSpan:Lr86;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "spanContext is marked non-null but is null"

    .line 16
    .line 17
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0
.end method


# virtual methods
.method public final setCertBasedAuthChallengeHandler(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->mSpan:Lr86;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setExistingPivProviderPresent(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->mSpan:Lr86;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setPublicKeyAlgoType(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->mSpan:Lr86;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "type is marked non-null but is null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setResultFailure(Ljava/lang/Exception;)V
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->mSpan:Lr86;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final setResultFailure(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->mSpan:Lr86;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "message is marked non-null but is null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setResultSuccess()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->mSpan:Lr86;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setUserChoice(Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthChoice;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->mSpan:Lr86;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    return-void
.end method
