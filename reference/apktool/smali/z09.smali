.class public final Lz09;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lb05;)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lz09;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz09;->b:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iput-object p2, p0, Lz09;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw00;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lz09;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lz09;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lz09;->b:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 5

    .line 1
    iget v0, p0, Lz09;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->n()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object p1, p0, Lz09;->b:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 13
    .line 14
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    iget-boolean v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Z

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    xor-int/2addr v1, v2

    .line 20
    const-string v3, "Result has already been consumed."

    .line 21
    .line 22
    invoke-static {v3, v1}, Lly8;->k(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b:Ljava/util/concurrent/CountDownLatch;

    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    invoke-virtual {v1, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    sget-object v0, Lcom/google/android/gms/common/api/Status;->n:Lcom/google/android/gms/common/api/Status;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const-string v1, "Result is not ready."

    .line 51
    .line 52
    invoke-static {v1, v0}, Lly8;->k(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v0

    .line 58
    :try_start_1
    iget-boolean v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Z

    .line 59
    .line 60
    xor-int/2addr v1, v2

    .line 61
    const-string v3, "Result has already been consumed."

    .line 62
    .line 63
    invoke-static {v3, v1}, Lly8;->k(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const-string v3, "Result is not ready."

    .line 71
    .line 72
    invoke-static {v3, v1}, Lly8;->k(Ljava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e:Lfn6;

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    iput-object v3, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e:Lfn6;

    .line 79
    .line 80
    iput-boolean v2, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Z

    .line 81
    .line 82
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 84
    .line 85
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_1

    .line 90
    .line 91
    invoke-static {v1}, Lly8;->h(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lz09;->c:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 97
    .line 98
    invoke-virtual {p0, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    invoke-static {}, Le6;->d()V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    throw p0

    .line 109
    :cond_2
    iget-object p0, p0, Lz09;->c:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 112
    .line 113
    invoke-static {p1}, Lrs9;->f(Lcom/google/android/gms/common/api/Status;)Lre;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void

    .line 121
    :pswitch_0
    iget-object p1, p0, Lz09;->c:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p1, Lw00;

    .line 124
    .line 125
    iget-object p1, p1, Lw00;->b:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p1, Ljava/util/Map;

    .line 128
    .line 129
    iget-object p0, p0, Lz09;->b:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 130
    .line 131
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
