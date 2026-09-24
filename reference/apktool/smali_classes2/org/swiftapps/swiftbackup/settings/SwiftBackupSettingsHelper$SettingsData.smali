.class public final Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final blacklist:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

.field private final favorites:Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;

.field private final settings:Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 52
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;-><init>(Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->settings:Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 50
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->favorites:Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;

    .line 51
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->blacklist:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->Companion:Lorg/swiftapps/swiftbackup/model/firebase/AppSettings$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings$a;->withSavedSettings()Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 12
    .line 13
    if-eqz p5, :cond_1

    .line 14
    .line 15
    new-instance p2, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;

    .line 16
    .line 17
    sget-object p5, Lv53;->a:Lv53;

    .line 18
    .line 19
    invoke-virtual {p5}, Lv53;->b()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object p5

    .line 23
    invoke-interface {p5}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    move-result-object p5

    .line 27
    invoke-static {p5}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p5

    .line 31
    invoke-direct {p2, p5}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;-><init>(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 35
    .line 36
    if-eqz p4, :cond_2

    .line 37
    .line 38
    sget-object p3, Lgs0;->a:Lgs0;

    .line 39
    .line 40
    invoke-virtual {p3}, Lgs0;->a()Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;-><init>(Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->settings:Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->favorites:Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->blacklist:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->copy(Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;)Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->settings:Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->favorites:Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->blacklist:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;)Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;
    .locals 0

    .line 1
    new-instance p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;-><init>(Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->settings:Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->settings:Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->favorites:Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->favorites:Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->blacklist:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 36
    .line 37
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->blacklist:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 38
    .line 39
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final getBlacklist()Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->blacklist:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFavorites()Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->favorites:Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSettings()Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->settings:Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->settings:Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->favorites:Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->blacklist:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 28
    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_2
    add-int/2addr v0, v1

    .line 37
    return v0
.end method

.method public final restore()V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_7

    .line 14
    .line 15
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 16
    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x0

    .line 19
    const-string v2, "SwiftBackupSettingsHelper"

    .line 20
    .line 21
    const-string v3, "Starting restore"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->settings:Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x1

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {v0}, Lha7;->a(Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;)V

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x4

    .line 37
    const/4 v6, 0x0

    .line 38
    const-string v2, "SwiftBackupSettingsHelper"

    .line 39
    .line 40
    const-string v3, "Restored Settings"

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    move v0, v8

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v5, 0x4

    .line 49
    const/4 v6, 0x0

    .line 50
    const-string v2, "SwiftBackupSettingsHelper"

    .line 51
    .line 52
    const-string v3, "No Settings"

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    move v0, v7

    .line 59
    :goto_0
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->favorites:Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;->getItems()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v2, 0x0

    .line 69
    :goto_1
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    sget-object v0, Lv53;->a:Lv53;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Lv53;->e(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const-string v2, "Restored Favorite apps: "

    .line 88
    .line 89
    invoke-static {v0, v2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const/4 v5, 0x4

    .line 94
    const/4 v6, 0x0

    .line 95
    const-string v2, "SwiftBackupSettingsHelper"

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    move v0, v8

    .line 102
    goto :goto_3

    .line 103
    :cond_3
    :goto_2
    const/4 v5, 0x4

    .line 104
    const/4 v6, 0x0

    .line 105
    const-string v2, "SwiftBackupSettingsHelper"

    .line 106
    .line 107
    const-string v3, "No Favorites"

    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :goto_3
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->blacklist:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 114
    .line 115
    if-eqz v2, :cond_5

    .line 116
    .line 117
    sget-object v0, Lgs0;->a:Lgs0;

    .line 118
    .line 119
    invoke-virtual {v0, v2, v7}, Lgs0;->d(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;Z)V

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->blacklist:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 123
    .line 124
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->getItems()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    if-eqz p0, :cond_4

    .line 129
    .line 130
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    goto :goto_4

    .line 139
    :cond_4
    const-string p0, "---"

    .line 140
    .line 141
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v2, "Restored Blacklist data: "

    .line 144
    .line 145
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const/4 v5, 0x4

    .line 156
    const/4 v6, 0x0

    .line 157
    const-string v2, "SwiftBackupSettingsHelper"

    .line 158
    .line 159
    const/4 v4, 0x0

    .line 160
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_5
    const/4 v5, 0x4

    .line 165
    const/4 v6, 0x0

    .line 166
    const-string v2, "SwiftBackupSettingsHelper"

    .line 167
    .line 168
    const-string v3, "No Blacklist data"

    .line 169
    .line 170
    const/4 v4, 0x0

    .line 171
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    move v8, v0

    .line 175
    :goto_5
    if-eqz v8, :cond_6

    .line 176
    .line 177
    const-wide/16 v0, 0x7d0

    .line 178
    .line 179
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    .line 182
    :catch_0
    const-string p0, "Restored settings"

    .line 183
    .line 184
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->E(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_6
    return-void

    .line 188
    :cond_7
    invoke-static {}, Ld6;->o()V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->settings:Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->favorites:Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->blacklist:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "SettingsData(settings="

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", favorites="

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", blacklist="

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
