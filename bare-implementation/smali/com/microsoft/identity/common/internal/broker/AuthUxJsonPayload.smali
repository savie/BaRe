.class public final Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final actionComponent:Ljava/lang/String;

.field private final actionName:Ljava/lang/String;

.field private final correlationId:Ljava/lang/String;

.field private final params:Lcom/microsoft/identity/common/internal/broker/AuthUxParams;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/broker/AuthUxParams;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->correlationId:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionName:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionComponent:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->params:Lcom/microsoft/identity/common/internal/broker/AuthUxParams;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic copy$default(Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/broker/AuthUxParams;ILjava/lang/Object;)Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->correlationId:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionName:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionComponent:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->params:Lcom/microsoft/identity/common/internal/broker/AuthUxParams;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/broker/AuthUxParams;)Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->correlationId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Lcom/microsoft/identity/common/internal/broker/AuthUxParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->params:Lcom/microsoft/identity/common/internal/broker/AuthUxParams;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/broker/AuthUxParams;)Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;

    .line 11
    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/broker/AuthUxParams;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->correlationId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->correlationId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionComponent:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionComponent:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->params:Lcom/microsoft/identity/common/internal/broker/AuthUxParams;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->params:Lcom/microsoft/identity/common/internal/broker/AuthUxParams;

    .line 49
    .line 50
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    return v0
.end method

.method public final getActionComponent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionComponent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getActionName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCorrelationId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->correlationId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getParams()Lcom/microsoft/identity/common/internal/broker/AuthUxParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->params:Lcom/microsoft/identity/common/internal/broker/AuthUxParams;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->correlationId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionComponent:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->params:Lcom/microsoft/identity/common/internal/broker/AuthUxParams;

    .line 23
    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/AuthUxParams;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    :goto_0
    add-int/2addr v0, p0

    .line 33
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AuthUxJsonPayload(correlationId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->correlationId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", actionName="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", actionComponent="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->actionComponent:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", params="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->params:Lcom/microsoft/identity/common/internal/broker/AuthUxParams;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 p0, 0x29

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
