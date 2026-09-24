.class public final synthetic Lbf9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Las9;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lbf9;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lbd9;Ljava/lang/Integer;)Lvm4;
    .locals 3

    .line 1
    iget p0, p0, Lbf9;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Lqs9;

    .line 8
    .line 9
    iget-object p0, p1, Lqs9;->a:Lot9;

    .line 10
    .line 11
    iget-object p0, p0, Lot9;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lmz9;

    .line 14
    .line 15
    sget-object p1, Lbs9;->d:Lbs9;

    .line 16
    .line 17
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1, v1}, Lbs9;->a(Ljava/lang/String;)Lgs9;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object p1, p1, Lbs9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lmz9;->A()Lt69;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lmz9;->t()Llz9;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v1, v1, Lgs9;->a:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Llz9;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Llz9;->h(Lt69;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lr0a;->e:Lr0a;

    .line 63
    .line 64
    invoke-virtual {v2, p1}, Llz9;->e(Lr0a;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lj79;->b()Lk79;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lmz9;

    .line 72
    .line 73
    new-instance v1, Lot9;

    .line 74
    .line 75
    invoke-virtual {p1}, Lmz9;->B()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2}, Lau9;->a(Ljava/lang/String;)Ld2a;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-direct {v1, p1, v2}, Lot9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object p1, Lxs9;->b:Lxs9;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Lxs9;->b(Lot9;)Lbd9;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    sget-object v2, Lts9;->b:Lts9;

    .line 93
    .line 94
    invoke-virtual {v2, v1, v0}, Lts9;->a(Lbd9;Ljava/lang/Integer;)Lvm4;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Lxs9;->c(Lvm4;)Lvt9;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lpt9;

    .line 103
    .line 104
    invoke-static {}, Ljz9;->t()Liz9;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p1, Lpt9;->a:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0}, Lj79;->c()V

    .line 111
    .line 112
    .line 113
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 114
    .line 115
    check-cast v2, Ljz9;

    .line 116
    .line 117
    invoke-static {v2, v1}, Ljz9;->v(Ljz9;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p1, Lpt9;->c:Lt69;

    .line 121
    .line 122
    invoke-virtual {v0}, Lj79;->c()V

    .line 123
    .line 124
    .line 125
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 126
    .line 127
    check-cast v2, Ljz9;

    .line 128
    .line 129
    invoke-static {v2, v1}, Ljz9;->w(Ljz9;Lt69;)V

    .line 130
    .line 131
    .line 132
    iget p1, p1, Lpt9;->d:I

    .line 133
    .line 134
    invoke-virtual {v0}, Lj79;->c()V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lj79;->b:Lk79;

    .line 138
    .line 139
    check-cast v1, Ljz9;

    .line 140
    .line 141
    invoke-static {v1, p1}, Ljz9;->u(Ljz9;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Ljz9;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljz9;->A()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {p1}, Ljz9;->z()Lt69;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p1}, Ljz9;->x()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-static {v0, v1, p1, p0, p2}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    new-instance v0, Lns9;

    .line 171
    .line 172
    invoke-direct {v0, p0}, Lns9;-><init>(Lpt9;)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_0
    const-string p0, "Creating new keys is not allowed."

    .line 177
    .line 178
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :goto_0
    return-object v0

    .line 182
    :pswitch_0
    check-cast p1, Lgf9;

    .line 183
    .line 184
    iget p0, p1, Lgf9;->a:I

    .line 185
    .line 186
    const/16 v1, 0x10

    .line 187
    .line 188
    if-eq p0, v1, :cond_2

    .line 189
    .line 190
    const/16 v1, 0x20

    .line 191
    .line 192
    if-ne p0, v1, :cond_1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_1
    const-string p0, "AES key size must be 16 or 32 bytes"

    .line 196
    .line 197
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_2
    :goto_1
    new-instance v1, Lai5;

    .line 202
    .line 203
    const/16 v2, 0x8

    .line 204
    .line 205
    invoke-direct {v1, v2}, Lai5;-><init>(I)V

    .line 206
    .line 207
    .line 208
    iput-object v0, v1, Lai5;->c:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v0, v1, Lai5;->d:Ljava/lang/Object;

    .line 211
    .line 212
    iput-object p1, v1, Lai5;->b:Ljava/lang/Object;

    .line 213
    .line 214
    iput-object p2, v1, Lai5;->e:Ljava/lang/Object;

    .line 215
    .line 216
    invoke-static {p0}, Lkm8;->n(I)Lkm8;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    iput-object p0, v1, Lai5;->c:Ljava/lang/Object;

    .line 221
    .line 222
    iget p0, p1, Lgf9;->b:I

    .line 223
    .line 224
    invoke-static {p0}, Lkm8;->n(I)Lkm8;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    iput-object p0, v1, Lai5;->d:Ljava/lang/Object;

    .line 229
    .line 230
    invoke-virtual {v1}, Lai5;->B()Lte9;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    :goto_2
    return-object v0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
