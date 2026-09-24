.class public final synthetic Lm96;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public final synthetic a:Llh6;

.field public final synthetic b:Ljh6;

.field public final synthetic c:Ljh6;

.field public final synthetic d:Ljh6;


# direct methods
.method public synthetic constructor <init>(Llh6;Ljh6;Ljh6;Ljh6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm96;->a:Llh6;

    .line 5
    .line 6
    iput-object p2, p0, Lm96;->b:Ljh6;

    .line 7
    .line 8
    iput-object p3, p0, Lm96;->c:Ljh6;

    .line 9
    .line 10
    iput-object p4, p0, Lm96;->d:Ljh6;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    check-cast p3, Lp96;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq p1, v0, :cond_3

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    if-eq p1, v0, :cond_2

    .line 24
    .line 25
    if-eq p1, v1, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    if-eq p1, v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p3, p2}, Lp96;->e(I)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p3, p2}, Lp96;->d(I)J

    .line 36
    .line 37
    .line 38
    move-result-wide p1

    .line 39
    long-to-int p1, p1

    .line 40
    iget-object p0, p0, Lm96;->d:Ljh6;

    .line 41
    .line 42
    iput p1, p0, Ljh6;->a:I

    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_1
    invoke-virtual {p3, p2}, Lp96;->d(I)J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    long-to-int p1, p1

    .line 51
    iget-object p0, p0, Lm96;->c:Ljh6;

    .line 52
    .line 53
    iput p1, p0, Ljh6;->a:I

    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_2
    invoke-virtual {p3, p2}, Lp96;->d(I)J

    .line 58
    .line 59
    .line 60
    move-result-wide p1

    .line 61
    long-to-int p1, p1

    .line 62
    iget-object p0, p0, Lm96;->b:Ljh6;

    .line 63
    .line 64
    iput p1, p0, Ljh6;->a:I

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_3
    invoke-virtual {p3, p2}, Lp96;->b(I)[B

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p2, Llh6;

    .line 73
    .line 74
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance p3, Llh6;

    .line 78
    .line 79
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lp96;

    .line 83
    .line 84
    invoke-direct {v0, p1}, Lp96;-><init>([B)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Ln96;

    .line 88
    .line 89
    invoke-direct {p1, p2, p3}, Ln96;-><init>(Llh6;Llh6;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Lp96;->a(Lrt3;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p2, Llh6;->a:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Ljava/lang/String;

    .line 98
    .line 99
    const/4 p2, 0x0

    .line 100
    if-eqz p1, :cond_a

    .line 101
    .line 102
    iget-object p3, p3, Llh6;->a:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p3, [B

    .line 105
    .line 106
    if-eqz p3, :cond_9

    .line 107
    .line 108
    sget-object v0, Lj48;->AES_SIV:Lj48;

    .line 109
    .line 110
    invoke-virtual {v0}, Lj48;->getTypeUrl()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    invoke-virtual {v0}, Lj48;->getKeyValueFieldNumber()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    goto :goto_0

    .line 125
    :cond_4
    sget-object v0, Lj48;->AES_GCM:Lj48;

    .line 126
    .line 127
    invoke-virtual {v0}, Lj48;->getTypeUrl()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_8

    .line 136
    .line 137
    invoke-virtual {v0}, Lj48;->getKeyValueFieldNumber()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    :goto_0
    new-instance v2, Lp96;

    .line 142
    .line 143
    invoke-direct {v2, p3}, Lp96;-><init>([B)V

    .line 144
    .line 145
    .line 146
    move-object p3, p2

    .line 147
    :goto_1
    iget v3, v2, Lp96;->b:I

    .line 148
    .line 149
    iget-object v4, v2, Lp96;->a:[B

    .line 150
    .line 151
    array-length v4, v4

    .line 152
    if-ge v3, v4, :cond_6

    .line 153
    .line 154
    invoke-virtual {v2}, Lp96;->c()J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    ushr-long v5, v3, v1

    .line 159
    .line 160
    long-to-int v5, v5

    .line 161
    const-wide/16 v6, 0x7

    .line 162
    .line 163
    and-long/2addr v3, v6

    .line 164
    long-to-int v3, v3

    .line 165
    if-ne v5, v0, :cond_5

    .line 166
    .line 167
    invoke-virtual {v2, v3}, Lp96;->b(I)[B

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    goto :goto_1

    .line 172
    :cond_5
    invoke-virtual {v2, v3}, Lp96;->e(I)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_6
    if-eqz p3, :cond_7

    .line 177
    .line 178
    new-instance p2, Lpw5;

    .line 179
    .line 180
    invoke-direct {p2, p1, p3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iget-object p0, p0, Lm96;->a:Llh6;

    .line 184
    .line 185
    iput-object p2, p0, Llh6;->a:Ljava/lang/Object;

    .line 186
    .line 187
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 188
    .line 189
    return-object p0

    .line 190
    :cond_7
    const-string p0, "Missing AES key material"

    .line 191
    .line 192
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-object p2

    .line 196
    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 197
    .line 198
    const-string p2, "Unsupported key type: "

    .line 199
    .line 200
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p0

    .line 208
    :cond_9
    const-string p0, "Missing key value"

    .line 209
    .line 210
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    return-object p2

    .line 214
    :cond_a
    const-string p0, "Missing key type"

    .line 215
    .line 216
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-object p2
.end method
