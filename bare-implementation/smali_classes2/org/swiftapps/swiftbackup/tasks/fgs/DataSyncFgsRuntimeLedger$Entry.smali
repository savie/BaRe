.class public final Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final endMs:Ljava/lang/Long;

.field private final id:Ljava/lang/String;

.field private final isForcedRun:Z

.field private final isScheduleRun:Z

.field private final note:Ljava/lang/String;

.field private final outcome:Ljc2;

.field private final runMode:Ljava/lang/String;

.field private final serviceName:Ljava/lang/String;

.field private final startMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZLjava/lang/String;Ljc2;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->id:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->serviceName:Ljava/lang/String;

    .line 40
    iput-wide p3, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->startMs:J

    .line 41
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->endMs:Ljava/lang/Long;

    .line 42
    iput-boolean p6, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isScheduleRun:Z

    .line 43
    iput-boolean p7, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isForcedRun:Z

    .line 44
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->runMode:Ljava/lang/String;

    .line 45
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->outcome:Ljc2;

    .line 46
    iput-object p10, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->note:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZLjava/lang/String;Ljc2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    .line 1
    and-int/lit8 p12, p11, 0x8

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p12, :cond_0

    .line 5
    .line 6
    move-object p5, v0

    .line 7
    :cond_0
    and-int/lit8 p12, p11, 0x10

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p12, :cond_1

    .line 11
    .line 12
    move p6, v1

    .line 13
    :cond_1
    and-int/lit8 p12, p11, 0x20

    .line 14
    .line 15
    if-eqz p12, :cond_2

    .line 16
    .line 17
    move p7, v1

    .line 18
    :cond_2
    and-int/lit8 p12, p11, 0x40

    .line 19
    .line 20
    if-eqz p12, :cond_3

    .line 21
    .line 22
    move-object p8, v0

    .line 23
    :cond_3
    and-int/lit16 p12, p11, 0x80

    .line 24
    .line 25
    if-eqz p12, :cond_4

    .line 26
    .line 27
    move-object p9, v0

    .line 28
    :cond_4
    and-int/lit16 p11, p11, 0x100

    .line 29
    .line 30
    if-eqz p11, :cond_5

    .line 31
    .line 32
    move-object p10, v0

    .line 33
    :cond_5
    invoke-direct/range {p0 .. p10}, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZLjava/lang/String;Ljc2;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZLjava/lang/String;Ljc2;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;
    .locals 0

    .line 1
    and-int/lit8 p12, p11, 0x1

    .line 2
    .line 3
    if-eqz p12, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->id:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p12, p11, 0x2

    .line 8
    .line 9
    if-eqz p12, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->serviceName:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p12, p11, 0x4

    .line 14
    .line 15
    if-eqz p12, :cond_2

    .line 16
    .line 17
    iget-wide p3, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->startMs:J

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p12, p11, 0x8

    .line 20
    .line 21
    if-eqz p12, :cond_3

    .line 22
    .line 23
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->endMs:Ljava/lang/Long;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p12, p11, 0x10

    .line 26
    .line 27
    if-eqz p12, :cond_4

    .line 28
    .line 29
    iget-boolean p6, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isScheduleRun:Z

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p12, p11, 0x20

    .line 32
    .line 33
    if-eqz p12, :cond_5

    .line 34
    .line 35
    iget-boolean p7, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isForcedRun:Z

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p12, p11, 0x40

    .line 38
    .line 39
    if-eqz p12, :cond_6

    .line 40
    .line 41
    iget-object p8, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->runMode:Ljava/lang/String;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p12, p11, 0x80

    .line 44
    .line 45
    if-eqz p12, :cond_7

    .line 46
    .line 47
    iget-object p9, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->outcome:Ljc2;

    .line 48
    .line 49
    :cond_7
    and-int/lit16 p11, p11, 0x100

    .line 50
    .line 51
    if-eqz p11, :cond_8

    .line 52
    .line 53
    iget-object p10, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->note:Ljava/lang/String;

    .line 54
    .line 55
    :cond_8
    move-object p11, p9

    .line 56
    move-object p12, p10

    .line 57
    move p9, p7

    .line 58
    move-object p10, p8

    .line 59
    move-object p7, p5

    .line 60
    move p8, p6

    .line 61
    move-wide p5, p3

    .line 62
    move-object p3, p1

    .line 63
    move-object p4, p2

    .line 64
    move-object p2, p0

    .line 65
    invoke-virtual/range {p2 .. p12}, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZLjava/lang/String;Ljc2;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->serviceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->startMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->endMs:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isScheduleRun:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component6()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isForcedRun:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->runMode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljc2;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->outcome:Ljc2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->note:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZLjava/lang/String;Ljc2;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;

    .line 8
    .line 9
    invoke-direct/range {p0 .. p10}, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZLjava/lang/String;Ljc2;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->id:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->serviceName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->serviceName:Ljava/lang/String;

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
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->startMs:J

    .line 36
    .line 37
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->startMs:J

    .line 38
    .line 39
    cmp-long v1, v3, v5

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->endMs:Ljava/lang/Long;

    .line 45
    .line 46
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->endMs:Ljava/lang/Long;

    .line 47
    .line 48
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    iget-boolean v1, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isScheduleRun:Z

    .line 56
    .line 57
    iget-boolean v3, p1, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isScheduleRun:Z

    .line 58
    .line 59
    if-eq v1, v3, :cond_6

    .line 60
    .line 61
    return v2

    .line 62
    :cond_6
    iget-boolean v1, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isForcedRun:Z

    .line 63
    .line 64
    iget-boolean v3, p1, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isForcedRun:Z

    .line 65
    .line 66
    if-eq v1, v3, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->runMode:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->runMode:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_8

    .line 78
    .line 79
    return v2

    .line 80
    :cond_8
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->outcome:Ljc2;

    .line 81
    .line 82
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->outcome:Ljc2;

    .line 83
    .line 84
    if-eq v1, v3, :cond_9

    .line 85
    .line 86
    return v2

    .line 87
    :cond_9
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->note:Ljava/lang/String;

    .line 88
    .line 89
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->note:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-nez p0, :cond_a

    .line 96
    .line 97
    return v2

    .line 98
    :cond_a
    return v0
