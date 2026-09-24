.class public final Luf2;
.super Lc87;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient G:Lpw8;

.field public transient x:Ljava/util/AbstractMap;

.field public transient y:Ljava/util/ArrayList;


# direct methods
.method public static F(Lpw8;Ljava/lang/Exception;)Ljava/io/IOException;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/io/IOException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/io/IOException;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-static {p1}, Lu81;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "[no message for "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "]"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_1
    new-instance v1, Lyk4;

    .line 42
    .line 43
    invoke-direct {v1, p0, v0, p1}, Lyk4;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method


# virtual methods
.method public final E(Ljb9;Ljava/lang/Object;)Lem4;
    .locals 2

    .line 1
    instance-of v0, p2, Lem4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Lem4;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p2, Ljava/lang/Class;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Class;

    .line 14
    .line 15
    const-class v0, Lcm4;

    .line 16
    .line 17
    if-eq p2, v0, :cond_4

    .line 18
    .line 19
    invoke-static {p2}, Lu81;->o(Ljava/lang/Class;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const-class v0, Lem4;

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object p1, p0, Lc87;->a:Lv77;

    .line 35
    .line 36
    invoke-virtual {p1}, Ls65;->g()V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lu65;->G:Lu65;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ls65;->i(Lu65;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p2, p1}, Lu81;->f(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    move-object p2, p1

    .line 50
    check-cast p2, Lem4;

    .line 51
    .line 52
    :goto_0
    instance-of p1, p2, Lop0;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    move-object p1, p2

    .line 57
    check-cast p1, Lop0;

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Lop0;->t(Lc87;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-object p2

    .line 63
    :cond_3
    invoke-virtual {p1}, Ljb9;->D()Lgc8;

    .line 64
    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v0, "AnnotationIntrospector returned Class "

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p2, "; expected Class<JsonSerializer>"

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lc87;->B(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    throw v1

    .line 93
    :cond_4
    :goto_1
    return-object v1

    .line 94
    :cond_5
    invoke-virtual {p1}, Ljb9;->D()Lgc8;

    .line 95
    .line 96
    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v0, "AnnotationIntrospector returned serializer definition of type "

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p2, "; expected type JsonSerializer or Class<JsonSerializer> instead"

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Lc87;->B(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    throw v1
.end method

.method public final G(Lpw8;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iput-object p1, p0, Luf2;->G:Lpw8;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lc87;->f:Lqp5;

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lpw8;->v()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-static {p1, p0}, Luf2;->F(Lpw8;Ljava/lang/Exception;)Ljava/io/IOException;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    throw p0

    .line 20
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lc87;->o(Ljava/lang/Class;)Lem4;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lc87;->a:Lv77;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-object v3, Lx77;->c:Lx77;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lv77;->l(Lx77;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_7

    .line 40
    .line 41
    iget-object v3, v2, Lt65;->f:Lop6;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance v4, Ll81;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, v4, Ll81;->b:Ljava/lang/Class;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iput-object v5, v4, Ll81;->a:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    iput v5, v4, Ll81;->c:I

    .line 64
    .line 65
    iget-object v3, v3, Lop6;->a:Lwp4;

    .line 66
    .line 67
    iget-object v5, v3, Lwp4;->a:Lb76;

    .line 68
    .line 69
    invoke-virtual {v5, v4}, Lb76;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Lz86;

    .line 74
    .line 75
    if-eqz v5, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v2, v0}, Ls65;->c(Ljava/lang/Class;)Lgc8;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    iget-object v6, v2, Ls65;->b:Len0;

    .line 83
    .line 84
    iget-object v6, v6, Len0;->b:Ljb9;

    .line 85
    .line 86
    check-cast v6, Lxo0;

    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v5}, Lxo0;->p0(Ls65;Lgc8;)Lwo0;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    if-nez v6, :cond_2

    .line 96
    .line 97
    invoke-static {v2, v5, v2}, Lxo0;->q0(Ls65;Lgc8;Ls65;)Lhd;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-static {v2, v5, v6}, Lwo0;->d(Ls65;Lgc8;Lhd;)Lwo0;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    :cond_2
    invoke-virtual {v2}, Ls65;->d()Las5;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    iget-object v6, v6, Lwo0;->e:Lhd;

    .line 110
    .line 111
    invoke-virtual {v5, v6}, Las5;->E(Lhd;)Lz86;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-eqz v5, :cond_3

    .line 116
    .line 117
    iget-object v6, v5, Lz86;->a:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_4

    .line 124
    .line 125
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Lz86;->a(Ljava/lang/String;)Lz86;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    move-object v5, v0

    .line 134
    :cond_4
    iget-object v0, v3, Lwp4;->a:Lb76;

    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    invoke-virtual {v0, v4, v5, v3}, Lb76;->g(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lpw8;->W()V

    .line 141
    .line 142
    .line 143
    iget-object v0, v5, Lz86;->a:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v3, v5, Lz86;->c:Lz77;

    .line 146
    .line 147
    if-nez v3, :cond_6

    .line 148
    .line 149
    if-nez v2, :cond_5

    .line 150
    .line 151
    new-instance v2, Lz77;

    .line 152
    .line 153
    invoke-direct {v2, v0}, Lz77;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_1
    move-object v3, v2

    .line 157
    goto :goto_2

    .line 158
    :cond_5
    new-instance v2, Lz77;

    .line 159
    .line 160
    invoke-direct {v2, v0}, Lz77;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :goto_2
    iput-object v3, v5, Lz86;->c:Lz77;

    .line 165
    .line 166
    :cond_6
    invoke-virtual {p1, v3}, Lpw8;->r(Lz77;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, p2, p1, p0}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lpw8;->q()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :catch_1
    move-exception p0

    .line 177
    invoke-static {p1, p0}, Luf2;->F(Lpw8;Ljava/lang/Exception;)Ljava/io/IOException;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    throw p0

    .line 182
    :cond_7
    :try_start_2
    invoke-virtual {v1, p2, p1, p0}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :catch_2
    move-exception p0

    .line 187
    invoke-static {p1, p0}, Luf2;->F(Lpw8;Ljava/lang/Exception;)Ljava/io/IOException;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    throw p0
.end method

.method public final l(Ljava/lang/Object;Lv86;)Lmw8;
    .locals 7

    .line 1
    iget-object v0, p0, Luf2;->x:Ljava/util/AbstractMap;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lx77;->O:Lx77;

    .line 6
    .line 7
    iget-object v1, p0, Lc87;->a:Lv77;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lv77;->l(Lx77;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    :goto_0
    iput-object v0, p0, Luf2;->x:Ljava/util/AbstractMap;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lmw8;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    :goto_1
    iget-object v0, p0, Luf2;->y:Ljava/util/ArrayList;

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Luf2;->y:Ljava/util/ArrayList;

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x0

    .line 57
    move v2, v1

    .line 58
    :goto_2
    if-ge v2, v0, :cond_6

    .line 59
    .line 60
    iget-object v3, p0, Luf2;->y:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lir5;

    .line 67
    .line 68
    move-object v4, v3

    .line 69
    check-cast v4, Lv86;

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object v5, p2, Lv86;->a:Ljava/lang/Class;

    .line 75
    .line 76
    iget-object v6, v4, Lv86;->a:Ljava/lang/Class;

    .line 77
    .line 78
    if-ne v5, v6, :cond_4

    .line 79
    .line 80
    iget-object v5, p2, Lv86;->b:Lmp0;

    .line 81
    .line 82
    iget-object v4, v4, Lv86;->b:Lmp0;

    .line 83
    .line 84
    if-ne v5, v4, :cond_4

    .line 85
    .line 86
    const/4 v4, 0x1

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    move v4, v1

    .line 89
    :goto_3
    if-eqz v4, :cond_5

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    :goto_4
    const/4 v3, 0x0

    .line 96
    :goto_5
    if-nez v3, :cond_7

    .line 97
    .line 98
    iget-object v0, p0, Luf2;->y:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_7
    move-object p2, v3

    .line 105
    :goto_6
    new-instance v0, Lmw8;

    .line 106
    .line 107
    invoke-direct {v0, p2}, Lmw8;-><init>(Lir5;)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Luf2;->x:Ljava/util/AbstractMap;

    .line 111
    .line 112
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    return-object v0
.end method

.method public final x(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object p0, p0, Lc87;->a:Lv77;

    .line 6
    .line 7
    invoke-virtual {p0}, Ls65;->g()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lu65;->G:Lu65;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ls65;->i(Lu65;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p1, p0}, Lu81;->f(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final y(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p0

    .line 11
    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v1}, Lu81;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string v5, "\' should filter out `null` values: ("

    .line 33
    .line 34
    const-string v6, ") "

    .line 35
    .line 36
    const-string v7, "Problem determining whether filter of type \'"

    .line 37
    .line 38
    invoke-static {v7, v2, v5, v3, v6}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v3, p0, Luf2;->G:Lpw8;

    .line 54
    .line 55
    invoke-virtual {p0}, Lc87;->s()Llc8;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    sget-object v4, Llc8;->d:Ljc8;

    .line 60
    .line 61
    invoke-virtual {p0, v0, p1, v4}, Llc8;->b(Lvq;Ljava/lang/reflect/Type;Ljc8;)Lgc8;

    .line 62
    .line 63
    .line 64
    new-instance p0, Lag4;

    .line 65
    .line 66
    invoke-direct {p0, v3, v2}, Lyk4;-><init>(Lpw8;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 70
    .line 71
    .line 72
    throw p0
.end method
