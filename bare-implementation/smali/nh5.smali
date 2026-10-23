.class public final Lnh5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Ljava/util/ArrayList;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/ThreadLocal;

.field public final c:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lnh5;->d:Ljava/util/ArrayList;

    .line 8
    .line 9
    sget-object v1, Ll73;->c:Li81;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    sget-object v1, Lbl1;->b:Lyk1;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    sget-object v1, Lo65;->c:Ln65;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    sget-object v1, Lc50;->c:Lb50;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    sget-object v1, Lyf6;->a:Lxf6;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    sget-object v1, Lk81;->d:Li81;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Lkh5;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnh5;->b:Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lnh5;->c:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object p1, p1, Lkh5;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sget-object v2, Lnh5;->d:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/2addr v3, v1

    .line 35
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lnh5;->a:Ljava/util/List;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lqi4;
    .locals 2

    .line 1
    sget-object v0, Lyh8;->a:Ljava/util/Set;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lnh5;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lqi4;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lqi4;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_a

    .line 3
    .line 4
    if-eqz p2, :cond_9

    .line 5
    .line 6
    invoke-static {p1}, Lyh8;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lyh8;->f(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    move-object v1, p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    iget-object v2, p0, Lnh5;->c:Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    monitor-enter v2

    .line 33
    :try_start_0
    iget-object v3, p0, Lnh5;->c:Ljava/util/LinkedHashMap;

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lqi4;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    monitor-exit v2

    .line 44
    return-object v3

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object v2, p0, Lnh5;->b:Ljava/lang/ThreadLocal;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lmh5;

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    new-instance v2, Lmh5;

    .line 60
    .line 61
    invoke-direct {v2, p0}, Lmh5;-><init>(Lnh5;)V

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Lnh5;->b:Ljava/lang/ThreadLocal;

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v3, v2, Lmh5;->b:Ljava/util/ArrayDeque;

    .line 70
    .line 71
    iget-object v4, v2, Lmh5;->a:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    const/4 v6, 0x0

    .line 78
    move v7, v6

    .line 79
    :goto_1
    if-ge v7, v5, :cond_5

    .line 80
    .line 81
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    check-cast v8, Llh5;

    .line 86
    .line 87
    iget-object v9, v8, Llh5;->c:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-eqz v9, :cond_4

    .line 94
    .line 95
    invoke-virtual {v3, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    iget-object v0, v8, Llh5;->d:Lqi4;

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    move-object v0, v8

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    new-instance v5, Llh5;

    .line 109
    .line 110
    invoke-direct {v5, p1, p3, v1}, Llh5;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :goto_2
    if-eqz v0, :cond_6

    .line 120
    .line 121
    invoke-virtual {v2, v6}, Lmh5;->b(Z)V

    .line 122
    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_6
    :try_start_1
    iget-object p3, p0, Lnh5;->a:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    move v0, v6

    .line 132
    :goto_3
    if-ge v0, p3, :cond_8

    .line 133
    .line 134
    iget-object v1, p0, Lnh5;->a:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Lpi4;

    .line 141
    .line 142
    invoke-interface {v1, p1, p2, p0}, Lpi4;->a(Ljava/lang/reflect/Type;Ljava/util/Set;Lnh5;)Lqi4;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-nez v1, :cond_7

    .line 147
    .line 148
    add-int/lit8 v0, v0, 0x1

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    iget-object p0, v2, Lmh5;->b:Ljava/util/ArrayDeque;

    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Llh5;

    .line 158
    .line 159
    iput-object v1, p0, Llh5;->d:Lqi4;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    .line 161
    const/4 p0, 0x1

    .line 162
    invoke-virtual {v2, p0}, Lmh5;->b(Z)V

    .line 163
    .line 164
    .line 165
    return-object v1

    .line 166
    :catchall_1
    move-exception p0

    .line 167
    goto :goto_5

    .line 168
    :catch_0
    move-exception p0

    .line 169
    goto :goto_4

    .line 170
    :cond_8
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    new-instance p3, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v0, "No JsonAdapter for "

    .line 178
    .line 179
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-static {p1, p2}, Lyh8;->i(Ljava/lang/reflect/Type;Ljava/util/Set;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    :goto_4
    :try_start_3
    invoke-virtual {v2, p0}, Lmh5;->a(Ljava/lang/IllegalArgumentException;)Ljava/lang/IllegalArgumentException;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    :goto_5
    invoke-virtual {v2, v6}, Lmh5;->b(Z)V

    .line 203
    .line 204
    .line 205
    throw p0

    .line 206
    :goto_6
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    throw p0

    .line 208
    :cond_9
    const-string p0, "annotations == null"

    .line 209
    .line 210
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    return-object v0

    .line 214
    :cond_a
    const-string p0, "type == null"

    .line 215
    .line 216
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-object v0
.end method

.method public final c(Lea;Ljava/lang/reflect/Type;Ljava/util/Set;)Lqi4;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_3

    .line 3
    .line 4
    invoke-static {p2}, Lyh8;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p2}, Lyh8;->f(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-object v1, p0, Lnh5;->a:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, -0x1

    .line 19
    if-eq v2, v3, :cond_2

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :goto_0
    if-ge v2, p1, :cond_1

    .line 28
    .line 29
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lpi4;

    .line 34
    .line 35
    invoke-interface {v3, p2, p3, p0}, Lpi4;->a(Ljava/lang/reflect/Type;Ljava/util/Set;Lnh5;)Lqi4;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    return-object v3

    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {p2, p3}, Lyh8;->i(Ljava/lang/reflect/Type;Ljava/util/Set;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p1, "No next JsonAdapter for "

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    const-string p0, "Unable to skip past unknown factory "

    .line 60
    .line 61
    invoke-static {p1, p0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_3
    const-string p0, "annotations == null"

    .line 66
    .line 67
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v0
.end method
