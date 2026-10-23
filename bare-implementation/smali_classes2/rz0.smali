.class public final Lrz0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrz0$a;
    }
.end annotation


# static fields
.field public static final Companion:Lrz0$a;

.field private static final logTag:Ljava/lang/String; = "CallLogBackupItem"


# instance fields
.field private final backupTime:J

.field private final device:Ljava/lang/String;

.field private final driveId:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private remoteFileSize:J

.field private final totalCalls:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrz0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lrz0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lrz0;->Companion:Lrz0$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lrz0;->fileName:Ljava/lang/String;

    .line 11
    .line 12
    iput-wide p2, p0, Lrz0;->backupTime:J

    .line 13
    .line 14
    iput p4, p0, Lrz0;->totalCalls:I

    .line 15
    .line 16
    iput-object p5, p0, Lrz0;->device:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p6, p0, Lrz0;->driveId:Ljava/lang/String;

    .line 19
    .line 20
    iput-wide p7, p0, Lrz0;->remoteFileSize:J

    .line 21
    .line 22
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_0

    .line 23
    const-string p5, "Unknown"

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-wide/from16 v7, p7

    .line 24
    invoke-direct/range {v0 .. v8}, Lrz0;-><init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lrz0;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic copy$default(Lrz0;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lrz0;
    .locals 0

    .line 1
    and-int/lit8 p10, p9, 0x1

    .line 2
    .line 3
    if-eqz p10, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lrz0;->fileName:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p10, p9, 0x2

    .line 8
    .line 9
    if-eqz p10, :cond_1

    .line 10
    .line 11
    iget-wide p2, p0, Lrz0;->backupTime:J

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p10, p9, 0x4

    .line 14
    .line 15
    if-eqz p10, :cond_2

    .line 16
    .line 17
    iget p4, p0, Lrz0;->totalCalls:I

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p10, p9, 0x8

    .line 20
    .line 21
    if-eqz p10, :cond_3

    .line 22
    .line 23
    iget-object p5, p0, Lrz0;->device:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p10, p9, 0x10

    .line 26
    .line 27
    if-eqz p10, :cond_4

    .line 28
    .line 29
    iget-object p6, p0, Lrz0;->driveId:Ljava/lang/String;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p9, p9, 0x20

    .line 32
    .line 33
    if-eqz p9, :cond_5

    .line 34
    .line 35
    iget-wide p7, p0, Lrz0;->remoteFileSize:J

    .line 36
    .line 37
    :cond_5
    move-wide p9, p7

    .line 38
    move-object p7, p5

    .line 39
    move-object p8, p6

    .line 40
    move p6, p4

    .line 41
    move-wide p4, p2

    .line 42
    move-object p2, p0

    .line 43
    move-object p3, p1

    .line 44
    invoke-virtual/range {p2 .. p10}, Lrz0;->copy(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)Lrz0;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method


# virtual methods
.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lrz0;->backupTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lrz0;->totalCalls:I

    .line 2
    .line 3
    return p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lrz0;->device:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lrz0;->driveId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lrz0;->remoteFileSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)Lrz0;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p0, Lrz0;

    .line 8
    .line 9
    invoke-direct/range {p0 .. p8}, Lrz0;-><init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)V

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
    instance-of v1, p1, Lrz0;

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
    check-cast p1, Lrz0;

    .line 12
    .line 13
    iget-object v1, p0, Lrz0;->fileName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lrz0;->fileName:Ljava/lang/String;

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
    iget-wide v3, p0, Lrz0;->backupTime:J

    .line 25
    .line 26
    iget-wide v5, p1, Lrz0;->backupTime:J

    .line 27
    .line 28
    cmp-long v1, v3, v5

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget v1, p0, Lrz0;->totalCalls:I

    .line 34
    .line 35
    iget v3, p1, Lrz0;->totalCalls:I

    .line 36
    .line 37
    if-eq v1, v3, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-object v1, p0, Lrz0;->device:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, p1, Lrz0;->device:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    iget-object v1, p0, Lrz0;->driveId:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v3, p1, Lrz0;->driveId:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_6

    .line 60
    .line 61
    return v2

    .line 62
    :cond_6
    iget-wide v3, p0, Lrz0;->remoteFileSize:J

    .line 63
    .line 64
    iget-wide p0, p1, Lrz0;->remoteFileSize:J

    .line 65
    .line 66
    cmp-long p0, v3, p0

    .line 67
    .line 68
    if-eqz p0, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    return v0
.end method

.method public final getBackupTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lrz0;->backupTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic getCopy()Ljl0;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lrz0;->getCopy()Lrz0;

    move-result-object p0

    return-object p0
.end method

.method public getCopy()Lrz0;
    .locals 11

    .line 1
    const/16 v9, 0x3f

    .line 2
    .line 3
    const/4 v10, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const-wide/16 v7, 0x0

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v10}, Lrz0;->copy$default(Lrz0;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lrz0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final getDevice()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lrz0;->device:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDriveId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lrz0;->driveId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lrz0;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLocalFile()Lq63;
    .locals 2

    .line 1
    sget-object v0, Lry5;->u:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v0}, Lqy5;->f(ZLzn7;)Lry5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lrz0;->isCloudItem()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lry5;->m:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, v0, Lry5;->l:Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    new-instance v1, Lq63;

    .line 21
    .line 22
    iget-object p0, p0, Lrz0;->fileName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, p0}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 v0, 0x2

    .line 29
    invoke-direct {v1, p0, v0}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method public final getRemoteFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lrz0;->remoteFileSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTotalCalls()I
    .locals 0

    .line 1
    iget p0, p0, Lrz0;->totalCalls:I

    .line 2
    .line 3
    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lrz0;->fileName:Ljava/lang/String;

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
    iget-wide v2, p0, Lrz0;->backupTime:J

    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lrz0;->totalCalls:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lrz0;->device:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lrz0;->driveId:Ljava/lang/String;

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    :goto_0
    add-int/2addr v0, v2

    .line 39
    mul-int/2addr v0, v1

    .line 40
    iget-wide v1, p0, Lrz0;->remoteFileSize:J

    .line 41
    .line 42
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    add-int/2addr p0, v0

    .line 47
    return p0
.end method

.method public final isCloudItem()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lrz0;->driveId:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    move p0, v0

    .line 16
    :goto_1
    xor-int/2addr p0, v0

    .line 17
    return p0
.end method

.method public final isLocalItem()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrz0;->isCloudItem()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method public final setRemoteFileSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lrz0;->remoteFileSize:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lrz0;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Lrz0;->backupTime:J

    .line 4
    .line 5
    iget v3, p0, Lrz0;->totalCalls:I

    .line 6
    .line 7
    iget-object v4, p0, Lrz0;->device:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lrz0;->driveId:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v6, p0, Lrz0;->remoteFileSize:J

    .line 12
    .line 13
    const-string p0, "CallLogBackupItem(fileName="

    .line 14
    .line 15
    const-string v8, ", backupTime="

    .line 16
    .line 17
    invoke-static {p0, v0, v1, v2, v8}, Lu48;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, ", totalCalls="

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, ", device="

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", driveId="

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ", remoteFileSize="

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ")"

    .line 51
    .line 52
    invoke-static {v6, v7, v0, p0}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
