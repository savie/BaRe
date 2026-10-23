.class public final Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;
.super Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkippedUploadSyncOptionsError"
.end annotation


# instance fields
.field private final time:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 15
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput-wide p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;->time:J

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;-><init>(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;JILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-wide p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;->time:J

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;->copy(J)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public asHumanReadableString()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    const p0, 0x7f13018d

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(J)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;
    .locals 0

    .line 1
    new-instance p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;-><init>(J)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;->time:J

    .line 14
    .line 15
    iget-wide p0, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;->time:J

    .line 16
    .line 17
    cmp-long p0, v3, p0

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    return v0
.end method

.method public final getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTimeMillis()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;->time:J

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
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;->time:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;->time:J

    .line 2
    .line 3
    const-string p0, "SkippedUploadSyncOptionsError(time="

    .line 4
    .line 5
    const-string v2, ")"

    .line 6
    .line 7
    invoke-static {p0, v2, v0, v1}, Lfz5;->m(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
