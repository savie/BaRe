.class public final synthetic Lrn1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmo1;
.implements Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lt45;
.implements Lg36;
.implements Lny6;
.implements Lg88;
.implements Ldv7;
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lrn1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lrn1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(C)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lrn1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/BitSet;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public b(ZZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lrn1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 4
    .line 5
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 6
    .line 7
    const-string v0, "com.android.permission.GET_INSTALLED_APPS"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    sget-object p1, Ldz5;->a:Ldz5;

    .line 13
    .line 14
    invoke-static {v0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p0, p1, v1}, Ldz5;->o(Lzm;Ljava/util/Set;Z)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->R()Lorg/swiftapps/swiftbackup/intro/d;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/intro/d;->o()V

    .line 29
    .line 30
    .line 31
    sget-object p1, Ldz5;->a:Ldz5;

    .line 32
    .line 33
    invoke-static {}, Ldz5;->k()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    invoke-static {v0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p0, p1, v1}, Ldz5;->o(Lzm;Ljava/util/Set;Z)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->N()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->P()Lqi7;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const p2, 0x7f130409

    .line 61
    .line 62
    .line 63
    iget-object v0, p1, Lfo0;->h:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iget-object v0, p1, Lfo0;->i:Leo0;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    new-instance p2, Lxd1;

    .line 85
    .line 86
    const/4 v0, 0x7

    .line 87
    invoke-direct {p2, p0, v0}, Lxd1;-><init>(Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Lqi7;->h(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lqi7;->i()V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void
.end method

.method public construct()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lrn1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->r(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public g()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lrn1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object p0, p0, Lrn1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Le38;

    .line 11
    .line 12
    iget-object v0, p0, Le38;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lmw6;

    .line 15
    .line 16
    new-instance v3, Lf6;

    .line 17
    .line 18
    const/16 v4, 0xf

    .line 19
    .line 20
    invoke-direct {v3, v4}, Lf6;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3}, Lmw6;->g(Lkw6;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Iterable;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Loe0;

    .line 44
    .line 45
    iget-object v4, p0, Le38;->d:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Le41;

    .line 48
    .line 49
    invoke-virtual {v4, v3, v2, v1}, Le41;->d(Loe0;IZ)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p0, 0x0

    .line 54
    return-object p0

    .line 55
    :pswitch_0
    check-cast p0, Lmw6;

    .line 56
    .line 57
    iget-object v0, p0, Lmw6;->b:Lba1;

    .line 58
    .line 59
    invoke-interface {v0}, Lba1;->e()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    iget-object v0, p0, Lmw6;->d:Lld0;

    .line 64
    .line 65
    iget-wide v5, v0, Lld0;->d:J

    .line 66
    .line 67
    sub-long/2addr v3, v5

    .line 68
    invoke-virtual {p0}, Lmw6;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 73
    .line 74
    .line 75
    :try_start_0
    const-string v5, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    .line 76
    .line 77
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    filled-new-array {v3}, [Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 86
    .line 87
    .line 88
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_1
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_1

    .line 94
    .line 95
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    int-to-long v7, v5

    .line 104
    sget-object v5, Lc15;->c:Lc15;

    .line 105
    .line 106
    invoke-virtual {p0, v7, v8, v5, v6}, Lmw6;->j(JLc15;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 111
    .line 112
    .line 113
    const-string p0, "events"

    .line 114
    .line 115
    const-string v1, "timestamp_ms < ?"

    .line 116
    .line 117
    invoke-virtual {v0, p0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 125
    .line 126
    .line 127
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :catchall_0
    move-exception p0

    .line 133
    goto :goto_2

    .line 134
    :catchall_1
    move-exception p0

    .line 135
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 136
    .line 137
    .line 138
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public isCancellationRequested()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lrn1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lap6;

    .line 4
    .line 5
    iget-object p0, p0, Lap6;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public m(Lpp0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lrn1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lrn1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 4
    .line 5
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 6
    .line 7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const v0, 0x7f0a008b

    .line 12
    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    const-class p1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 17
    .line 18
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x1

    .line 22
    return p0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lrn1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lrn1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lp32;

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$NQbSk4pvJcM237tlhW3qXRMIF0Y(Lp32;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, La32;

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$9s975gPjMQzn4uXzSUk4O9I2hKI(La32;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lrn1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method
