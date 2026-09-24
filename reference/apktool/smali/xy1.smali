.class public final synthetic Lxy1;
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
    iput p1, p0, Lxy1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lxy1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lxy1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lxy1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lxy1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lvg8;

    .line 10
    .line 11
    iget-object p0, p0, Lxy1;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lug8;

    .line 14
    .line 15
    :try_start_0
    iget-object v2, v0, Lvg8;->b:Lwg8;

    .line 16
    .line 17
    iget-object v2, v2, Lwg8;->b:Las1;

    .line 18
    .line 19
    const-class v3, Lxu5;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Las1;->b(Ljava/lang/Class;)Lky8;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lxu5;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 26
    .line 27
    :goto_0
    :try_start_1
    iget-object v3, v0, Lvg8;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lvz0;

    .line 34
    .line 35
    sget-object v4, Lwg8;->p:Ltg8;

    .line 36
    .line 37
    if-ne v3, v4, :cond_0

    .line 38
    .line 39
    sget-object v3, Lwg8;->n:Ll15;

    .line 40
    .line 41
    const-string v4, "Closing CachedOtpConnection"

    .line 42
    .line 43
    invoke-interface {v3, v4}, Ll15;->k(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_2
    check-cast v2, Lpg8;

    .line 47
    .line 48
    invoke-virtual {v2}, Lsg8;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 49
    .line 50
    .line 51
    goto :goto_4

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception v3

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :try_start_3
    new-instance v4, Lcn6;

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-direct {v4, v2, v5}, Lcn6;-><init>(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v3, v4}, Lvz0;->invoke(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception v3

    .line 67
    :try_start_4
    sget-object v4, Lwg8;->n:Ll15;

    .line 68
    .line 69
    const-string v5, "OtpConnection callback threw an exception"

    .line 70
    .line 71
    invoke-static {v1, v4, v5, v3}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :goto_1
    :try_start_5
    sget-object v4, Lwg8;->n:Ll15;

    .line 76
    .line 77
    const-string v5, "InterruptedException when processing OtpConnection: "

    .line 78
    .line 79
    invoke-static {v1, v4, v5, v3}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :goto_2
    :try_start_6
    check-cast v2, Lpg8;

    .line 84
    .line 85
    invoke-virtual {v2}, Lsg8;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :catchall_1
    move-exception v1

    .line 90
    :try_start_7
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :goto_3
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 94
    :catch_2
    move-exception v0

    .line 95
    invoke-static {v0}, Lcn6;->a(Ljava/lang/Exception;)Lcn6;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p0, v0}, Lug8;->invoke(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :goto_4
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lxy1;->b:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 106
    .line 107
    iget-object p0, p0, Lxy1;->c:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p0, Landroid/app/job/JobParameters;

    .line 110
    .line 111
    sget v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->a:I

    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_1
    iget-object v0, p0, Lxy1;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    .line 121
    .line 122
    iget-object p0, p0, Lxy1;->c:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p0, Lwv3;

    .line 125
    .line 126
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->$r8$lambda$75cMnGZobBgp8TqBJX_EmYRaSjg(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lwv3;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :pswitch_2
    iget-object v0, p0, Lxy1;->b:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 133
    .line 134
    iget-object p0, p0, Lxy1;->c:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p0, Lwv3;

    .line 137
    .line 138
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$FSqmH0toWBBnlIPbA1fgpx8SLdQ(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;Lwv3;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :pswitch_3
    iget-object v0, p0, Lxy1;->b:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;

    .line 145
    .line 146
    iget-object p0, p0, Lxy1;->c:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p0, Lc12;

    .line 149
    .line 150
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$bBGaLg-ROEB-WUhoK5OSTerPB8U(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Lc12;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :pswitch_4
    iget-object v0, p0, Lxy1;->b:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, Lzy1;

    .line 157
    .line 158
    iget-object p0, p0, Lxy1;->c:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast p0, Ljava/util/Map;

    .line 161
    .line 162
    iget-object v0, v0, Lzy1;->h:Lsy1;

    .line 163
    .line 164
    iget-object v0, v0, Lsy1;->d:Li75;

    .line 165
    .line 166
    iget-object v0, v0, Li75;->d:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v0, Lfh8;

    .line 169
    .line 170
    monitor-enter v0

    .line 171
    :try_start_8
    iget-object v2, v0, Lfh8;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Lbp4;

    .line 178
    .line 179
    invoke-virtual {v2, p0}, Lbp4;->c(Ljava/util/Map;)V

    .line 180
    .line 181
    .line 182
    iget-object p0, v0, Lfh8;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Lbp4;

    .line 189
    .line 190
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    .line 191
    .line 192
    .line 193
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 194
    invoke-virtual {v0}, Lfh8;->a()V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :catchall_2
    move-exception p0

    .line 199
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 200
    throw p0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
