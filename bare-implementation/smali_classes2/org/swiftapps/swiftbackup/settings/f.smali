.class public abstract Lorg/swiftapps/swiftbackup/settings/f;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static final a(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->getMaxNumOfBackups()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/settings/b;->d(Ljava/lang/Integer;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/settings/f;->b(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lorg/swiftapps/swiftbackup/settings/e;->a:[I

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    aget v1, v2, v1

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eq v1, v2, :cond_4

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    if-eq v1, v2, :cond_3

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    if-ne v1, v2, :cond_2

    .line 37
    .line 38
    new-instance v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->getConditionInt()Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    sget-object p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;->Companion:Lorg/swiftapps/swiftbackup/settings/c;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;->access$getDefault$cp()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;->getEntries()Ljx2;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->getConditionInt()Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-static {p0, v2}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 73
    .line 74
    if-nez p0, :cond_1

    .line 75
    .line 76
    sget-object p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;->Companion:Lorg/swiftapps/swiftbackup/settings/c;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;->access$getDefault$cp()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :cond_1
    :goto_0
    invoke-direct {v1, v0, p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;-><init>(ILorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;)V

    .line 86
    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    return-object p0

    .line 94
    :cond_3
    new-instance p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;

    .line 95
    .line 96
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;-><init>(I)V

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_4
    sget-object p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$SingleBackup;->INSTANCE:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$SingleBackup;

    .line 101
    .line 102
    return-object p0
.end method

.method public static final b(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;->getEntries()Ljx2;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->getTypeInt()Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;->Companion:Lorg/swiftapps/swiftbackup/settings/d;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;->access$getDefault$cp()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    :goto_0
    invoke-static {p0, v0}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 37
    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    sget-object p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;->Companion:Lorg/swiftapps/swiftbackup/settings/d;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;->access$getDefault$cp()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :cond_1
    return-object p0
.end method
