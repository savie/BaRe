.class public final Lvb;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 20
    iput p1, p0, Lvb;->a:I

    iput-object p2, p0, Lvb;->b:Ljava/lang/Object;

    iput-object p3, p0, Lvb;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lny2;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lvb;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lvb;->c:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance p1, Lix0;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {p1, v0, v1}, Lix0;-><init>(IZ)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lvb;->b:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lq19;Lf29;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lvb;->a:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvb;->c:Ljava/lang/Object;

    iput-object p2, p0, Lvb;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lvb;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lvb;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ldq0;

    .line 10
    .line 11
    iget-object p0, p0, Lvb;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lyq0;

    .line 14
    .line 15
    iget-object v2, v0, Ldq0;->f:Lc49;

    .line 16
    .line 17
    iget-object v2, v2, Lc49;->b:Lc6;

    .line 18
    .line 19
    iget-object v0, v0, Ldq0;->f:Lc49;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v0, v0, Lc49;->b:Lc6;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v1}, Lc6;->o(Lyq0;Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p0, "BillingClient"

    .line 33
    .line 34
    const-string v0, "No valid listener is set in BroadcastManager"

    .line 35
    .line 36
    invoke-static {p0, v0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lvb;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lq19;

    .line 43
    .line 44
    iget-object p0, p0, Lvb;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lf29;

    .line 47
    .line 48
    iget-object v2, p0, Lf29;->b:Lhs1;

    .line 49
    .line 50
    invoke-virtual {v2}, Lhs1;->n()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_6

    .line 55
    .line 56
    iget-object p0, p0, Lf29;->c:Lo29;

    .line 57
    .line 58
    invoke-static {p0}, Lly8;->h(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lo29;->c:Lhs1;

    .line 62
    .line 63
    invoke-virtual {v2}, Lhs1;->n()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_1

    .line 68
    .line 69
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    new-instance v1, Ljava/lang/Exception;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v3, "SignInCoordinator"

    .line 79
    .line 80
    const-string v4, "Sign-in succeeded with resolve account failure: "

    .line 81
    .line 82
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {v3, p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    iget-object p0, v0, Lq19;->n:Lw86;

    .line 90
    .line 91
    invoke-virtual {p0, v2}, Lw86;->b(Lhs1;)V

    .line 92
    .line 93
    .line 94
    iget-object p0, v0, Lq19;->k:Lif7;

    .line 95
    .line 96
    invoke-virtual {p0}, Laz3;->m()V

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_1
    iget-object v2, v0, Lq19;->n:Lw86;

    .line 101
    .line 102
    iget-object p0, p0, Lo29;->b:Landroid/os/IBinder;

    .line 103
    .line 104
    if-nez p0, :cond_2

    .line 105
    .line 106
    move-object v3, v1

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    sget v3, Lx6;->b:I

    .line 109
    .line 110
    const-string v3, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 111
    .line 112
    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    instance-of v4, v3, Ln74;

    .line 117
    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    check-cast v3, Ln74;

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    new-instance v3, Luv9;

    .line 124
    .line 125
    invoke-direct {v3, p0}, Luv9;-><init>(Landroid/os/IBinder;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    iget-object p0, v0, Lq19;->e:Ljava/util/Set;

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    if-nez p0, :cond_4

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    iput-object v3, v2, Lw86;->d:Ljava/lang/Object;

    .line 139
    .line 140
    iput-object p0, v2, Lw86;->e:Ljava/lang/Object;

    .line 141
    .line 142
    iget-boolean v1, v2, Lw86;->a:Z

    .line 143
    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    iget-object v1, v2, Lw86;->b:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v1, Lne;

    .line 149
    .line 150
    invoke-interface {v1, v3, p0}, Lne;->k(Ln74;Ljava/util/Set;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    :goto_2
    new-instance p0, Ljava/lang/Exception;

    .line 155
    .line 156
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v3, "GoogleApiManager"

    .line 160
    .line 161
    const-string v4, "Received null response from onSignInSuccess"

    .line 162
    .line 163
    invoke-static {v3, v4, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .line 165
    .line 166
    new-instance p0, Lhs1;

    .line 167
    .line 168
    const/4 v3, 0x4

    .line 169
    invoke-direct {p0, v3, v1, v1}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, p0}, Lw86;->b(Lhs1;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_6
    iget-object p0, v0, Lq19;->n:Lw86;

    .line 177
    .line 178
    invoke-virtual {p0, v2}, Lw86;->b(Lhs1;)V

    .line 179
    .line 180
    .line 181
    :cond_7
    :goto_3
    iget-object p0, v0, Lq19;->k:Lif7;

    .line 182
    .line 183
    invoke-virtual {p0}, Laz3;->m()V

    .line 184
    .line 185
    .line 186
    :goto_4
    return-void

    .line 187
    :pswitch_1
    iget-object v0, p0, Lvb;->b:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v0, Llq3;

    .line 190
    .line 191
    iget-object p0, p0, Lvb;->c:Ljava/lang/Object;

    .line 192
    .line 193
    invoke-virtual {v0, p0}, Llq3;->accept(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :pswitch_2
    iget-object v0, p0, Lvb;->b:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v0, Lix0;

    .line 200
    .line 201
    invoke-virtual {v0}, Lix0;->g()Lwy5;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-eqz v0, :cond_8

    .line 206
    .line 207
    iget-object p0, p0, Lvb;->c:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast p0, Lny2;

    .line 210
    .line 211
    invoke-virtual {p0, v0}, Lny2;->c(Lwy5;)V

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_8
    const-string p0, "No pending post available"

    .line 216
    .line 217
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :goto_5
    return-void

    .line 221
    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 222
    .line 223
    iget-object v1, p0, Lvb;->b:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v1, Ljava/lang/String;

    .line 226
    .line 227
    iget-object p0, p0, Lvb;->c:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast p0, Ljava/lang/Throwable;

    .line 230
    .line 231
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
