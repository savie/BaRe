.class public final Lwn3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lq63;

.field public final b:Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final f:J

.field public final g:J

.field public final h:J


# direct methods
.method public constructor <init>(Lq63;Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;Ljava/util/List;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwn3;->a:Lq63;

    .line 5
    .line 6
    iput-object p2, p0, Lwn3;->b:Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lwn3;->c:Ljava/util/List;

    .line 9
    .line 10
    sget-object v0, Lxn3;->EXTRACT:Lxn3;

    .line 11
    .line 12
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lwn3;->d:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lwn3;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {p1}, Lq63;->A()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lwn3;->f:J

    .line 30
    .line 31
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    move-wide v2, v0

    .line 38
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-eqz p3, :cond_3

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    check-cast p3, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/folders/data/ManifestInfo;->getManifest()Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getCurrentState()Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    .line 67
    .line 68
    if-eqz p3, :cond_1

    .line 69
    .line 70
    invoke-virtual {p3}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getSize()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const/4 p3, 0x0

    .line 80
    :goto_1
    if-eqz p3, :cond_0

    .line 81
    .line 82
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    const-wide v6, 0x7fffffffffffffffL

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    sub-long v8, v6, v2

    .line 92
    .line 93
    cmp-long p3, v8, v4

    .line 94
    .line 95
    if-gez p3, :cond_2

    .line 96
    .line 97
    move-wide v2, v6

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    add-long/2addr v2, v4

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    const-wide/16 p1, 0x1

    .line 102
    .line 103
    cmp-long p3, v2, p1

    .line 104
    .line 105
    if-gez p3, :cond_4

    .line 106
    .line 107
    move-wide v2, p1

    .line 108
    :cond_4
    iput-wide v2, p0, Lwn3;->g:J

    .line 109
    .line 110
    iget-object p1, p0, Lwn3;->d:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    move-wide p2, v0

    .line 117
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Lxn3;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget-object v3, p0, Lwn3;->d:Ljava/util/List;

    .line 133
    .line 134
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_5

    .line 139
    .line 140
    iget-wide v2, p0, Lwn3;->g:J

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    move-wide v2, v0

    .line 144
    :goto_3
    add-long/2addr p2, v2

    .line 145
    goto :goto_2

    .line 146
    :cond_6
    iput-wide p2, p0, Lwn3;->h:J

    .line 147
    .line 148
    return-void
.end method
