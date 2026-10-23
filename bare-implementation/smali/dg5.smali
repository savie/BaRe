.class public final synthetic Ldg5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lpg5;

.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Ldc6;


# direct methods
.method public synthetic constructor <init>(Lpg5;Ldc6;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldg5;->a:Lpg5;

    .line 5
    .line 6
    iput-object p3, p0, Ldg5;->b:[Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Ldg5;->c:Ldc6;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ldg5;->a:Lpg5;

    .line 2
    .line 3
    iget-object v1, p0, Ldg5;->c:Ldc6;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Throwable;

    .line 6
    .line 7
    sget v2, Lpg5;->n:I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v2, 0x0

    .line 14
    iget-object p0, p0, Ldg5;->b:[Ljava/lang/String;

    .line 15
    .line 16
    aget-object p0, p0, v2

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    :try_start_0
    new-instance v2, Lw2;

    .line 21
    .line 22
    invoke-direct {v2, v1, p0}, Lw2;-><init>(Ldc6;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcn0;->a(Lw2;)Ljava/util/concurrent/CompletableFuture;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    new-instance p0, Ljava/util/concurrent/CompletionException;

    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method
