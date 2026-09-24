.class public Lwh6;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ls74;


# direct methods
.method public constructor <init>(Lyr7;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, p1, v0}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Lrd5;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lyr7;

    .line 4
    .line 5
    iget-object v0, p0, Lyr7;->a:Lnd5;

    .line 6
    .line 7
    iget-object v4, v0, Lnd5;->a:Ljava/lang/reflect/Method;

    .line 8
    .line 9
    :try_start_0
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-virtual {v4, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    move-object p2, v0

    .line 19
    move-object v2, p2

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    move-object p2, v0

    .line 23
    move-object v5, p1

    .line 24
    move-object v2, p2

    .line 25
    move-object v6, p3

    .line 26
    goto :goto_2

    .line 27
    :catch_1
    move-exception v0

    .line 28
    move-object v5, p1

    .line 29
    move-object v6, p3

    .line 30
    move-object v2, v0

    .line 31
    goto :goto_4

    .line 32
    :catch_2
    move-exception v0

    .line 33
    move-object p2, v0

    .line 34
    move-object v5, p1

    .line 35
    move-object v2, p2

    .line 36
    move-object v6, p3

    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :goto_0
    new-instance v1, Lcy6;

    .line 40
    .line 41
    const-string v3, "Error during invocation of message handler. The handler code threw an exception"

    .line 42
    .line 43
    move-object v5, p1

    .line 44
    move-object v6, p3

    .line 45
    invoke-direct/range {v1 .. v6}, Lcy6;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;Lrd5;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lyr7;->b:Ljava/util/Collection;

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lq84;

    .line 65
    .line 66
    invoke-interface {p1, v1}, Lq84;->a(Lcy6;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_3
    move-exception v0

    .line 71
    move-object v5, p1

    .line 72
    move-object v6, p3

    .line 73
    move-object p2, v0

    .line 74
    move-object v2, p2

    .line 75
    :goto_2
    new-instance v1, Lcy6;

    .line 76
    .line 77
    const-string v3, "Error during invocation of message handler. There might be an access rights problem. Do you use non public inner classes?"

    .line 78
    .line 79
    invoke-direct/range {v1 .. v6}, Lcy6;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;Lrd5;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lyr7;->b:Ljava/util/Collection;

    .line 83
    .line 84
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_0

    .line 93
    .line 94
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lq84;

    .line 99
    .line 100
    invoke-interface {p1, v1}, Lq84;->a(Lcy6;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :goto_4
    new-instance v1, Lcy6;

    .line 105
    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string p3, "Error during invocation of message handler. Wrong arguments passed to method. Was: "

    .line 109
    .line 110
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p2, "Expected: "

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    const/4 p3, 0x0

    .line 130
    aget-object p2, p2, p3

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-direct/range {v1 .. v6}, Lcy6;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;Lrd5;)V

    .line 140
    .line 141
    .line 142
    iget-object p0, p0, Lyr7;->b:Ljava/util/Collection;

    .line 143
    .line 144
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_0

    .line 153
    .line 154
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Lq84;

    .line 159
    .line 160
    invoke-interface {p1, v1}, Lq84;->a(Lcy6;)V

    .line 161
    .line 162
    .line 163
    goto :goto_5

    .line 164
    :catch_4
    move-exception v0

    .line 165
    move-object v5, p1

    .line 166
    move-object v6, p3

    .line 167
    move-object p2, v0

    .line 168
    move-object v2, p2

    .line 169
    :goto_6
    new-instance v1, Lcy6;

    .line 170
    .line 171
    const-string v3, "Error during invocation of message handler. The class or method is not accessible"

    .line 172
    .line 173
    invoke-direct/range {v1 .. v6}, Lcy6;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;Lrd5;)V

    .line 174
    .line 175
    .line 176
    iget-object p0, p0, Lyr7;->b:Ljava/util/Collection;

    .line 177
    .line 178
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_0

    .line 187
    .line 188
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    check-cast p1, Lq84;

    .line 193
    .line 194
    invoke-interface {p1, v1}, Lq84;->a(Lcy6;)V

    .line 195
    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_0
    return-void
.end method
