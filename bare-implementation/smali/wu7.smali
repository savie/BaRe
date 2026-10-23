.class public final Lwu7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbv7;Ljava/util/HashMap;Lgy5;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lwu7;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwu7;->d:Ljava/lang/Object;

    iput-object p2, p0, Lwu7;->b:Ljava/lang/Object;

    iput-object p3, p0, Lwu7;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldq0;Lkq0;Lia9;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lwu7;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lwu7;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lwu7;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lwu7;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lwu7;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwu7;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ldq0;

    .line 9
    .line 10
    iget-object v1, p0, Lwu7;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lkq0;

    .line 13
    .line 14
    iget-object p0, p0, Lwu7;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lia9;

    .line 17
    .line 18
    const/16 v2, 0x1c

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    :try_start_0
    invoke-virtual {v0}, Ldq0;->u()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x3

    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    sget-object p0, Lle9;->j:Lyq0;

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    invoke-virtual {v0, v4, v5, p0}, Ldq0;->y(IILyq0;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0}, Lkq0;->a(Lyq0;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :catch_1
    move-exception p0

    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_0
    iget-object v4, p0, Lia9;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    const-string p0, "BillingClient"

    .line 54
    .line 55
    const-string v4, "Please provide a valid purchase token."

    .line 56
    .line 57
    invoke-static {p0, v4}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object p0, Lle9;->g:Lyq0;

    .line 61
    .line 62
    const/16 v4, 0x1a

    .line 63
    .line 64
    invoke-virtual {v0, v4, v5, p0}, Ldq0;->y(IILyq0;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p0}, Lkq0;->a(Lyq0;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    iget-boolean v4, v0, Ldq0;->n:Z

    .line 72
    .line 73
    if-nez v4, :cond_2

    .line 74
    .line 75
    sget-object p0, Lle9;->a:Lyq0;

    .line 76
    .line 77
    const/16 v4, 0x1b

    .line 78
    .line 79
    invoke-virtual {v0, v4, v5, p0}, Ldq0;->y(IILyq0;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p0}, Lkq0;->a(Lyq0;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    iget-object v4, v0, Ldq0;->a:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter v4
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    iget-object v5, v0, Ldq0;->i:Lw89;

    .line 90
    .line 91
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    if-nez v5, :cond_3

    .line 93
    .line 94
    :try_start_2
    sget-object p0, Lle9;->j:Lyq0;

    .line 95
    .line 96
    const/16 v4, 0x6b

    .line 97
    .line 98
    invoke-virtual {v0, v1, p0, v4, v3}, Ldq0;->i(Lkq0;Lyq0;ILjava/lang/Exception;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    iget-object v4, v0, Ldq0;->g:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    iget-object p0, p0, Lia9;->b:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v6, v0, Ldq0;->c:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v7, v0, Ldq0;->d:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v8, v0, Ldq0;->A:Ljava/lang/Long;

    .line 115
    .line 116
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 117
    .line 118
    .line 119
    move-result-wide v8

    .line 120
    sget v10, Lta9;->a:I

    .line 121
    .line 122
    new-instance v10, Landroid/os/Bundle;

    .line 123
    .line 124
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-static {v10, v6, v7, v8, v9}, Lta9;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)V

    .line 128
    .line 129
    .line 130
    check-cast v5, Lg89;

    .line 131
    .line 132
    invoke-virtual {v5, v4, p0, v10}, Lg89;->o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 133
    .line 134
    .line 135
    move-result-object p0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    const-string v0, "BillingClient"

    .line 137
    .line 138
    invoke-static {p0, v0}, Lta9;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    const-string v2, "BillingClient"

    .line 143
    .line 144
    invoke-static {p0, v2}, Lta9;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-static {v0, p0}, Lle9;->a(ILjava/lang/String;)Lyq0;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {v1, p0}, Lkq0;->a(Lyq0;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catchall_0
    move-exception p0

    .line 157
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 159
    :goto_0
    sget-object v4, Lle9;->h:Lyq0;

    .line 160
    .line 161
    invoke-virtual {v0, v1, v4, v2, p0}, Ldq0;->i(Lkq0;Lyq0;ILjava/lang/Exception;)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :goto_1
    sget-object v4, Lle9;->j:Lyq0;

    .line 166
    .line 167
    invoke-virtual {v0, v1, v4, v2, p0}, Ldq0;->i(Lkq0;Lyq0;ILjava/lang/Exception;)V

    .line 168
    .line 169
    .line 170
    :goto_2
    return-object v3

    .line 171
    :pswitch_0
    iget-object v0, p0, Lwu7;->b:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v0, Ljava/util/HashMap;

    .line 174
    .line 175
    invoke-static {v0}, Lnp1;->i(Ljava/util/HashMap;)Lnp1;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object v1, p0, Lwu7;->d:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v1, Lbv7;

    .line 182
    .line 183
    iget-object v2, v1, Lbv7;->g:Leo5;

    .line 184
    .line 185
    iget-object p0, p0, Lwu7;->c:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p0, Lgy5;

    .line 188
    .line 189
    invoke-virtual {v2}, Leo5;->c()V

    .line 190
    .line 191
    .line 192
    new-instance v2, Lbd5;

    .line 193
    .line 194
    sget-object v3, Leu5;->e:Leu5;

    .line 195
    .line 196
    invoke-direct {v2, v3, p0, v0}, Lbd5;-><init>(Leu5;Lgy5;Lnp1;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v1, v2}, Lbv7;->a(Lbv7;Lgu2;)Ljava/util/ArrayList;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    return-object p0

    .line 204
    nop

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
