.class public final synthetic Lhg5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lpg5;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lox0;

.field public final synthetic d:Lhx5;

.field public final synthetic e:Ldc6;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:J


# direct methods
.method public synthetic constructor <init>(Lpg5;Ljava/util/ArrayList;Lox0;Lhx5;Ldc6;Ljava/lang/String;ZZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhg5;->a:Lpg5;

    .line 5
    .line 6
    iput-object p2, p0, Lhg5;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lhg5;->c:Lox0;

    .line 9
    .line 10
    iput-object p4, p0, Lhg5;->d:Lhx5;

    .line 11
    .line 12
    iput-object p5, p0, Lhg5;->e:Ldc6;

    .line 13
    .line 14
    iput-object p6, p0, Lhg5;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-boolean p7, p0, Lhg5;->g:Z

    .line 17
    .line 18
    iput-boolean p8, p0, Lhg5;->h:Z

    .line 19
    .line 20
    iput-wide p9, p0, Lhg5;->i:J

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v3, p0, Lhg5;->c:Lox0;

    .line 2
    .line 3
    iget-object v4, p0, Lhg5;->d:Lhx5;

    .line 4
    .line 5
    check-cast p1, Lyf8;

    .line 6
    .line 7
    sget v0, Lpg5;->n:I

    .line 8
    .line 9
    iget-object v7, p0, Lhg5;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v3}, Lox0;->reset()V

    .line 15
    .line 16
    .line 17
    iget p1, v4, Lhx5;->i:I

    .line 18
    .line 19
    iget v0, v4, Lhx5;->f:I

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    invoke-static {v7}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    invoke-virtual {v4, v3}, Lhx5;->a(Lox0;)V
    :try_end_0
    .catch Lrg5; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    new-instance v0, Lfg5;

    .line 32
    .line 33
    iget-object v1, p0, Lhg5;->e:Ldc6;

    .line 34
    .line 35
    iget-object v2, p0, Lhg5;->f:Ljava/lang/String;

    .line 36
    .line 37
    iget-boolean v5, p0, Lhg5;->g:Z

    .line 38
    .line 39
    iget-boolean v6, p0, Lhg5;->h:Z

    .line 40
    .line 41
    move-object v11, v4

    .line 42
    move-object v4, v3

    .line 43
    move-object v3, v11

    .line 44
    invoke-direct/range {v0 .. v6}, Lfg5;-><init>(Ldc6;Ljava/lang/String;Lhx5;Lox0;ZZ)V

    .line 45
    .line 46
    .line 47
    move-object v11, v4

    .line 48
    move-object v4, v3

    .line 49
    move-object v3, v11

    .line 50
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v0, Lgg5;

    .line 55
    .line 56
    move v8, v6

    .line 57
    move-object v6, v2

    .line 58
    move-object v2, v7

    .line 59
    move v7, v5

    .line 60
    move-object v5, v1

    .line 61
    iget-object v1, p0, Lhg5;->a:Lpg5;

    .line 62
    .line 63
    invoke-direct {v0, v1}, Lgg5;-><init>(Lpg5;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance v0, Lhg5;

    .line 71
    .line 72
    iget-wide v9, p0, Lhg5;->i:J

    .line 73
    .line 74
    invoke-direct/range {v0 .. v10}, Lhg5;-><init>(Lpg5;Ljava/util/ArrayList;Lox0;Lhx5;Ldc6;Ljava/lang/String;ZZJ)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    move-object p0, v0

    .line 84
    invoke-static {p0}, Lki8;->c(Lrg5;)Ljava/util/concurrent/CompletableFuture;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method
