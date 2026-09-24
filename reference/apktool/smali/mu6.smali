.class public final Lmu6;
.super Ltt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final k:Ll15;


# instance fields
.field public e:Lla;

.field public f:Ltf7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lmu6;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lmu6;->k:Ll15;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final H(Lst6;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lmu6;->e:Lla;

    .line 2
    .line 3
    iget-object v1, p1, Lev6;->a:Ldv6;

    .line 4
    .line 5
    iget-object v2, p1, Lev6;->a:Ldv6;

    .line 6
    .line 7
    move-object v3, v1

    .line 8
    check-cast v3, Lut6;

    .line 9
    .line 10
    iget-wide v4, v3, Lut6;->f:J

    .line 11
    .line 12
    const-wide/16 v6, -0x1

    .line 13
    .line 14
    cmp-long v4, v4, v6

    .line 15
    .line 16
    sget-object v5, Lmu6;->k:Ll15;

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    const-string v0, "Message ID is 0xFFFFFFFFFFFFFFFF, no verification necessary"

    .line 21
    .line 22
    invoke-interface {v5, v0}, Ll15;->k(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lol1;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    instance-of v4, p1, Lts6;

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    const-string v0, "Passthrough Signature Verification as packet is decrypted"

    .line 38
    .line 39
    invoke-interface {v5, v0}, Ll15;->k(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Lol1;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-wide v3, v3, Lut6;->k:J

    .line 51
    .line 52
    sget-object v8, Lkt6;->c:Lkt6;

    .line 53
    .line 54
    invoke-static {v3, v4, v8}, Lsz8;->H(JLsx2;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_6

    .line 59
    .line 60
    move-object v2, v1

    .line 61
    check-cast v2, Lut6;

    .line 62
    .line 63
    iget-wide v3, v2, Lut6;->h:J

    .line 64
    .line 65
    const-wide/16 v6, 0x0

    .line 66
    .line 67
    cmp-long v6, v3, v6

    .line 68
    .line 69
    if-eqz v6, :cond_5

    .line 70
    .line 71
    iget-object v6, v2, Lut6;->e:Lit6;

    .line 72
    .line 73
    sget-object v7, Lit6;->c:Lit6;

    .line 74
    .line 75
    if-ne v6, v7, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v0, v6}, Lla;->c(Ljava/lang/Long;)Lj87;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    const-string v0, "Could not find session << {} >> for packet {}."

    .line 89
    .line 90
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v5, v2, p1, v0}, Ll15;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p0, Lol1;

    .line 100
    .line 101
    new-instance p1, Lkd2;

    .line 102
    .line 103
    invoke-direct {p1, v1}, Lkd2;-><init>(Ldv6;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    iget-object v3, p0, Lmu6;->f:Ltf7;

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    invoke-virtual {v0, v2, v4}, Lj87;->j(Lut6;Z)Ljavax/crypto/SecretKey;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v3, p1, v0}, Ltf7;->b(Lst6;Ljavax/crypto/SecretKey;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    const-string v0, "Signature for packet {} verified."

    .line 124
    .line 125
    invoke-interface {v5, p1, v0}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p0, Lol1;

    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_4
    const-string v0, "Invalid packet signature for packet {}"

    .line 137
    .line 138
    invoke-interface {v5, p1, v0}, Ll15;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast p0, Lol1;

    .line 144
    .line 145
    new-instance p1, Lkd2;

    .line 146
    .line 147
    invoke-direct {p1, v1}, Lkd2;-><init>(Ldv6;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_5
    :goto_0
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p0, Lol1;

    .line 157
    .line 158
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_6
    move-object v3, v1

    .line 163
    check-cast v3, Lut6;

    .line 164
    .line 165
    iget-wide v9, v3, Lut6;->k:J

    .line 166
    .line 167
    invoke-static {v9, v10, v8}, Lsz8;->H(JLsx2;)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_9

    .line 172
    .line 173
    move-object v4, v2

    .line 174
    check-cast v4, Lut6;

    .line 175
    .line 176
    iget-wide v8, v4, Lut6;->k:J

    .line 177
    .line 178
    sget-object v10, Lkt6;->b:Lkt6;

    .line 179
    .line 180
    invoke-static {v8, v9, v10}, Lsz8;->H(JLsx2;)Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-eqz v8, :cond_7

    .line 185
    .line 186
    iget-wide v8, v4, Lut6;->j:J

    .line 187
    .line 188
    const-wide/16 v10, 0x103

    .line 189
    .line 190
    cmp-long v4, v8, v10

    .line 191
    .line 192
    if-nez v4, :cond_7

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_7
    check-cast v2, Lut6;

    .line 196
    .line 197
    iget-wide v8, v2, Lut6;->f:J

    .line 198
    .line 199
    cmp-long v4, v8, v6

    .line 200
    .line 201
    if-nez v4, :cond_8

    .line 202
    .line 203
    iget-object v2, v2, Lut6;->e:Lit6;

    .line 204
    .line 205
    sget-object v4, Lit6;->G:Lit6;

    .line 206
    .line 207
    if-ne v2, v4, :cond_8

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_8
    iget-wide v2, v3, Lut6;->h:J

    .line 211
    .line 212
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v0, v2}, Lla;->c(Ljava/lang/Long;)Lj87;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    if-eqz v0, :cond_9

    .line 221
    .line 222
    iget-object v0, v0, Lj87;->t:Ln87;

    .line 223
    .line 224
    iget-boolean v0, v0, Ln87;->a:Z

    .line 225
    .line 226
    if-eqz v0, :cond_9

    .line 227
    .line 228
    const-string v0, "Illegal request, session requires message signing, but packet {} is not signed."

    .line 229
    .line 230
    invoke-interface {v5, p1, v0}, Ll15;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast p0, Lol1;

    .line 236
    .line 237
    new-instance p1, Lkd2;

    .line 238
    .line 239
    invoke-direct {p1, v1}, Lkd2;-><init>(Ldv6;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :cond_9
    :goto_1
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast p0, Lol1;

    .line 249
    .line 250
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V

    .line 251
    .line 252
    .line 253
    return-void
.end method
