.class public final synthetic Lut8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lbz7;

.field public final synthetic b:I

.field public final synthetic c:Liu8;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lbz7;ILiu8;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lut8;->a:Lbz7;

    .line 5
    .line 6
    iput p2, p0, Lut8;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lut8;->c:Liu8;

    .line 9
    .line 10
    iput-boolean p4, p0, Lut8;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lut8;->a:Lbz7;

    .line 2
    .line 3
    iget-object v1, v0, Lbz7;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->L()V

    .line 14
    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    iget v1, p0, Lut8;->b:I

    .line 18
    .line 19
    iget-object v3, p0, Lut8;->c:Liu8;

    .line 20
    .line 21
    if-lez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Lqo0;->h(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v3}, Liu8;->j()Lus8;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-boolean p0, p0, Lut8;->d:Z

    .line 31
    .line 32
    invoke-virtual {v1, v0, p0}, Lus8;->a(Lbz7;Z)Lod2;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object v1, Lss8;->i:Lss8;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_4

    .line 43
    .line 44
    iget-boolean v4, v0, Lbz7;->e:Z

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    sget-object v0, Lvr8;->CLOUD:Lvr8;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, v0, Lbz7;->d:Ljava/util/List;

    .line 52
    .line 53
    sget-object v4, Lq05;->CLOUD:Lq05;

    .line 54
    .line 55
    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    sget-object v0, Lvr8;->ALL:Lvr8;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    sget-object v0, Lvr8;->LOCAL:Lvr8;

    .line 65
    .line 66
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance v4, Lwr8;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, v4, Lwr8;->a:Lvr8;

    .line 75
    .line 76
    invoke-static {}, Lny2;->b()Lny2;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, v4}, Lny2;->e(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-virtual {v3}, Lqo0;->f()V

    .line 84
    .line 85
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/4 v3, 0x0

    .line 93
    const v4, 0x7f13049f

    .line 94
    .line 95
    .line 96
    const v5, 0x7f13049e

    .line 97
    .line 98
    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    instance-of v1, p0, Lps8;

    .line 103
    .line 104
    const v6, 0x7f1305b1

    .line 105
    .line 106
    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    check-cast p0, Lps8;

    .line 110
    .line 111
    iget-object p0, p0, Lps8;->i:Lgs8;

    .line 112
    .line 113
    iget-object p0, p0, Lgs8;->a:Lds8;

    .line 114
    .line 115
    sget-object v1, Lds8;->ACCESS_UNAVAILABLE:Lds8;

    .line 116
    .line 117
    if-ne p0, v1, :cond_7

    .line 118
    .line 119
    const/16 p0, 0x1e

    .line 120
    .line 121
    if-lt v0, p0, :cond_6

    .line 122
    .line 123
    move v6, v4

    .line 124
    goto :goto_1

    .line 125
    :cond_6
    move v6, v5

    .line 126
    :cond_7
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    goto :goto_2

    .line 131
    :cond_8
    sget-object v0, Lqs8;->i:Lqs8;

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_9

    .line 138
    .line 139
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    goto :goto_2

    .line 144
    :cond_9
    sget-object v0, Lrs8;->i:Lrs8;

    .line 145
    .line 146
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-eqz p0, :cond_d

    .line 151
    .line 152
    const p0, 0x7f130581

    .line 153
    .line 154
    .line 155
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    :goto_2
    if-nez v3, :cond_a

    .line 160
    .line 161
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 162
    .line 163
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    const v0, 0x7f130207

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    sget-object v1, Lzn4;->a:Lzn4;

    .line 178
    .line 179
    :goto_3
    invoke-static {p0, v0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-object v2

    .line 183
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-ne p0, v4, :cond_b

    .line 188
    .line 189
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->O()V

    .line 190
    .line 191
    .line 192
    return-object v2

    .line 193
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-ne p0, v5, :cond_c

    .line 198
    .line 199
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 200
    .line 201
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    sget-object v1, Lzn4;->a:Lzn4;

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_c
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 216
    .line 217
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    sget-object v1, Lzn4;->a:Lzn4;

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_d
    invoke-static {}, Lq;->j()V

    .line 236
    .line 237
    .line 238
    return-object v3
.end method
