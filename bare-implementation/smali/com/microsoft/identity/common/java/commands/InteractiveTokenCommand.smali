.class public final Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;
.super Lcom/microsoft/identity/common/java/commands/TokenCommand;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mController:Lcom/microsoft/identity/common/java/controllers/BaseController;


# virtual methods
.method public final canEqual(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    .line 2
    .line 3
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    move-object v0, p1

    .line 10
    check-cast v0, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    .line 11
    .line 12
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/commands/TokenCommand;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;->mController:Lcom/microsoft/identity/common/java/controllers/BaseController;

    .line 20
    .line 21
    iget-object p1, v0, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;->mController:Lcom/microsoft/identity/common/java/controllers/BaseController;

    .line 22
    .line 23
    if-nez p0, :cond_3

    .line 24
    .line 25
    if-eqz p1, :cond_4

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/controllers/BaseController;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_4

    .line 33
    .line 34
    :goto_0
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public final execute()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    instance-of v1, v1, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string v1, "InteractiveTokenCommand:execute"

    .line 28
    .line 29
    const-string v2, "Executing interactive token command..."

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getControllerFactory()Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->getDefaultController()Lcom/microsoft/identity/common/java/controllers/BaseController;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;->mController:Lcom/microsoft/identity/common/java/controllers/BaseController;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;->mController:Lcom/microsoft/identity/common/java/controllers/BaseController;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/controllers/BaseController;->acquireToken(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getSucceeded()Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/microsoft/identity/common/PropertyBagUtil;->exceptionFromAcquireTokenResult(Lcom/microsoft/identity/common/java/result/AcquireTokenResult;)Lcom/microsoft/identity/common/java/exception/BaseException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string v1, "Invalid operation parameters"

    .line 82
    .line 83
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :goto_1
    :try_start_2
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catchall_1
    move-exception v0

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :goto_2
    throw p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;->mController:Lcom/microsoft/identity/common/java/controllers/BaseController;

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0x3b

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/16 p0, 0x2b

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    :goto_0
    add-int/2addr v0, p0

    .line 16
    return v0
.end method

.method public final onFinishAuthorizationSession(IILcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;->mController:Lcom/microsoft/identity/common/java/controllers/BaseController;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/java/controllers/BaseController;->onFinishAuthorizationSession(IILcom/microsoft/identity/common/java/util/ported/PropertyBag;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
