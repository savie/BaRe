.class public abstract Lpg5$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field public a:Ldn6;

.field public b:Ljava/util/Iterator;

.field public c:Ljava/util/Iterator;

.field public d:Ljava/util/Iterator;

.field public e:Z

.field public f:Lxx4;

.field public k:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lpg5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lpg5$b;->e:Z

    .line 6
    .line 7
    return-void
.end method

.method public synthetic constructor <init>(Lpg5;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lpg5$b;-><init>(Lpg5;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lpg5$b;->b()V
    :try_end_0
    .catch Lrg5; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    goto :goto_0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    goto :goto_2

    .line 8
    :catch_0
    move-exception v0

    .line 9
    :try_start_1
    new-instance v1, Ldn6;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ldn6;-><init>(Lrg5;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lpg5$b;->a:Ldn6;

    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Lpg5$b;->f:Lxx4;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lxx4;->b()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lpg5$b;->b:Ljava/util/Iterator;

    .line 29
    .line 30
    iget-object v0, p0, Lpg5$b;->f:Lxx4;

    .line 31
    .line 32
    invoke-virtual {v0}, Lxx4;->c()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lpg5$b;->c:Ljava/util/Iterator;

    .line 41
    .line 42
    iget-object v0, p0, Lpg5$b;->f:Lxx4;

    .line 43
    .line 44
    invoke-virtual {v0}, Lxx4;->a()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lpg5$b;->d:Ljava/util/Iterator;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lpg5$b;->b:Ljava/util/Iterator;

    .line 60
    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lpg5$b;->c:Ljava/util/Iterator;

    .line 66
    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lpg5$b;->d:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    :goto_1
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw v0
.end method

.method public abstract b()V
.end method

.method public final hasNext()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lpg5$b;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lpg5$b;->a:Ldn6;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lpg5$b;->b:Ljava/util/Iterator;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lpg5$b;->c:Ljava/util/Iterator;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lpg5$b;->d:Ljava/util/Iterator;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lpg5$b;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lpg5$b;->a:Ldn6;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lpg5$b;->b:Ljava/util/Iterator;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lpg5$b;->c:Ljava/util/Iterator;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lpg5$b;->d:Ljava/util/Iterator;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lpg5$b;->f:Lxx4;

    .line 55
    .line 56
    invoke-virtual {v0}, Lxx4;->f()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Lpg5$b;->a()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lpg5$b;->a:Ldn6;

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lpg5$b;->b:Ljava/util/Iterator;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget-object v0, p0, Lpg5$b;->c:Ljava/util/Iterator;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    iget-object v0, p0, Lpg5$b;->d:Ljava/util/Iterator;

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    :goto_0
    return v2

    .line 98
    :cond_6
    iput-boolean v2, p0, Lpg5$b;->e:Z

    .line 99
    .line 100
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lpg5$b;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_7

    .line 5
    .line 6
    iget-object v0, p0, Lpg5$b;->a:Ldn6;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lpg5$b;->b:Ljava/util/Iterator;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lpg5$b;->c:Ljava/util/Iterator;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lpg5$b;->d:Ljava/util/Iterator;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lpg5$b;->a()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lpg5$b;->a:Ldn6;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lpg5$b;->b:Ljava/util/Iterator;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lpg5$b;->c:Ljava/util/Iterator;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lpg5$b;->d:Ljava/util/Iterator;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lpg5$b;->f:Lxx4;

    .line 54
    .line 55
    invoke-virtual {v0}, Lxx4;->f()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0}, Lpg5$b;->a()V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lpg5$b;->a:Ldn6;

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iput-boolean v2, p0, Lpg5$b;->e:Z

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_2
    iget-object v0, p0, Lpg5$b;->b:Ljava/util/Iterator;

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    iget-object v0, p0, Lpg5$b;->b:Ljava/util/Iterator;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lqg4;

    .line 87
    .line 88
    iget-object v3, p0, Lpg5$b;->f:Lxx4;

    .line 89
    .line 90
    invoke-virtual {v3}, Lxx4;->e()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v0, v3}, Lqg4;->k(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lqg4;->h()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iput-object v3, p0, Lpg5$b;->k:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    iget-object v0, p0, Lpg5$b;->c:Ljava/util/Iterator;

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    iget-object v0, p0, Lpg5$b;->c:Ljava/util/Iterator;

    .line 113
    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lqg4;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    iget-object v0, p0, Lpg5$b;->d:Ljava/util/Iterator;

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    iget-object v0, p0, Lpg5$b;->d:Ljava/util/Iterator;

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lxx4$a;

    .line 136
    .line 137
    invoke-virtual {v0}, Lxx4$a;->a()Lqg4;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    goto :goto_0

    .line 142
    :cond_5
    move-object v0, v1

    .line 143
    :goto_0
    if-eqz v0, :cond_6

    .line 144
    .line 145
    iget-object p0, p0, Lpg5$b;->f:Lxx4;

    .line 146
    .line 147
    invoke-virtual {p0}, Lxx4;->e()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {v0, p0}, Lqg4;->k(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance p0, Ldn6;

    .line 155
    .line 156
    invoke-direct {p0, v0}, Ldn6;-><init>(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_6
    iput-boolean v2, p0, Lpg5$b;->e:Z

    .line 161
    .line 162
    invoke-static {}, Lm0;->d()V

    .line 163
    .line 164
    .line 165
    return-object v1

    .line 166
    :cond_7
    invoke-static {}, Lm0;->d()V

    .line 167
    .line 168
    .line 169
    return-object v1
.end method

.method public final remove()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
