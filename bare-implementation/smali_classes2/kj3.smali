.class public final Lkj3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lgv7;

.field public final d:Lgv7;

.field public final e:Lgv7;

.field public final f:Lgv7;

.field public final g:Lgv7;

.field public final h:Lgv7;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkj3;->a:Ljava/lang/String;

    .line 5
    .line 6
    xor-int/lit8 p1, p3, 0x1

    .line 7
    .line 8
    iput-boolean p1, p0, Lkj3;->b:Z

    .line 9
    .line 10
    new-instance p1, Lck;

    .line 11
    .line 12
    const/16 v0, 0x11

    .line 13
    .line 14
    invoke-direct {p1, p2, v0}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Lgv7;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lkj3;->c:Lgv7;

    .line 23
    .line 24
    new-instance p1, Lw10;

    .line 25
    .line 26
    invoke-direct {p1, p3, p0}, Lw10;-><init>(ZLkj3;)V

    .line 27
    .line 28
    .line 29
    new-instance p2, Lgv7;

    .line 30
    .line 31
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lkj3;->d:Lgv7;

    .line 35
    .line 36
    new-instance p1, Lek;

    .line 37
    .line 38
    const/16 p2, 0x18

    .line 39
    .line 40
    invoke-direct {p1, p0, p2}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Lgv7;

    .line 44
    .line 45
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lkj3;->e:Lgv7;

    .line 49
    .line 50
    new-instance p1, Lah;

    .line 51
    .line 52
    const/16 p2, 0x19

    .line 53
    .line 54
    invoke-direct {p1, p0, p2}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    new-instance p2, Lgv7;

    .line 58
    .line 59
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 60
    .line 61
    .line 62
    iput-object p2, p0, Lkj3;->f:Lgv7;

    .line 63
    .line 64
    new-instance p1, Lbh;

    .line 65
    .line 66
    const/16 p2, 0x15

    .line 67
    .line 68
    invoke-direct {p1, p0, p2}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lgv7;

    .line 72
    .line 73
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lkj3;->g:Lgv7;

    .line 77
    .line 78
    new-instance p1, Ld76;

    .line 79
    .line 80
    const/16 p2, 0x15

    .line 81
    .line 82
    invoke-direct {p1, p0, p2}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 83
    .line 84
    .line 85
    new-instance p2, Lgv7;

    .line 86
    .line 87
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 88
    .line 89
    .line 90
    iput-object p2, p0, Lkj3;->h:Lgv7;

    .line 91
    .line 92
    new-instance p1, Lkf;

    .line 93
    .line 94
    const/16 p2, 0x1a

    .line 95
    .line 96
    invoke-direct {p1, p0, p2}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    new-instance p0, Lgv7;

    .line 100
    .line 101
    invoke-direct {p0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lkj3;->b()Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq63;->B()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    move-object v4, v3

    .line 32
    check-cast v4, Lq63;

    .line 33
    .line 34
    sget-object v5, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;->Companion:Lij3;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v4}, Lij3;->a(Lq63;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    invoke-virtual {v4}, Lq63;->A()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    const-wide/16 v6, 0x0

    .line 50
    .line 51
    cmp-long v4, v4, v6

    .line 52
    .line 53
    if-lez v4, :cond_0

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lnx;

    .line 60
    .line 61
    const/4 v3, 0x4

    .line 62
    invoke-direct {v0, v3}, Lnx;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move-object v0, v1

    .line 71
    :goto_1
    if-eqz v0, :cond_7

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lq63;

    .line 100
    .line 101
    invoke-static {v3}, Ljj3;->a(Lq63;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    new-instance v4, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 106
    .line 107
    invoke-virtual {p0}, Lkj3;->b()Lq63;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-direct {v4, v5, v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;-><init>(Lq63;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->exists()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    move-object v4, v1

    .line 122
    :goto_3
    if-eqz v4, :cond_4

    .line 123
    .line 124
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    return-object v2

    .line 129
    :cond_7
    :goto_4
    return-object v1
.end method

.method public final b()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lkj3;->d:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method

.method public final c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;
    .locals 0

    .line 1
    iget-object p0, p0, Lkj3;->f:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 8
    .line 9
    return-object p0
.end method

.method public final d()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lkj3;->g:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method

.method public final e()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lkj3;->c:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method

.method public final f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lkj3;->h()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->isValid()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v0, 0x1

    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final g()Lq63;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lkj3;->a()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    move-object p0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-object v2, p0

    .line 39
    check-cast v2, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 40
    .line 41
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;->getTimestamp()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    move-object v4, v3

    .line 50
    check-cast v4, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 51
    .line 52
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;->getTimestamp()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-gez v5, :cond_4

    .line 61
    .line 62
    move-object p0, v3

    .line 63
    move-object v2, v4

    .line 64
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    :goto_0
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 71
    .line 72
    if-eqz p0, :cond_6

    .line 73
    .line 74
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->exists()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    invoke-virtual {p0}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :cond_6
    return-object v1
.end method

.method public final h()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lkj3;->d()Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq63;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->Companion:Lum3;

    .line 12
    .line 13
    invoke-virtual {p0}, Lkj3;->d()Lq63;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-class v0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {p0, v0, v1}, Lw14;->b(Lq63;Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 34
    .line 35
    invoke-virtual {p0}, Lkj3;->d()Lq63;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v1, "Metadata file does not exist at "

    .line 40
    .line 41
    invoke-static {p0, v1}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v4, 0x4

    .line 46
    const/4 v5, 0x0

    .line 47
    const-string v1, "FolderBackup"

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkj3;->e()Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "FolderBackup(id=\'"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lkj3;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, "\', sourceFolder=\'"

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, "\')"

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
