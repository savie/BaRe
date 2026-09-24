.class public abstract Lorg/swiftapps/swiftbackup/folders/data/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;ZZ)Lkj3;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->isValid()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    new-instance v0, Lkj3;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v0, v2, v3, p1}, Lkj3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    if-eqz p2, :cond_4

    .line 25
    .line 26
    invoke-virtual {v0}, Lkj3;->b()Lq63;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lq63;->j()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Lkj3;->b()Lq63;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p2}, Lq63;->E(Lq63;)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v0}, Lkj3;->d()Lq63;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lq63;->j()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object p2, v1

    .line 55
    :goto_0
    if-eqz p2, :cond_2

    .line 56
    .line 57
    sget-object v2, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->Companion:Lum3;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    const-class v2, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    invoke-static {p2, v2, v3}, Lw14;->b(Lq63;Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 70
    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->isValid()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    move-object v1, p2

    .line 80
    :cond_2
    if-nez v1, :cond_4

    .line 81
    .line 82
    new-instance v2, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 83
    .line 84
    const/4 v6, 0x6

    .line 85
    const/4 v7, 0x0

    .line 86
    const/4 v4, 0x0

    .line 87
    const/4 v5, 0x0

    .line 88
    move-object v3, p0

    .line 89
    invoke-direct/range {v2 .. v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0}, Lkj3;->d()Lq63;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {v2, p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->writeToFile(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_3
    invoke-virtual {v2, v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->refreshLocalMetadataFile(Lkj3;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 103
    .line 104
    .line 105
    :cond_4
    return-object v0

    .line 106
    :cond_5
    move-object v3, p0

    .line 107
    const-string p0, "Invalid metadata: "

    .line 108
    .line 109
    invoke-static {v3, p0}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v1
.end method
