.class public final synthetic Lpf;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lg36;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Lh9;
.implements Ler5;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lat5;
.implements Lt45;
.implements Lhm6;
.implements Lny6;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lpf;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lpf;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lpf;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/pcloud/sdk/internal/a;

    .line 4
    .line 5
    const-class v0, Lhw3;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/pcloud/sdk/internal/a;->f(Lokhttp3/Response;Ljava/lang/Class;)Lgf;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lhw3;

    .line 12
    .line 13
    invoke-virtual {p0}, Lhw3;->d()Lbj6;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public b(ZZ)V
    .locals 3

    .line 1
    iget-object p0, p0, Lpf;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 4
    .line 5
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    sget-object p1, Ldz5;->d:Lgv7;

    .line 10
    .line 11
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/util/Set;

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-static {p0, p1, p2}, Ldz5;->o(Lzm;Ljava/util/Set;Z)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->Y()Loi7;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p1, p1, Loi7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->U()Lme5;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p1, p1, Lme5;->e:Lix6;

    .line 42
    .line 43
    new-instance v0, Lhj;

    .line 44
    .line 45
    const/16 v1, 0x13

    .line 46
    .line 47
    invoke-direct {v0, p0, v1}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lps0;

    .line 51
    .line 52
    const/4 v2, 0x2

    .line 53
    invoke-direct {v1, v2, v0}, Lps0;-><init>(ILmt3;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->Z()Lye5;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Lye5;->f:Lex6;

    .line 64
    .line 65
    new-instance v0, Lv10;

    .line 66
    .line 67
    const/16 v1, 0xf

    .line 68
    .line 69
    invoke-direct {v0, p0, v1}, Lv10;-><init>(Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lne5;

    .line 73
    .line 74
    invoke-direct {v1, p2, v0}, Lne5;-><init>(ILmt3;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->Z()Lye5;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object p1, p1, Lye5;->g:Lex6;

    .line 85
    .line 86
    new-instance v0, Lpx;

    .line 87
    .line 88
    const/16 v1, 0xc

    .line 89
    .line 90
    invoke-direct {v0, p0, v1}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Lne5;

    .line 94
    .line 95
    invoke-direct {v1, p2, v0}, Lne5;-><init>(ILmt3;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_1
    sget-object p1, Ldz5;->d:Lgv7;

    .line 103
    .line 104
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Ljava/util/Set;

    .line 109
    .line 110
    invoke-static {p0, p1}, Ldz5;->q(Lsa1;Ljava/util/Set;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public construct()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lpf;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/reflect/Type;

    .line 4
    .line 5
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 6
    .line 7
    const-string v1, "Invalid EnumMap type: "

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    aget-object v0, v0, v2

    .line 20
    .line 21
    instance-of v2, v0, Ljava/lang/Class;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    new-instance p0, Ljava/util/EnumMap;

    .line 26
    .line 27
    check-cast v0, Ljava/lang/Class;

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    new-instance v0, Lik4;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    new-instance v0, Lik4;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lpf;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lsc3;

    .line 4
    .line 5
    check-cast p1, Luc3;

    .line 6
    .line 7
    iget-object p1, p1, Luc3;->b:Lnd3;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast p1, Lcd3;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcd3;->hasSystem()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, p1, v0}, Lsc3;->k(ZZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lpf;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Llr1;

    .line 6
    .line 7
    move-object/from16 v1, p1

    .line 8
    .line 9
    check-cast v1, Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v1, v3

    .line 23
    :goto_0
    if-eqz v1, :cond_2

    .line 24
    .line 25
    new-instance v3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    move-object v4, v2

    .line 45
    check-cast v4, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 46
    .line 47
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->isValid()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object v12, v3

    .line 58
    invoke-virtual {v0}, Llr1;->r()Lmr1;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const v22, 0xffbf

    .line 67
    .line 68
    .line 69
    const/16 v23, 0x0

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    const/4 v7, 0x0

    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v9, 0x0

    .line 75
    const/4 v10, 0x0

    .line 76
    const/4 v11, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    const/4 v14, 0x0

    .line 79
    const/4 v15, 0x0

    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    const/16 v17, 0x0

    .line 83
    .line 84
    const/16 v18, 0x0

    .line 85
    .line 86
    const/16 v19, 0x0

    .line 87
    .line 88
    const/16 v20, 0x0

    .line 89
    .line 90
    const/16 v21, 0x0

    .line 91
    .line 92
    invoke-static/range {v5 .. v23}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0}, Llr1;->r()Lmr1;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0, v1}, Lmr1;->k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public isCancellationRequested()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lpf;->b:Ljava/lang/Object;

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

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpf;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lmt3;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lpf;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 4
    .line 5
    sget v0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->Q:I

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
    iget v0, p0, Lpf;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lpf;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ltv3;

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->$r8$lambda$VpJuJ2CUiiSK4UYrH3k6NDY1DmI(Ltv3;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Lh32;

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;->$r8$lambda$nSVfv0HxhuRGFIDYxCIM1v0SQMk(Lh32;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
