.class public abstract Lez2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Lqz8;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lez2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-boolean v1, p0, Lez2;->c:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public abstract a(Lqc6;)Lez2;
.end method

.method public abstract b(Lk31;Lqc6;)Lpa2;
.end method

.method public abstract c(Lwc2;)V
.end method

.method public abstract d(Lpa2;)V
.end method

.method public abstract e()Lqc6;
.end method

.method public abstract f(Lez2;)Z
.end method

.method public abstract g(I)Z
.end method

.method public final h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lez2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_8

    .line 10
    .line 11
    iget-object v0, p0, Lez2;->b:Lqz8;

    .line 12
    .line 13
    if-eqz v0, :cond_8

    .line 14
    .line 15
    iget-object v3, v0, Lqz8;->a:Ljava/util/HashMap;

    .line 16
    .line 17
    monitor-enter v3

    .line 18
    :try_start_0
    iget-object v4, v0, Lqz8;->a:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/util/List;

    .line 25
    .line 26
    move v5, v1

    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ge v5, v6, :cond_1

    .line 34
    .line 35
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-ne v6, p0, :cond_0

    .line 40
    .line 41
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move v5, v2

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_5

    .line 48
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v5, v1

    .line 52
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    iget-object v4, v0, Lqz8;->a:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {v4, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_2
    if-nez v5, :cond_4

    .line 64
    .line 65
    iget-boolean v4, p0, Lez2;->c:Z

    .line 66
    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move v2, v1

    .line 71
    :cond_4
    :goto_2
    invoke-static {v2}, Lzm5;->s(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lez2;->e()Lqc6;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lqc6;->b()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_7

    .line 83
    .line 84
    invoke-virtual {p0}, Lez2;->e()Lqc6;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v2, v2, Lqc6;->a:Lgy5;

    .line 89
    .line 90
    invoke-static {v2}, Lqc6;->a(Lgy5;)Lqc6;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p0, v2}, Lez2;->a(Lqc6;)Lez2;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-object v4, v0, Lqz8;->a:Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/util/List;

    .line 105
    .line 106
    if-eqz v4, :cond_7

    .line 107
    .line 108
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-ge v1, v5, :cond_6

    .line 113
    .line 114
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    if-ne v5, p0, :cond_5

    .line 119
    .line 120
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    iget-object v0, v0, Lqz8;->a:Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :cond_7
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lez2;->b:Lqz8;

    .line 141
    .line 142
    return-void

    .line 143
    :goto_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    throw p0

    .line 145
    :cond_8
    return-void
.end method
