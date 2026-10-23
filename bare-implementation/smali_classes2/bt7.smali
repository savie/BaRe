.class public final Lbt7;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Ltn2;


# direct methods
.method public constructor <init>(Ltn2;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbt7;->a:Ltn2;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0

    .line 1
    new-instance p1, Lbt7;

    .line 2
    .line 3
    iget-object p0, p0, Lbt7;->a:Ltn2;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lbt7;-><init>(Ltn2;Ljv1;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lbt7;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lbt7;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lbt7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object p0, p0, Lbt7;->a:Ltn2;

    .line 2
    .line 3
    const-string v0, "Exporting settings to "

    .line 4
    .line 5
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 9
    .line 10
    const-string v2, "SwiftBackupSettingsHelper"

    .line 11
    .line 12
    invoke-virtual {p0}, Ltn2;->e()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v5, 0x4

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lf13;->d()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0}, Ltn2;->e()Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 47
    .line 48
    .line 49
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    sget-object p1, Lw14;->a:Lgv7;

    .line 51
    .line 52
    invoke-static {}, Lw14;->d()Lcom/google/gson/a;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;

    .line 57
    .line 58
    const/4 v4, 0x7

    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v1, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;-><init>(Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 71
    .line 72
    invoke-static {p1, p0, v0}, Ln84;->e(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    :try_start_2
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    move-object p1, v0

    .line 82
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    :catchall_1
    move-exception v0

    .line 84
    :try_start_4
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 88
    :goto_0
    move-object v3, p0

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    move-object p0, v0

    .line 92
    goto :goto_0

    .line 93
    :goto_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 94
    .line 95
    const/16 v5, 0x8

    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    const-string v1, "SwiftBackupSettingsHelper"

    .line 99
    .line 100
    const-string v2, "exportSettings"

    .line 101
    .line 102
    const/4 v4, 0x0

    .line 103
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 107
    .line 108
    return-object p0
.end method
