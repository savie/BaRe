.class public abstract Lb45;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;
    .locals 16

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->e()[Landroid/content/pm/Signature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    array-length v3, v0

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    move-object v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    aget-object v0, v0, v1

    .line 17
    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/pm/Signature;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lsz8;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    array-length v2, v0

    .line 43
    sget-object v9, Lov2;->a:Lov2;

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    move-object v10, v9

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 50
    .line 51
    array-length v3, v0

    .line 52
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    array-length v3, v0

    .line 56
    :goto_1
    if-ge v1, v3, :cond_3

    .line 57
    .line 58
    aget-char v4, v0, v1

    .line 59
    .line 60
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    move-object v10, v2

    .line 74
    :goto_2
    const/4 v14, 0x0

    .line 75
    const/16 v15, 0x3e

    .line 76
    .line 77
    const-string v11, ""

    .line 78
    .line 79
    const/4 v12, 0x0

    .line 80
    const/4 v13, 0x0

    .line 81
    invoke-static/range {v10 .. v15}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    new-instance v3, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 86
    .line 87
    const-string v5, "anonymous@swiftbackup.app"

    .line 88
    .line 89
    const/4 v6, 0x1

    .line 90
    const-string v7, "Anonymous user"

    .line 91
    .line 92
    const/4 v8, 0x0

    .line 93
    const-string v10, "anonymous"

    .line 94
    .line 95
    invoke-direct/range {v3 .. v10}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v3
.end method
