.class public final Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/net/IRetryPolicy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/net/IRetryPolicy<",
        "Lcom/microsoft/identity/common/java/net/HttpResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private final extensionFactor:I

.field private final initialDelay:I

.field private final isAcceptable:Lcom/microsoft/identity/common/java/util/ported/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/util/ported/Function<",
            "Lcom/microsoft/identity/common/java/net/HttpResponse;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isRetryable:Ljava/util/function/BiFunction;
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

.field private final isRetryableException:Lcom/microsoft/identity/common/java/util/ported/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/util/ported/Function<",
            "Ljava/lang/Exception;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final number:I


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/util/ported/Function;Ljava/util/function/BiFunction;Lcom/microsoft/identity/common/java/util/ported/Function;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/util/ported/Function<",
            "Ljava/lang/Exception;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/BiFunction<",
            "Lcom/microsoft/identity/common/java/net/HttpResponse;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/microsoft/identity/common/java/util/ported/Function<",
            "Lcom/microsoft/identity/common/java/net/HttpResponse;",
            "Ljava/lang/Boolean;",
            ">;III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;->isRetryableException:Lcom/microsoft/identity/common/java/util/ported/Function;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;->isRetryable:Ljava/util/function/BiFunction;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;->isAcceptable:Lcom/microsoft/identity/common/java/util/ported/Function;

    .line 9
    .line 10
    iput p4, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;->number:I

    .line 11
    .line 12
    iput p5, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;->initialDelay:I

    .line 13
    .line 14
    iput p6, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;->extensionFactor:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final attempt(Lmu7;)Lcom/microsoft/identity/common/java/net/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;->number:I

    .line 2
    .line 3
    iget v1, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;->initialDelay:I

    .line 4
    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lmu7;->call()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;->isAcceptable:Lcom/microsoft/identity/common/java/util/ported/Function;

    .line 14
    .line 15
    invoke-interface {v3, v2}, Lcom/microsoft/identity/common/java/util/ported/Function;->apply(Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    iget-object v3, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;->isRetryable:Ljava/util/function/BiFunction;

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v3, v2, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v2

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :goto_1
    return-object v2

    .line 47
    :goto_2
    if-lez v0, :cond_3

    .line 48
    .line 49
    iget-object v3, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;->isRetryableException:Lcom/microsoft/identity/common/java/util/ported/Function;

    .line 50
    .line 51
    invoke-interface {v3, v2}, Lcom/microsoft/identity/common/java/util/ported/Function;->apply(Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_1
    add-int/lit8 v2, v0, -0x1

    .line 63
    .line 64
    if-lez v0, :cond_2

    .line 65
    .line 66
    int-to-long v3, v1

    .line 67
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .line 69
    .line 70
    iget v0, p0, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;->extensionFactor:I

    .line 71
    .line 72
    mul-int/2addr v1, v0

    .line 73
    if-lez v1, :cond_2

    .line 74
    .line 75
    move v0, v2

    .line 76
    goto :goto_0

    .line 77
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 82
    .line 83
    .line 84
    :cond_2
    const-string p0, "This code should not be reachable"

    .line 85
    .line 86
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x0

    .line 90
    return-object p0

    .line 91
    :cond_3
    :goto_3
    instance-of p0, v2, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 92
    .line 93
    if-eqz p0, :cond_4

    .line 94
    .line 95
    check-cast v2, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 96
    .line 97
    throw v2

    .line 98
    :cond_4
    new-instance p0, Lcom/microsoft/identity/common/java/net/RetryFailedException;

    .line 99
    .line 100
    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw p0
.end method