.end method

.method public final getEndMs()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->endMs:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNote()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->note:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOutcome()Ljc2;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->outcome:Ljc2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRunMode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->runMode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->serviceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStartMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->startMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->serviceName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->startMs:J

    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->endMs:Ljava/lang/Long;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    move v2, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_0
    add-int/2addr v0, v2

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget-boolean v2, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isScheduleRun:Z

    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-boolean v2, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isForcedRun:Z

    .line 42
    .line 43
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->runMode:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    move v2, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    :goto_1
    add-int/2addr v0, v2

    .line 58
    mul-int/2addr v0, v1

    .line 59
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->outcome:Ljc2;

    .line 60
    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    move v2, v3

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    :goto_2
    add-int/2addr v0, v2

    .line 70
    mul-int/2addr v0, v1

    .line 71
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->note:Ljava/lang/String;

    .line 72
    .line 73
    if-nez p0, :cond_3

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    :goto_3
    add-int/2addr v0, v3

    .line 81
    return v0
.end method

.method public final isForcedRun()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isForcedRun:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isScheduleRun()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isScheduleRun:Z

    .line 2
    .line 3
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->id:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->serviceName:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->startMs:J

    .line 6
    .line 7
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->endMs:Ljava/lang/Long;

    .line 8
    .line 9
    iget-boolean v5, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isScheduleRun:Z

    .line 10
    .line 11
    iget-boolean v6, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->isForcedRun:Z

    .line 12
    .line 13
    iget-object v7, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->runMode:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v8, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->outcome:Ljc2;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/fgs/DataSyncFgsRuntimeLedger$Entry;->note:Ljava/lang/String;

    .line 18
    .line 19
    const-string v9, ", serviceName="

    .line 20
    .line 21
    const-string v10, ", startMs="

    .line 22
    .line 23
    const-string v11, "Entry(id="

    .line 24
    .line 25
    invoke-static {v11, v0, v9, v1, v10}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", endMs="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", isScheduleRun="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", isForcedRun="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", runMode="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", outcome="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", note="

    .line 73
    .line 74
    const-string v2, ")"

    .line 75
    .line 76
    invoke-static {v0, v1, p0, v2}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
