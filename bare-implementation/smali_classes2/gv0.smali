.class public abstract Lgv0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "cls"

    .line 2
    .line 3
    const-string v1, "wal"

    .line 4
    .line 5
    const-string v2, "msg"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lgv0;->a:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method

.method public static a()Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;
    .locals 5

    .line 1
    sget-object v0, Lw14;->a:Lgv7;

    .line 2
    .line 3
    new-instance v0, Lfv0;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0xc

    .line 9
    .line 10
    const-string v2, "GsonHelper"

    .line 11
    .line 12
    const-string v3, "fromPrefs"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v2, v3, v4, v0, v1}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;

    .line 20
    .line 21
    return-object v0
.end method

.method public static b(Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;)V
    .locals 8

    .line 1
    invoke-static {}, Lgv0;->a()Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;->getItems()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    move-object v3, v2

    .line 33
    check-cast v3, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;

    .line 34
    .line 35
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;->getId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;->getId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;->getModifiedAtMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    sub-long/2addr v4, v6

    .line 59
    const-wide/32 v6, 0xdbba0

    .line 60
    .line 61
    .line 62
    cmp-long v3, v4, v6

    .line 63
    .line 64
    if-gez v3, :cond_0

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v1, 0x0

    .line 71
    :cond_3
    if-nez v1, :cond_4

    .line 72
    .line 73
    sget-object v1, Lov2;->a:Lov2;

    .line 74
    .line 75
    :cond_4
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v1, p0}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    new-instance v0, Ljava/util/HashSet;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v1, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_6

    .line 102
    .line 103
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    move-object v3, v2

    .line 108
    check-cast v3, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;

    .line 109
    .line 110
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;->getId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;->Companion:Lev0;

    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;

    .line 130
    .line 131
    invoke-direct {p0, v1}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;-><init>(Ljava/util/List;)V

    .line 132
    .line 133
    .line 134
    const-string v0, "box_file_cache_data"

    .line 135
    .line 136
    invoke-static {p0, v0}, Lw14;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public static c(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lgv0;->a()Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;->getItems()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    move-object v3, v2

    .line 40
    check-cast v3, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;

    .line 41
    .line 42
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;->getId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    :cond_3
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;->Companion:Lev0;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;

    .line 63
    .line 64
    invoke-direct {p0, v1}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;-><init>(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "box_file_cache_data"

    .line 68
    .line 69
    invoke-static {p0, v0}, Lw14;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
