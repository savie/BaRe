.class public final Luf;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lil0;


# direct methods
.method public synthetic constructor <init>(Lil0;I)V
    .locals 0

    .line 1
    iput p2, p0, Luf;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Luf;->b:Lil0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Luf;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Luf;->b:Lil0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 9
    .line 10
    invoke-virtual {p0}, Lio1;->getViewModelStore()Lyl8;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 16
    .line 17
    invoke-virtual {p0}, Lio1;->getDefaultViewModelCreationExtras()Lej5;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 23
    .line 24
    invoke-virtual {p0}, Lio1;->getDefaultViewModelProviderFactory()Lwl8;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 30
    .line 31
    invoke-virtual {p0}, Lio1;->getDefaultViewModelProviderFactory()Lwl8;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 37
    .line 38
    invoke-virtual {p0}, Lio1;->getViewModelStore()Lyl8;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;

    .line 44
    .line 45
    invoke-virtual {p0}, Lio1;->getViewModelStore()Lyl8;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 51
    .line 52
    invoke-virtual {p0}, Lio1;->getDefaultViewModelProviderFactory()Lwl8;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :pswitch_6
    check-cast p0, Lsa1;

    .line 58
    .line 59
    invoke-virtual {p0}, Lio1;->getDefaultViewModelProviderFactory()Lwl8;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :pswitch_7
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;

    .line 65
    .line 66
    invoke-virtual {p0}, Lio1;->getDefaultViewModelProviderFactory()Lwl8;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 72
    .line 73
    invoke-virtual {p0}, Lio1;->getViewModelStore()Lyl8;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 79
    .line 80
    invoke-virtual {p0}, Lio1;->getDefaultViewModelCreationExtras()Lej5;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_a
    invoke-virtual {p0}, Lio1;->getDefaultViewModelCreationExtras()Lej5;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 91
    .line 92
    invoke-virtual {p0}, Lio1;->getDefaultViewModelProviderFactory()Lwl8;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
