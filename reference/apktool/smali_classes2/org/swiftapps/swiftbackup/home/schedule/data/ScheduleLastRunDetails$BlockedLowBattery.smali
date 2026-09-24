.class public final Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;
.super Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlockedLowBattery"
.end annotation


# instance fields
.field private final batteryLevel:I

.field private final requiredBatteryLevel:I

.field private final time:J


# direct methods
.method public constructor <init>(JII)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput-wide p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->time:J

    .line 15
    iput p3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->batteryLevel:I

    .line 16
    iput p4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->requiredBatteryLevel:I

    return-void
.end method

.method public synthetic constructor <init>(JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;-><init>(JII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;JIIILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-wide p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->time:J

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget p3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->batteryLevel:I

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p5, p5, 0x4

    .line 14
    .line 15
    if-eqz p5, :cond_2

    .line 16
    .line 17
    iget p4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->requiredBatteryLevel:I

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->copy(JII)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public asHumanReadableString()Ljava/lang/String;
    .locals 2

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
    iget v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->batteryLevel:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->requiredBatteryLevel:I

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const v1, 0x7f1304bf

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

.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->batteryLevel:I

    .line 2
    .line 3
    return p0
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->requiredBatteryLevel:I

    .line 2
    .line 3
    return p0
.end method

.method public final copy(JII)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;
    .locals 0

    .line 1
    new-instance p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;-><init>(JII)V

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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->time:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->time:J

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
    iget v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->batteryLevel:I

    .line 23
    .line 24
    iget v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->batteryLevel:I

    .line 25
    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->requiredBatteryLevel:I

    .line 30
    .line 31
    iget p1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->requiredBatteryLevel:I

    .line 32
    .line 33
    if-eq p0, p1, :cond_4

    .line 34
    .line 35
    return v2

    .line 36
    :cond_4
    return v0
.end method

.method public final getBatteryLevel()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->batteryLevel:I

    .line 2
    .line 3
    return p0
.end method

.method public final getRequiredBatteryLevel()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->requiredBatteryLevel:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTimeMillis()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->time:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->time:J

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
    iget v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->batteryLevel:I

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->requiredBatteryLevel:I

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

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
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->time:J

    .line 2
    .line 3
    iget v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->batteryLevel:I

    .line 4
    .line 5
    iget p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;->requiredBatteryLevel:I

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "BlockedLowBattery(time="

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", batteryLevel="

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", requiredBatteryLevel="

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
