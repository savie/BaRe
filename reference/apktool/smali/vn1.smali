.class public final synthetic Lvn1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lvn1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lvn1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a()V
    .locals 5

    .line 1
    iget-object p0, p0, Lvn1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lgq3;

    .line 4
    .line 5
    const-string v0, "fetchFonts result is not OK. ("

    .line 6
    .line 7
    iget-object v1, p0, Lgq3;->d:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lgq3;->n:Lnc8;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    monitor-exit v1

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto/16 :goto_7

    .line 18
    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    invoke-virtual {p0}, Lgq3;->b()Lsq3;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v2, v1, Lsq3;->f:I

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    .line 29
    iget-object v3, p0, Lgq3;->d:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 32
    :try_start_2
    monitor-exit v3

    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 37
    :catchall_2
    move-exception v0

    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_1
    :goto_0
    if-nez v2, :cond_4

    .line 41
    .line 42
    :try_start_4
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 43
    .line 44
    sget-object v2, Ly88;->b:Ljava/lang/reflect/Method;

    .line 45
    .line 46
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lgq3;->c:Lhx0;

    .line 50
    .line 51
    iget-object v2, p0, Lgq3;->a:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    filled-new-array {v1}, [Lsq3;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v3, Lvc8;->a:Ly13;

    .line 61
    .line 62
    const-string v3, "TypefaceCompat.createFromFontInfo"

    .line 63
    .line 64
    invoke-static {v3}, Liz1;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 65
    .line 66
    .line 67
    :try_start_5
    sget-object v3, Lvc8;->a:Ly13;

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-virtual {v3, v2, v0, v4}, Ly13;->g(Landroid/content/Context;[Lsq3;I)Landroid/graphics/Typeface;

    .line 71
    .line 72
    .line 73
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 74
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lgq3;->a:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v1, v1, Lsq3;->a:Landroid/net/Uri;

    .line 80
    .line 81
    invoke-static {v2, v1}, Ll73;->w(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 82
    .line 83
    .line 84
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    :try_start_7
    const-string v2, "EmojiCompat.MetadataRepo.create"

    .line 90
    .line 91
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v2, Lkb2;

    .line 95
    .line 96
    invoke-static {v1}, Lzm5;->y(Ljava/nio/MappedByteBuffer;)Lof5;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v2, v0, v1}, Lkb2;-><init>(Landroid/graphics/Typeface;Lof5;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 101
    .line 102
    .line 103
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 104
    .line 105
    .line 106
    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lgq3;->d:Ljava/lang/Object;

    .line 110
    .line 111
    monitor-enter v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 112
    :try_start_a
    iget-object v1, p0, Lgq3;->n:Lnc8;

    .line 113
    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Lnc8;->R(Lkb2;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_3
    move-exception v1

    .line 121
    goto :goto_2

    .line 122
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 123
    :try_start_b
    invoke-virtual {p0}, Lgq3;->a()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :goto_2
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 128
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 129
    :catchall_4
    move-exception v0

    .line 130
    :try_start_e
    sget-object v1, Ly88;->b:Ljava/lang/reflect/Method;

    .line 131
    .line 132
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 137
    .line 138
    const-string v1, "Unable to open file."

    .line 139
    .line 140
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :catchall_5
    move-exception v0

    .line 145
    goto :goto_3

    .line 146
    :catchall_6
    move-exception v0

    .line 147
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 148
    .line 149
    .line 150
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 151
    :goto_3
    :try_start_f
    sget-object v1, Ly88;->b:Ljava/lang/reflect/Method;

    .line 152
    .line 153
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    .line 158
    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v0, ")"

    .line 168
    .line 169
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 180
    :goto_4
    iget-object v2, p0, Lgq3;->d:Ljava/lang/Object;

    .line 181
    .line 182
    monitor-enter v2

    .line 183
    :try_start_10
    iget-object v1, p0, Lgq3;->n:Lnc8;

    .line 184
    .line 185
    if-eqz v1, :cond_5

    .line 186
    .line 187
    invoke-virtual {v1, v0}, Lnc8;->P(Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :catchall_7
    move-exception p0

    .line 192
    goto :goto_6

    .line 193
    :cond_5
    :goto_5
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 194
    invoke-virtual {p0}, Lgq3;->a()V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :goto_6
    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 199
    throw p0

    .line 200
    :goto_7
    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 201
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lvn1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lvn1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Li75;

    .line 10
    .line 11
    iget-object v0, p0, Li75;->k:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v2, p0, Li75;->k:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Li75;->k:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    iget-object v4, p0, Li75;->k:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v4, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 40
    .line 41
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const/4 v2, 0x0

    .line 48
    move v1, v3

    .line 49
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Li75;->a:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Llf5;

    .line 55
    .line 56
    iget-object p0, p0, Li75;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, p0, v2}, Llf5;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void

    .line 64
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p0

    .line 66
    :pswitch_0
    iget-object p0, p0, Lvn1;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->m()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_1
    iget-object p0, p0, Lvn1;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Ln76;

    .line 77
    .line 78
    iget-object v0, p0, Ln76;->f:Lhu4;

    .line 79
    .line 80
    iget v2, p0, Ln76;->b:I

    .line 81
    .line 82
    if-nez v2, :cond_2

    .line 83
    .line 84
    iput-boolean v1, p0, Ln76;->c:Z

    .line 85
    .line 86
    sget-object v2, Lrt4;->ON_PAUSE:Lrt4;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Lhu4;->d(Lrt4;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    iget v2, p0, Ln76;->a:I

    .line 92
    .line 93
    if-nez v2, :cond_3

    .line 94
    .line 95
    iget-boolean v2, p0, Ln76;->c:Z

    .line 96
    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    sget-object v2, Lrt4;->ON_STOP:Lrt4;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Lhu4;->d(Lrt4;)V

    .line 102
    .line 103
    .line 104
    iput-boolean v1, p0, Ln76;->d:Z

    .line 105
    .line 106
    :cond_3
    return-void

    .line 107
    :pswitch_2
    iget-object p0, p0, Lvn1;->b:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p0, Lcom/yubico/yubikit/android/ui/OtpActivity;

    .line 110
    .line 111
    sget v0, Lcom/yubico/yubikit/android/ui/OtpActivity;->x:I

    .line 112
    .line 113
    iget-object v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->k:Landroid/widget/TextView;

    .line 114
    .line 115
    iget-boolean p0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->c:Z

    .line 116
    .line 117
    if-eqz p0, :cond_4

    .line 118
    .line 119
    const p0, 0x7f1305d7

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    const p0, 0x7f1305d6

    .line 124
    .line 125
    .line 126
    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :pswitch_3
    invoke-direct {p0}, Lvn1;->a()V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_4
    iget-object p0, p0, Lvn1;->b:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    .line 137
    .line 138
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->$r8$lambda$jARvyOoIjsftj6YUKJyjuXIVkpY(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :pswitch_5
    iget-object p0, p0, Lvn1;->b:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 145
    .line 146
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$pPG6tl2TOCJ1aQHZ-L9-lkML7nc(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :pswitch_6
    iget-object p0, p0, Lvn1;->b:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;

    .line 153
    .line 154
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;->$r8$lambda$vcaMDUUzv8I9b2oK0q8enPFn_gQ(Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :pswitch_7
    iget-object p0, p0, Lvn1;->b:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast p0, Lio1;

    .line 161
    .line 162
    invoke-static {p0}, Lio1;->i(Lio1;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
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
