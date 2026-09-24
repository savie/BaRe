.class public Lrh4;
.super Lod7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;

.field public final c:Ljava/util/ArrayList;

.field public d:Lzd7;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrh4;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lrh4;->e:Z

    return-void
.end method

.method public constructor <init>(Lzd7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lrh4;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lrh4;->e:Z

    .line 13
    .line 14
    iput-object p1, p0, Lrh4;->d:Lzd7;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)Lrh4;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ldm1;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ldm1;-><init>([Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lrh4;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public b()Lgn6;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lrh4;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lrh4;->d:Lzd7;

    .line 6
    .line 7
    iget-boolean v0, v0, Lzd7;->c:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lrh4;->a:Ljava/util/List;

    .line 17
    .line 18
    iput-object v1, p0, Lrh4;->b:Ljava/util/List;

    .line 19
    .line 20
    :cond_1
    new-instance v1, Lgn6;

    .line 21
    .line 22
    invoke-direct {v1}, Lgn6;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lrh4;->a:Ljava/util/List;

    .line 26
    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    iget-object v3, p0, Lrh4;->b:Ljava/util/List;

    .line 30
    .line 31
    if-ne v2, v3, :cond_3

    .line 32
    .line 33
    sget-object v3, Lji8;->a:Ljava/lang/Class;

    .line 34
    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lqj5;->c()Lqj5;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    sput-object v3, Lji8;->a:Ljava/lang/Class;

    .line 50
    .line 51
    :cond_2
    sget-object v3, Lji8;->a:Ljava/lang/Class;

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    iget-object v2, p0, Lrh4;->a:Ljava/util/List;

    .line 60
    .line 61
    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iput-object v2, v1, Lgn6;->a:Ljava/util/List;

    .line 66
    .line 67
    iput-object v2, v1, Lgn6;->b:Ljava/util/List;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-object v2, p0, Lrh4;->a:Ljava/util/List;

    .line 71
    .line 72
    iput-object v2, v1, Lgn6;->a:Ljava/util/List;

    .line 73
    .line 74
    iget-object v2, p0, Lrh4;->b:Ljava/util/List;

    .line 75
    .line 76
    iput-object v2, v1, Lgn6;->b:Ljava/util/List;

    .line 77
    .line 78
    :goto_1
    const/4 v2, 0x0

    .line 79
    :try_start_0
    iget-object v3, p0, Lrh4;->d:Lzd7;

    .line 80
    .line 81
    new-instance v4, Lgy7;

    .line 82
    .line 83
    iget-object v5, p0, Lrh4;->c:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v4, v5, v1}, Lgy7;-><init>(Ljava/util/ArrayList;Lgn6;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Lzd7;->execTask(Lpd7;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lrh4;->close()V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lrh4;->a:Ljava/util/List;

    .line 95
    .line 96
    iput-object v3, v1, Lgn6;->a:Ljava/util/List;

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    iget-object v2, p0, Lrh4;->b:Ljava/util/List;

    .line 102
    .line 103
    :goto_2
    iput-object v2, v1, Lgn6;->b:Ljava/util/List;

    .line 104
    .line 105
    return-object v1

    .line 106
    :catchall_0
    move-exception v3

    .line 107
    goto :goto_5

    .line 108
    :catch_0
    move-exception v3

    .line 109
    :try_start_1
    instance-of v4, v3, Lee7;

    .line 110
    .line 111
    if-eqz v4, :cond_6

    .line 112
    .line 113
    sget-object v3, Lgn6;->e:Lgn6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .line 115
    invoke-virtual {p0}, Lrh4;->close()V

    .line 116
    .line 117
    .line 118
    iget-object v4, p0, Lrh4;->a:Ljava/util/List;

    .line 119
    .line 120
    iput-object v4, v1, Lgn6;->a:Ljava/util/List;

    .line 121
    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    iget-object v2, p0, Lrh4;->b:Ljava/util/List;

    .line 126
    .line 127
    :goto_3
    iput-object v2, v1, Lgn6;->b:Ljava/util/List;

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_6
    :try_start_2
    const-string v4, "LIBSU"

    .line 131
    .line 132
    invoke-static {v4, v3}, Lji8;->k(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 133
    .line 134
    .line 135
    sget-object v3, Lgn6;->d:Lgn6;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .line 137
    invoke-virtual {p0}, Lrh4;->close()V

    .line 138
    .line 139
    .line 140
    iget-object v4, p0, Lrh4;->a:Ljava/util/List;

    .line 141
    .line 142
    iput-object v4, v1, Lgn6;->a:Ljava/util/List;

    .line 143
    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :goto_4
    return-object v3

    .line 148
    :goto_5
    invoke-virtual {p0}, Lrh4;->close()V

    .line 149
    .line 150
    .line 151
    iget-object v4, p0, Lrh4;->a:Ljava/util/List;

    .line 152
    .line 153
    iput-object v4, v1, Lgn6;->a:Ljava/util/List;

    .line 154
    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_7
    iget-object v2, p0, Lrh4;->b:Ljava/util/List;

    .line 159
    .line 160
    :goto_6
    iput-object v2, v1, Lgn6;->b:Ljava/util/List;

    .line 161
    .line 162
    throw v3
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object p0, p0, Lrh4;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lae7;

    .line 18
    .line 19
    invoke-interface {v0}, Lae7;->close()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method
