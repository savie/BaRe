.class public final Lfo7$b;
.super Lfo7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfo7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final appUsage:J

.field private final appUsagePercent:F

.field private final totalMemory:J

.field private final usedMemory:J

.field private final usedPercent:I


# direct methods
.method public constructor <init>(JJIJF)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lfo7;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-wide p1, p0, Lfo7$b;->totalMemory:J

    .line 6
    .line 7
    iput-wide p3, p0, Lfo7$b;->usedMemory:J

    .line 8
    .line 9
    iput p5, p0, Lfo7$b;->usedPercent:I

    .line 10
    .line 11
    iput-wide p6, p0, Lfo7$b;->appUsage:J

    .line 12
    .line 13
    iput p8, p0, Lfo7$b;->appUsagePercent:F

    .line 14
    .line 15
    return-void
.end method

.method private final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lfo7$b;->totalMemory:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lfo7$b;->usedMemory:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private final component4()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lfo7$b;->appUsage:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private final component5()F
    .locals 0

    .line 1
    iget p0, p0, Lfo7$b;->appUsagePercent:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic copy$default(Lfo7$b;JJIJFILjava/lang/Object;)Lfo7$b;
    .locals 9

    .line 1
    and-int/lit8 v0, p9, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide p1, p0, Lfo7$b;->totalMemory:J

    .line 6
    .line 7
    :cond_0
    move-wide v1, p1

    .line 8
    and-int/lit8 p1, p9, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-wide p3, p0, Lfo7$b;->usedMemory:J

    .line 13
    .line 14
    :cond_1
    move-wide v3, p3

    .line 15
    and-int/lit8 p1, p9, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget p5, p0, Lfo7$b;->usedPercent:I

    .line 20
    .line 21
    :cond_2
    move v5, p5

    .line 22
    and-int/lit8 p1, p9, 0x8

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-wide p1, p0, Lfo7$b;->appUsage:J

    .line 27
    .line 28
    move-wide v6, p1

    .line 29
    goto :goto_0

    .line 30
    :cond_3
    move-wide v6, p6

    .line 31
    :goto_0
    and-int/lit8 p1, p9, 0x10

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget p1, p0, Lfo7$b;->appUsagePercent:F

    .line 36
    .line 37
    move v8, p1

    .line 38
    :goto_1
    move-object v0, p0

    .line 39
    goto :goto_2

    .line 40
    :cond_4
    move/from16 v8, p8

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :goto_2
    invoke-virtual/range {v0 .. v8}, Lfo7$b;->copy(JJIJF)Lfo7$b;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method


# virtual methods
.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lfo7$b;->usedPercent:I

    .line 2
    .line 3
    return p0
.end method

.method public final copy(JJIJF)Lfo7$b;
    .locals 0

    .line 1
    new-instance p0, Lfo7$b;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p8}, Lfo7$b;-><init>(JJIJF)V

    .line 4
    .line 5
    .line 6
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
    instance-of v1, p1, Lfo7$b;

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
    check-cast p1, Lfo7$b;

    .line 12
    .line 13
    iget-wide v3, p0, Lfo7$b;->totalMemory:J

    .line 14
    .line 15
    iget-wide v5, p1, Lfo7$b;->totalMemory:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-wide v3, p0, Lfo7$b;->usedMemory:J

    .line 23
    .line 24
    iget-wide v5, p1, Lfo7$b;->usedMemory:J

    .line 25
    .line 26
    cmp-long v1, v3, v5

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lfo7$b;->usedPercent:I

    .line 32
    .line 33
    iget v3, p1, Lfo7$b;->usedPercent:I

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-wide v3, p0, Lfo7$b;->appUsage:J

    .line 39
    .line 40
    iget-wide v5, p1, Lfo7$b;->appUsage:J

    .line 41
    .line 42
    cmp-long v1, v3, v5

    .line 43
    .line 44
    if-eqz v1, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget p0, p0, Lfo7$b;->appUsagePercent:F

    .line 48
    .line 49
    iget p1, p1, Lfo7$b;->appUsagePercent:F

    .line 50
    .line 51
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    return v0
.end method

.method public final getFreeMemoryString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lp93;->a:Lp93;

    .line 2
    .line 3
    iget-wide v0, p0, Lfo7$b;->totalMemory:J

    .line 4
    .line 5
    iget-wide v2, p0, Lfo7$b;->usedMemory:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final getTotalMemoryString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lp93;->a:Lp93;

    .line 2
    .line 3
    iget-wide v0, p0, Lfo7$b;->totalMemory:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public getUsageString()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lfo7$b;->usedPercent:I

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "%"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const v2, 0x7f130590

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-wide v1, p0, Lfo7$b;->totalMemory:J

    .line 41
    .line 42
    iget-wide v3, p0, Lfo7$b;->usedMemory:J

    .line 43
    .line 44
    sub-long/2addr v1, v3

    .line 45
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    sget-object v4, Lp93;->a:Lp93;

    .line 50
    .line 51
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const v2, 0x7f130287

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-wide v2, p0, Lfo7$b;->totalMemory:J

    .line 74
    .line 75
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string v2, " / "

    .line 84
    .line 85
    invoke-static {v1, v2, p0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string v1, " ("

    .line 90
    .line 91
    const-string v2, ")"

    .line 92
    .line 93
    invoke-static {v0, v1, p0, v2}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method

.method public final getUsedMemoryString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lp93;->a:Lp93;

    .line 2
    .line 3
    iget-wide v0, p0, Lfo7$b;->usedMemory:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getUsedPercent()I
    .locals 0

    .line 1
    iget p0, p0, Lfo7$b;->usedPercent:I

    .line 2
    .line 3
    return p0
.end method

.method public final getUsedPercentExact()F
    .locals 3

    .line 1
    iget-wide v0, p0, Lfo7$b;->usedMemory:J

    .line 2
    .line 3
    long-to-float v0, v0

    .line 4
    const/high16 v1, 0x42c80000    # 100.0f

    .line 5
    .line 6
    mul-float/2addr v0, v1

    .line 7
    iget-wide v1, p0, Lfo7$b;->totalMemory:J

    .line 8
    .line 9
    long-to-float p0, v1

    .line 10
    div-float/2addr v0, p0

    .line 11
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lfo7$b;->totalMemory:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

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
    iget-wide v2, p0, Lfo7$b;->usedMemory:J

    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lfo7$b;->usedPercent:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-wide v2, p0, Lfo7$b;->appUsage:J

    .line 23
    .line 24
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget p0, p0, Lfo7$b;->appUsagePercent:F

    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    add-int/2addr p0, v0

    .line 35
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-wide v0, p0, Lfo7$b;->totalMemory:J

    .line 2
    .line 3
    iget-wide v2, p0, Lfo7$b;->usedMemory:J

    .line 4
    .line 5
    iget v4, p0, Lfo7$b;->usedPercent:I

    .line 6
    .line 7
    iget-wide v5, p0, Lfo7$b;->appUsage:J

    .line 8
    .line 9
    iget p0, p0, Lfo7$b;->appUsagePercent:F

    .line 10
    .line 11
    const-string v7, "Normal(totalMemory="

    .line 12
    .line 13
    const-string v8, ", usedMemory="

    .line 14
    .line 15
    invoke-static {v7, v8, v0, v1}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", usedPercent="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", appUsage="

    .line 31
    .line 32
    const-string v2, ", appUsagePercent="

    .line 33
    .line 34
    invoke-static {v0, v1, v5, v6, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, ")"

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method
