.class public abstract Lt05;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lsa1;Ljava/util/Set;Lmt3;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lq05;->DEVICE:Lq05;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 11
    .line 12
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f1301fa

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lpw5;

    .line 24
    .line 25
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lq05;->CLOUD:Lq05;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const v3, 0x7f130106

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v3, Lpw5;

    .line 46
    .line 47
    invoke-direct {v3, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    filled-new-array {v2, v3}, [Lpw5;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Ljava/util/Map$Entry;

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_0

    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 106
    .line 107
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lhv1;

    .line 111
    .line 112
    const v3, 0x7f140160

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, p0, v3}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 116
    .line 117
    .line 118
    new-instance v4, Ls35;

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    invoke-direct {v4, p0, v3, v1, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 122
    .line 123
    .line 124
    const v1, 0x7f1304da

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v1}, Lv75;->v(I)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const/4 v3, 0x0

    .line 135
    new-array v3, v3, [Ljava/lang/String;

    .line 136
    .line 137
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, [Ljava/lang/CharSequence;

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    new-instance v6, Ljava/util/ArrayList;

    .line 148
    .line 149
    const/16 v7, 0xa

    .line 150
    .line 151
    invoke-static {v3, v7}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-eqz v7, :cond_2

    .line 167
    .line 168
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    check-cast v7, Ljava/lang/String;

    .line 173
    .line 174
    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_2
    invoke-static {v6}, Lel1;->r1(Ljava/util/ArrayList;)[Z

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    new-instance v3, Ls05;

    .line 191
    .line 192
    invoke-direct {v3, v0, p0, v2}, Ls05;-><init>(Ljava/util/Map;Lsa1;Ljava/util/LinkedHashMap;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v1, p1, v3}, Lv75;->o([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 196
    .line 197
    .line 198
    new-instance p0, Lwm3;

    .line 199
    .line 200
    const/4 p1, 0x1

    .line 201
    invoke-direct {p0, p1, p2, v2}, Lwm3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    const p1, 0x7f1303e6

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, p1, p0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 208
    .line 209
    .line 210
    const p0, 0x7f1300f1

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, p0, v5}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 217
    .line 218
    .line 219
    return-void
.end method
