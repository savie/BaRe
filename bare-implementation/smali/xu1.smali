.class public final synthetic Lxu1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lxu1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lxu1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lxu1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p3, p0, Lxu1;->a:I

    iput-object p1, p0, Lxu1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lxu1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lxu1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lxu1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Runnable;

    .line 9
    .line 10
    iget-object p0, p0, Lxu1;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ld98;

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ld98;->a()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    invoke-virtual {p0}, Ld98;->a()V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :pswitch_0
    iget-object v0, p0, Lxu1;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Ljava/lang/Runnable;

    .line 29
    .line 30
    iget-object p0, p0, Lxu1;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Lln5;

    .line 33
    .line 34
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {p0, v0}, Lln5;->o(Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :pswitch_1
    iget-object v0, p0, Lxu1;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroidx/fragment/app/g;

    .line 46
    .line 47
    iget-object p0, p0, Lxu1;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Landroidx/fragment/app/h0;

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/h0;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_2
    iget-object v0, p0, Lxu1;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lt22;

    .line 58
    .line 59
    iget-object p0, p0, Lxu1;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Llh6;

    .line 62
    .line 63
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;->$r8$lambda$vw_ntyNwI101GixVLVll1-GMkj4(Lt22;Llh6;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_3
    iget-object v0, p0, Lxu1;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;

    .line 70
    .line 71
    iget-object p0, p0, Lxu1;->c:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Lk12;

    .line 74
    .line 75
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;->$r8$lambda$Ouy92hLAUwNAoROWelNBYm7ZzyE(Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;Lk12;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_4
    iget-object v0, p0, Lxu1;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;

    .line 82
    .line 83
    iget-object p0, p0, Lxu1;->c:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p0, Lc12;

    .line 86
    .line 87
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$eKqAcBOVoI3C5613LPG-ls3vZIc(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Lc12;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_5
    iget-object v0, p0, Lxu1;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 94
    .line 95
    iget-object p0, p0, Lxu1;->c:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p0, Lk12;

    .line 98
    .line 99
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->$r8$lambda$XIRfo0sGk007R50jaDwwyr4p0aU(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;Lk12;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_6
    iget-object v0, p0, Lxu1;->b:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;

    .line 106
    .line 107
    iget-object p0, p0, Lxu1;->c:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p0, Lk12;

    .line 110
    .line 111
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->$r8$lambda$274CEehyqW22xyQS_KeKm1ZXMUE(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lk12;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :pswitch_7
    iget-object v0, p0, Lxu1;->b:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Lzy1;

    .line 118
    .line 119
    iget-object p0, p0, Lxu1;->c:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p0, Ljava/lang/String;

    .line 122
    .line 123
    iget-object v0, v0, Lzy1;->h:Lsy1;

    .line 124
    .line 125
    iget-object v0, v0, Lsy1;->d:Li75;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    const/16 v1, 0x400

    .line 131
    .line 132
    invoke-static {v1, p0}, Lbp4;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    iget-object v1, v0, Li75;->k:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 139
    .line 140
    monitor-enter v1

    .line 141
    :try_start_2
    iget-object v2, v0, Li75;->k:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v2, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Ljava/lang/String;

    .line 150
    .line 151
    const/4 v3, 0x1

    .line 152
    if-nez p0, :cond_1

    .line 153
    .line 154
    if-nez v2, :cond_0

    .line 155
    .line 156
    move v2, v3

    .line 157
    goto :goto_1

    .line 158
    :cond_0
    const/4 v2, 0x0

    .line 159
    goto :goto_1

    .line 160
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    :goto_1
    if-eqz v2, :cond_2

    .line 165
    .line 166
    monitor-exit v1

    .line 167
    goto :goto_2

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    goto :goto_3

    .line 170
    :cond_2
    iget-object v2, v0, Li75;->k:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v2, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 173
    .line 174
    invoke-virtual {v2, p0, v3}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    .line 175
    .line 176
    .line 177
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    iget-object p0, v0, Li75;->b:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p0, Ls02;

    .line 181
    .line 182
    iget-object p0, p0, Ls02;->b:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p0, Lo02;

    .line 185
    .line 186
    new-instance v1, Lvn1;

    .line 187
    .line 188
    const/16 v2, 0x8

    .line 189
    .line 190
    invoke-direct {v1, v0, v2}, Lvn1;-><init>(Ljava/lang/Object;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v1}, Lo02;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    .line 194
    .line 195
    .line 196
    :goto_2
    return-void

    .line 197
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    throw p0

    .line 199
    :pswitch_8
    iget-object v0, p0, Lxu1;->b:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v0, Lt40;

    .line 202
    .line 203
    iget-object p0, p0, Lxu1;->c:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast p0, Ljava/lang/Runnable;

    .line 206
    .line 207
    sget-object v1, Lxs4;->b:Lev1;

    .line 208
    .line 209
    invoke-interface {v1, v0}, Lev1;->a(Lt40;)Lv57;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :try_start_4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 214
    .line 215
    .line 216
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :catchall_2
    move-exception p0

    .line 221
    :try_start_5
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :catchall_3
    move-exception v0

    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 227
    .line 228
    .line 229
    :goto_4
    throw p0

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
