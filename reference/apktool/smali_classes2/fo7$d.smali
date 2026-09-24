.class public final Lfo7$d;
.super Lfo7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfo7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final appUsage:J

.field private final appUsagePercent:F

.field private final usedMemory:J


# direct methods
.method public constructor <init>(JJF)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lfo7;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-wide p1, p0, Lfo7$d;->usedMemory:J

    .line 6
    .line 7
    iput-wide p3, p0, Lfo7$d;->appUsage:J

    .line 8
    .line 9
    iput p5, p0, Lfo7$d;->appUsagePercent:F

    .line 10
    .line 11
    return-void
.end method

.method private final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lfo7$d;->usedMemory:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lfo7$d;->appUsage:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private final component3()F
    .locals 0

    .line 1
    iget p0, p0, Lfo7$d;->appUsagePercent:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic copy$default(Lfo7$d;JJFILjava/lang/Object;)Lfo7$d;
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-wide p1, p0, Lfo7$d;->usedMemory:J

    .line 6
    .line 7
    :cond_0
    move-wide v1, p1

    .line 8
    and-int/lit8 p1, p6, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-wide p3, p0, Lfo7$d;->appUsage:J

    .line 13
    .line 14
    :cond_1
    move-wide v3, p3

    .line 15
    and-int/lit8 p1, p6, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget p5, p0, Lfo7$d;->appUsagePercent:F

    .line 20
    .line 21
    :cond_2
    move-object v0, p0

    .line 22
    move v5, p5

    .line 23
    invoke-virtual/range {v0 .. v5}, Lfo7$d;->copy(JJF)Lfo7$d;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method


# virtual methods
.method public final copy(JJF)Lfo7$d;
    .locals 0

    .line 1
    new-instance p0, Lfo7$d;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lfo7$d;-><init>(JJF)V

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
    instance-of v1, p1, Lfo7$d;

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
    check-cast p1, Lfo7$d;

    .line 12
    .line 13
    iget-wide v3, p0, Lfo7$d;->usedMemory:J

    .line 14
    .line 15
    iget-wide v5, p1, Lfo7$d;->usedMemory:J

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
    iget-wide v3, p0, Lfo7$d;->appUsage:J

    .line 23
    .line 24
    iget-wide v5, p1, Lfo7$d;->appUsage:J

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
    iget p0, p0, Lfo7$d;->appUsagePercent:F

    .line 32
    .line 33
    iget p1, p1, Lfo7$d;->appUsagePercent:F

    .line 34
    .line 35
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public getUsageString()Ljava/lang/String;
    .locals 3

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
    sget-object v1, Lp93;->a:Lp93;

    .line 8
    .line 9
    iget-wide v1, p0, Lfo7$d;->usedMemory:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const v1, 0x7f130590

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public final getUsedMemoryString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lp93;->a:Lp93;

    .line 2
    .line 3
    iget-wide v0, p0, Lfo7$d;->usedMemory:J

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

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lfo7$d;->usedMemory:J

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
    iget-wide v2, p0, Lfo7$d;->appUsage:J

    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget p0, p0, Lfo7$d;->appUsagePercent:F

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    add-int/2addr p0, v0

    .line 23
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-wide v0, p0, Lfo7$d;->usedMemory:J

    .line 2
    .line 3
    iget-wide v2, p0, Lfo7$d;->appUsage:J

    .line 4
    .line 5
    iget p0, p0, Lfo7$d;->appUsagePercent:F

    .line 6
    .line 7
    const-string v4, "Unlimited(usedMemory="

    .line 8
    .line 9
    const-string v5, ", appUsage="

    .line 10
    .line 11
    invoke-static {v4, v5, v0, v1}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", appUsagePercent="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, ")"

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
