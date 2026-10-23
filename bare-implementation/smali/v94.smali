.class public final Lv94;
.super Lxg7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final b()Ljava/util/Collection;
    .locals 0

    .line 1
    const-string p0, "img"

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final d(Lj75;Ldi4;Lq64;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-virtual {p3}, Lq64;->a()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "src"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p1, Lj75;->k:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lky3;

    .line 24
    .line 25
    const-class v2, Ls94;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lky3;->a(Ljava/lang/Class;)Lsj7;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    :goto_0
    return-object v1

    .line 34
    :cond_1
    iget-object v2, p1, Lj75;->e:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lhx0;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Lq64;->a()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    const-string v2, "style"

    .line 46
    .line 47
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const-string v4, "height"

    .line 58
    .line 59
    const-string v5, "width"

    .line 60
    .line 61
    if-nez v3, :cond_5

    .line 62
    .line 63
    new-instance v3, Lo62;

    .line 64
    .line 65
    invoke-direct {v3, v2}, Lo62;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Ln62;

    .line 69
    .line 70
    invoke-direct {v2, v3}, Ln62;-><init>(Lo62;)V

    .line 71
    .line 72
    .line 73
    move-object v3, v1

    .line 74
    move-object v6, v3

    .line 75
    :cond_2
    invoke-virtual {v2}, Ln62;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_6

    .line 80
    .line 81
    invoke-virtual {v2}, Ln62;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Lh80;

    .line 86
    .line 87
    iget-object v8, v7, Lh80;->b:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v8, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_3

    .line 96
    .line 97
    iget-object v3, v7, Lh80;->c:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v3, Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v3}, Llk;->t(Ljava/lang/String;)Lca4;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_4

    .line 111
    .line 112
    iget-object v6, v7, Lh80;->c:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v6, Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v6}, Llk;->t(Ljava/lang/String;)Lca4;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    :cond_4
    :goto_1
    if-eqz v3, :cond_2

    .line 121
    .line 122
    if-eqz v6, :cond_2

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    move-object v3, v1

    .line 126
    move-object v6, v3

    .line 127
    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 128
    .line 129
    if-eqz v6, :cond_7

    .line 130
    .line 131
    new-instance v1, Lda4;

    .line 132
    .line 133
    invoke-direct {v1, v3, v6}, Lda4;-><init>(Lca4;Lca4;)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    if-nez v3, :cond_8

    .line 138
    .line 139
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v2}, Llk;->t(Ljava/lang/String;)Lca4;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    :cond_8
    if-nez v6, :cond_9

    .line 150
    .line 151
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    check-cast p3, Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {p3}, Llk;->t(Ljava/lang/String;)Lca4;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    :cond_9
    if-nez v3, :cond_a

    .line 162
    .line 163
    if-nez v6, :cond_a

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_a
    new-instance v1, Lda4;

    .line 167
    .line 168
    invoke-direct {v1, v3, v6}, Lda4;-><init>(Lca4;Lca4;)V

    .line 169
    .line 170
    .line 171
    :goto_3
    sget-object p3, Lxx3;->b:Lq86;

    .line 172
    .line 173
    invoke-virtual {p3, p2, p0}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    sget-object p0, Lxx3;->d:Lq86;

    .line 177
    .line 178
    invoke-virtual {p0, p2, v1}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    sget-object p0, Lxx3;->c:Lq86;

    .line 182
    .line 183
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 184
    .line 185
    invoke-virtual {p0, p2, p3}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v0, p1, p2}, Lsj7;->a(Lj75;Ldi4;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    return-object p0
.end method
