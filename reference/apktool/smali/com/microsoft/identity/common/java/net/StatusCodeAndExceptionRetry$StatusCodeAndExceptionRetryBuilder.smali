.class public final Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private extensionFactor$set:Z

.field private extensionFactor$value:I

.field private initialDelay$set:Z

.field private initialDelay$value:I

.field private isAcceptable$set:Z

.field private isAcceptable$value:Lcom/microsoft/identity/common/java/util/ported/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/util/ported/Function<",
            "Lcom/microsoft/identity/common/java/net/HttpResponse;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isRetryable$set:Z

.field private isRetryable$value:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Lcom/microsoft/identity/common/java/net/HttpResponse;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isRetryableException$set:Z

.field private isRetryableException$value:Lcom/microsoft/identity/common/java/util/ported/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/util/ported/Function<",
            "Ljava/lang/Exception;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private number$set:Z

.field private number$value:I


# virtual methods
.method public final build()Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isRetryableException$value:Lcom/microsoft/identity/common/java/util/ported/Function;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isRetryableException$set:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$1;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    move-object v2, v0

    .line 13
    iget-object v0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isRetryable$value:Ljava/util/function/BiFunction;

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isRetryable$set:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$2;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    :cond_1
    move-object v3, v0

    .line 25
    iget-object v0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isAcceptable$value:Lcom/microsoft/identity/common/java/util/ported/Function;

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isAcceptable$set:Z

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    new-instance v0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$3;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    :cond_2
    move-object v4, v0

    .line 37
    iget v0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->number$value:I

    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->number$set:Z

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    :cond_3
    move v5, v0

    .line 45
    iget v0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->initialDelay$value:I

    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->initialDelay$set:Z

    .line 48
    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    const/16 v0, 0x3e8

    .line 52
    .line 53
    :cond_4
    move v6, v0

    .line 54
    iget v0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->extensionFactor$value:I

    .line 55
    .line 56
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->extensionFactor$set:Z

    .line 57
    .line 58
    if-nez p0, :cond_5

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    :cond_5
    move v7, v0

    .line 62
    new-instance v1, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;

    .line 63
    .line 64
    invoke-direct/range {v1 .. v7}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;-><init>(Lcom/microsoft/identity/common/java/util/ported/Function;Ljava/util/function/BiFunction;Lcom/microsoft/identity/common/java/util/ported/Function;III)V

    .line 65
    .line 66
    .line 67
    return-object v1
.end method

.method public final extensionFactor()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->extensionFactor$value:I

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->extensionFactor$set:Z

    .line 6
    .line 7
    return-void
.end method

.method public final initialDelay()V
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    iput v0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->initialDelay$value:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->initialDelay$set:Z

    .line 7
    .line 8
    return-void
.end method

.method public final isAcceptable(Lcom/microsoft/identity/common/java/util/ported/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isAcceptable$value:Lcom/microsoft/identity/common/java/util/ported/Function;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isAcceptable$set:Z

    .line 5
    .line 6
    return-void
.end method

.method public final isRetryable(Ljava/util/function/BiFunction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isRetryable$value:Ljava/util/function/BiFunction;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isRetryable$set:Z

    .line 5
    .line 6
    return-void
.end method

.method public final isRetryableException(Lcom/microsoft/identity/common/java/util/ported/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isRetryableException$value:Lcom/microsoft/identity/common/java/util/ported/Function;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isRetryableException$set:Z

    .line 5
    .line 6
    return-void
.end method

.method public final number()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->number$value:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->number$set:Z

    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "StatusCodeAndExceptionRetry.StatusCodeAndExceptionRetryBuilder(isRetryableException$value="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isRetryableException$value:Lcom/microsoft/identity/common/java/util/ported/Function;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isRetryable$value="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isRetryable$value:Ljava/util/function/BiFunction;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isAcceptable$value="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isAcceptable$value:Lcom/microsoft/identity/common/java/util/ported/Function;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", number$value="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->number$value:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", initialDelay$value="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->initialDelay$value:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", extensionFactor$value="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget p0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->extensionFactor$value:I

    .line 59
    .line 60
    const-string v1, ")"

    .line 61
    .line 62
    invoke-static {v0, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
