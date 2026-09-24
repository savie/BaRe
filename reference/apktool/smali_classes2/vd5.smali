.class public final Lvd5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvd5$a;
    }
.end annotation


# static fields
.field public static final Companion:Lvd5$a;

.field private static final logTag:Ljava/lang/String; = "SmsBackupItem"


# instance fields
.field private final backupTime:J

.field private final device:Ljava/lang/String;

.field private final driveId:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final remoteFileSize:Ljava/lang/Long;

.field private final totalConversations:I

.field private final totalSms:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lvd5$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lvd5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lvd5;->Companion:Lvd5$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lvd5;->fileName:Ljava/lang/String;

    .line 11
    .line 12
    iput-wide p2, p0, Lvd5;->backupTime:J

    .line 13
    .line 14
    iput p4, p0, Lvd5;->totalSms:I

    .line 15
    .line 16
    iput p5, p0, Lvd5;->totalConversations:I

    .line 17
    .line 18
    iput-object p6, p0, Lvd5;->device:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p7, p0, Lvd5;->driveId:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p8, p0, Lvd5;->remoteFileSize:Ljava/lang/Long;

    .line 23
    .line 24
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "Unknown"

    move-object v7, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    goto :goto_1

    :cond_0
    move-object/from16 v7, p6

    goto :goto_0

    .line 26
    :goto_1
    invoke-direct/range {v1 .. v9}, Lvd5;-><init>(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvd5;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic copy$default(Lvd5;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lvd5;
    .locals 0

    .line 1
    and-int/lit8 p10, p9, 0x1

    .line 2
    .line 3
    if-eqz p10, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lvd5;->fileName:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p10, p9, 0x2

    .line 8
    .line 9
    if-eqz p10, :cond_1

    .line 10
    .line 11
    iget-wide p2, p0, Lvd5;->backupTime:J

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p10, p9, 0x4

    .line 14
    .line 15
    if-eqz p10, :cond_2

    .line 16
    .line 17
    iget p4, p0, Lvd5;->totalSms:I

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p10, p9, 0x8

    .line 20
    .line 21
    if-eqz p10, :cond_3

    .line 22
    .line 23
    iget p5, p0, Lvd5;->totalConversations:I

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p10, p9, 0x10

    .line 26
    .line 27
    if-eqz p10, :cond_4

    .line 28
    .line 29
    iget-object p6, p0, Lvd5;->device:Ljava/lang/String;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p10, p9, 0x20

    .line 32
    .line 33
    if-eqz p10, :cond_5

    .line 34
    .line 35
    iget-object p7, p0, Lvd5;->driveId:Ljava/lang/String;

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p9, p9, 0x40

    .line 38
    .line 39
    if-eqz p9, :cond_6

    .line 40
    .line 41
    iget-object p8, p0, Lvd5;->remoteFileSize:Ljava/lang/Long;

    .line 42
    .line 43
    :cond_6
    move-object p9, p7

    .line 44
    move-object p10, p8

    .line 45
    move p7, p5

    .line 46
    move-object p8, p6

    .line 47
    move p6, p4

    .line 48
    move-wide p4, p2

    .line 49
    move-object p2, p0

    .line 50
    move-object p3, p1

    .line 51
    invoke-virtual/range {p2 .. p10}, Lvd5;->copy(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lvd5;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method


# virtual methods
.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lvd5;->backupTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lvd5;->totalSms:I

    .line 2
    .line 3
    return p0
.end method

.method public final component4()I
    .locals 0

    .line 1
    iget p0, p0, Lvd5;->totalConversations:I

    .line 2
    .line 3
    return p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvd5;->device:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvd5;->driveId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lvd5;->remoteFileSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lvd5;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p0, Lvd5;

    .line 8
    .line 9
    invoke-direct/range {p0 .. p8}, Lvd5;-><init>(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

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
    instance-of v1, p1, Lvd5;

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
    check-cast p1, Lvd5;

    .line 12
    .line 13
    iget-object v1, p0, Lvd5;->fileName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lvd5;->fileName:Ljava/lang/String;

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
    iget-wide v3, p0, Lvd5;->backupTime:J

    .line 25
    .line 26
    iget-wide v5, p1, Lvd5;->backupTime:J

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
    iget v1, p0, Lvd5;->totalSms:I

    .line 34
    .line 35
    iget v3, p1, Lvd5;->totalSms:I

    .line 36
    .line 37
    if-eq v1, v3, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget v1, p0, Lvd5;->totalConversations:I

    .line 41
    .line 42
    iget v3, p1, Lvd5;->totalConversations:I

    .line 43
    .line 44
    if-eq v1, v3, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget-object v1, p0, Lvd5;->device:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v3, p1, Lvd5;->device:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-object v1, p0, Lvd5;->driveId:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p1, Lvd5;->driveId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    iget-object p0, p0, Lvd5;->remoteFileSize:Ljava/lang/Long;

    .line 70
    .line 71
    iget-object p1, p1, Lvd5;->remoteFileSize:Ljava/lang/Long;

    .line 72
    .line 73
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_8

    .line 78
    .line 79
    return v2

    .line 80
    :cond_8
    return v0
.end method

.method public final getBackupTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lvd5;->backupTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic getCopy()Ljl0;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lvd5;->getCopy()Lvd5;

    move-result-object p0

    return-object p0
.end method

.method public getCopy()Lvd5;
    .locals 11

    .line 1
    const/16 v9, 0x7f

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
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v10}, Lvd5;->copy$default(Lvd5;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lvd5;

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
    iget-object p0, p0, Lvd5;->device:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDriveId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvd5;->driveId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvd5;->fileName:Ljava/lang/String;

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
    invoke-virtual {p0}, Lvd5;->isCloudItem()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lry5;->k:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, v0, Lry5;->j:Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    new-instance v1, Lq63;

    .line 21
    .line 22
    iget-object p0, p0, Lvd5;->fileName:Ljava/lang/String;

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

.method public final getRemoteFileSize()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lvd5;->remoteFileSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTotalConversations()I
    .locals 0

    .line 1
    iget p0, p0, Lvd5;->totalConversations:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTotalSms()I
    .locals 0

    .line 1
    iget p0, p0, Lvd5;->totalSms:I

    .line 2
    .line 3
    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lvd5;->fileName:Ljava/lang/String;

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
    iget-wide v2, p0, Lvd5;->backupTime:J

    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lvd5;->totalSms:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v2, p0, Lvd5;->totalConversations:I

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lvd5;->device:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v2, p0, Lvd5;->driveId:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    move v2, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    :goto_0
    add-int/2addr v0, v2

    .line 46
    mul-int/2addr v0, v1

    .line 47
    iget-object p0, p0, Lvd5;->remoteFileSize:Ljava/lang/Long;

    .line 48
    .line 49
    if-nez p0, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    :goto_1
    add-int/2addr v0, v3

    .line 57
    return v0
.end method

.method public final isCloudItem()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lvd5;->driveId:Ljava/lang/String;

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
    invoke-virtual {p0}, Lvd5;->isCloudItem()Z

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

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lvd5;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Lvd5;->backupTime:J

    .line 4
    .line 5
    iget v3, p0, Lvd5;->totalSms:I

    .line 6
    .line 7
    iget v4, p0, Lvd5;->totalConversations:I

    .line 8
    .line 9
    iget-object v5, p0, Lvd5;->device:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, p0, Lvd5;->driveId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lvd5;->remoteFileSize:Ljava/lang/Long;

    .line 14
    .line 15
    const-string v7, "MessagesBackupItem(fileName="

    .line 16
    .line 17
    const-string v8, ", backupTime="

    .line 18
    .line 19
    invoke-static {v7, v0, v1, v2, v8}, Lu48;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, ", totalSms="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", totalConversations="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ", device="

    .line 40
    .line 41
    const-string v2, ", driveId="

    .line 42
    .line 43
    invoke-static {v0, v1, v5, v2, v6}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, ", remoteFileSize="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p0, ")"

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method
