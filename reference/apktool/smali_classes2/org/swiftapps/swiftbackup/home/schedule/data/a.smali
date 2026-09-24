.class public abstract Lorg/swiftapps/swiftbackup/home/schedule/data/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLjava/util/List;)Ly37;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    sget-object v2, Lw37;->AppParts:Lw37;

    .line 6
    .line 7
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 8
    .line 9
    const p0, 0x7f130060

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    new-instance v7, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/16 p0, 0xa

    .line 19
    .line 20
    invoke-static {p2, p0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-direct {v7, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Liu;

    .line 42
    .line 43
    new-instance v0, Lx37;

    .line 44
    .line 45
    invoke-virtual {p2}, Liu;->getIconRes()I

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-static {p2, v5, v3, v4}, Liu;->toDisplayString$default(Liu;ZILjava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {v0, p2}, Lx37;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ly37;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    const v5, 0x7f080125

    .line 66
    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    const/16 v9, 0x188

    .line 70
    .line 71
    move v3, p1

    .line 72
    invoke-direct/range {v0 .. v9}, Ly37;-><init>(Ljava/lang/String;Lw37;ZZILjava/lang/String;Ljava/util/List;Ljava/util/Set;I)V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method public static b(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLjava/util/List;)Ly37;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    sget-object v2, Lw37;->Locations:Lw37;

    .line 6
    .line 7
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 8
    .line 9
    const p0, 0x7f1300ab

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    new-instance v7, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/16 p0, 0xa

    .line 19
    .line 20
    invoke-static {p2, p0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-direct {v7, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lq05;

    .line 42
    .line 43
    new-instance v0, Lx37;

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-static {p2, v5, v3, v4}, Lq05;->getIconRes$default(Lq05;ZILjava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lq05;->toDisplayString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {v0, p2}, Lx37;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ly37;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    const v5, 0x7f0801b0

    .line 66
    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    const/16 v9, 0x88

    .line 70
    .line 71
    move v3, p1

    .line 72
    invoke-direct/range {v0 .. v9}, Ly37;-><init>(Ljava/lang/String;Lw37;ZZILjava/lang/String;Ljava/util/List;Ljava/util/Set;I)V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method public static c(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Z)Ly37;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    sget-object v2, Lw37;->RepeatDays:Lw37;

    .line 6
    .line 7
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 8
    .line 9
    const v0, 0x7f13044e

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getRepeatDisplayString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, ", "

    .line 21
    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v3, 0x6

    .line 27
    invoke-static {p0, v0, v3}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v7, Ljava/util/ArrayList;

    .line 32
    .line 33
    const/16 v0, 0xa

    .line 34
    .line 35
    invoke-static {p0, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/String;

    .line 57
    .line 58
    new-instance v3, Lx37;

    .line 59
    .line 60
    invoke-direct {v3, v0}, Lx37;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Ly37;

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    const v5, 0x7f0801a9

    .line 71
    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    const/16 v9, 0x188

    .line 75
    .line 76
    move v3, p1

    .line 77
    invoke-direct/range {v0 .. v9}, Ly37;-><init>(Ljava/lang/String;Lw37;ZZILjava/lang/String;Ljava/util/List;Ljava/util/Set;I)V

    .line 78
    .line 79
    .line 80
    return-object v0
.end method

.method public static d(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Ly37;
    .locals 10

    .line 1
    new-instance v0, Ly37;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lw37;->SyncOptions:Lw37;

    .line 8
    .line 9
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 10
    .line 11
    const p0, 0x7f13055d

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    new-instance p0, Lx37;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static {p2, v5, v3, v4}, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->getIconRes$default(Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;ZILjava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->toDisplayString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p0, p2}, Lx37;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    const/4 v8, 0x0

    .line 38
    const/16 v9, 0x188

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    const v5, 0x7f08011b

    .line 42
    .line 43
    .line 44
    move v3, p1

    .line 45
    invoke-direct/range {v0 .. v9}, Ly37;-><init>(Ljava/lang/String;Lw37;ZZILjava/lang/String;Ljava/util/List;Ljava/util/Set;I)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method
