.class public final Ljv6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljv6$a;
    }
.end annotation


# static fields
.field public static final Companion:Ljv6$a;

.field private static final simpleDateFormat$delegate:Los4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Los4;"
        }
    .end annotation
.end field


# instance fields
.field private color:Ljava/lang/String;

.field private id:J

.field private messageType:I

.field private msg:Ljava/lang/String;

.field private time:J

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljv6$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljv6$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ljv6;->Companion:Ljv6$a;

    .line 8
    .line 9
    new-instance v0, Ldl;

    .line 10
    .line 11
    const/16 v1, 0x11

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ldl;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lgv7;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Ljv6;->simpleDateFormat$delegate:Los4;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    iput-wide p1, p0, Ljv6;->time:J

    .line 11
    .line 12
    iput p3, p0, Ljv6;->messageType:I

    .line 13
    .line 14
    iput-object p4, p0, Ljv6;->title:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p5, p0, Ljv6;->msg:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p6, p0, Ljv6;->color:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    invoke-static {}, Ljv6;->simpleDateFormat_delegate$lambda$0()Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$getSimpleDateFormat$delegate$cp()Los4;
    .locals 1

    .line 1
    sget-object v0, Ljv6;->simpleDateFormat$delegate:Los4;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic copy$default(Ljv6;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljv6;
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    iget-wide p1, p0, Ljv6;->time:J

    .line 6
    .line 7
    :cond_0
    move-wide v1, p1

    .line 8
    and-int/lit8 p1, p7, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget p3, p0, Ljv6;->messageType:I

    .line 13
    .line 14
    :cond_1
    move v3, p3

    .line 15
    and-int/lit8 p1, p7, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p4, p0, Ljv6;->title:Ljava/lang/String;

    .line 20
    .line 21
    :cond_2
    move-object v4, p4

    .line 22
    and-int/lit8 p1, p7, 0x8

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-object p5, p0, Ljv6;->msg:Ljava/lang/String;

    .line 27
    .line 28
    :cond_3
    move-object v5, p5

    .line 29
    and-int/lit8 p1, p7, 0x10

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    iget-object p6, p0, Ljv6;->color:Ljava/lang/String;

    .line 34
    .line 35
    :cond_4
    move-object v0, p0

    .line 36
    move-object v6, p6

    .line 37
    invoke-virtual/range {v0 .. v6}, Ljv6;->copy(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljv6;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method private static final getLogColor$lambda$0(Ljv6;)Lvr6$a;
    .locals 0

    .line 1
    iget-object p0, p0, Ljv6;->color:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lvr6$a;->valueOf(Ljava/lang/String;)Lvr6$a;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method private static final simpleDateFormat_delegate$lambda$0()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "en-IN"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "dd/MM/yy HH:mm:ss.SSS"

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static synthetic toString$default(Ljv6;ZZZILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move p2, v0

    .line 12
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 13
    .line 14
    if-eqz p4, :cond_2

    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ljv6;->toString(ZZZ)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ljv6;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()I
    .locals 0

    .line 1
    iget p0, p0, Ljv6;->messageType:I

    .line 2
    .line 3
    return p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ljv6;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ljv6;->msg:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ljv6;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljv6;
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p0, Ljv6;

    .line 8
    .line 9
    invoke-direct/range {p0 .. p6}, Ljv6;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Ljv6;

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
    check-cast p1, Ljv6;

    .line 12
    .line 13
    iget-wide v3, p0, Ljv6;->time:J

    .line 14
    .line 15
    iget-wide v5, p1, Ljv6;->time:J

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
    iget v1, p0, Ljv6;->messageType:I

    .line 23
    .line 24
    iget v3, p1, Ljv6;->messageType:I

    .line 25
    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget-object v1, p0, Ljv6;->title:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p1, Ljv6;->title:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-object v1, p0, Ljv6;->msg:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, p1, Ljv6;->msg:Ljava/lang/String;

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
    iget-object p0, p0, Ljv6;->color:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p1, p1, Ljv6;->color:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_6

    .line 60
    .line 61
    return v2

    .line 62
    :cond_6
    return v0
.end method

.method public final getColor()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ljv6;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic getCopy()Ljl0;
    .locals 0

    .line 16
    invoke-virtual {p0}, Ljv6;->getCopy()Ljv6;

    move-result-object p0

    return-object p0
.end method

.method public getCopy()Ljv6;
    .locals 9

    .line 1
    const/16 v7, 0x1f

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    move-object v0, p0

    .line 11
    invoke-static/range {v0 .. v8}, Ljv6;->copy$default(Ljv6;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljv6;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ljv6;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Ljv6;->id:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getLogColor()Lvr6$a;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljv6;->getLogColor$lambda$0(Ljv6;)Lvr6$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final getMessageType()I
    .locals 0

    .line 1
    iget p0, p0, Ljv6;->messageType:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ljv6;->msg:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ljv6;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTimeString(Z)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ljv6;->Companion:Ljv6$a;

    .line 2
    .line 3
    invoke-static {v0}, Ljv6$a;->access$getSimpleDateFormat(Ljv6$a;)Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Ljv6;->time:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string p1, " "

    .line 24
    .line 25
    const-string v0, "\n"

    .line 26
    .line 27
    invoke-static {p0, p1, v0}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ljv6;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Ljv6;->time:J

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
    iget v2, p0, Ljv6;->messageType:I

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Ljv6;->title:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Ljv6;->msg:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object p0, p0, Ljv6;->color:Ljava/lang/String;

    .line 29
    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    :goto_0
    add-int/2addr v0, p0

    .line 39
    return v0
.end method

.method public final setColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljv6;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ljv6;->id:J

    .line 2
    .line 3
    return-void
.end method

.method public final setMessageType(I)V
    .locals 0

    .line 1
    iput p1, p0, Ljv6;->messageType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljv6;->msg:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ljv6;->time:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljv6;->title:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 73
    invoke-virtual {p0}, Ljv6;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(ZZZ)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Ljv6;->getTimeString(Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz p2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-lez p1, :cond_1

    .line 23
    .line 24
    const-string p1, "/"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Ljv6;->title:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-lez p1, :cond_3

    .line 39
    .line 40
    const-string p1, ": "

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_3
    iget p1, p0, Ljv6;->messageType:I

    .line 46
    .line 47
    const/4 p2, 0x6

    .line 48
    if-ne p1, p2, :cond_4

    .line 49
    .line 50
    if-eqz p3, :cond_4

    .line 51
    .line 52
    iget-object p0, p0, Ljv6;->msg:Ljava/lang/String;

    .line 53
    .line 54
    const-string p1, "<"

    .line 55
    .line 56
    const-string p2, ">"

    .line 57
    .line 58
    invoke-static {p1, p0, p2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    iget-object p0, p0, Ljv6;->msg:Ljava/lang/String;

    .line 64
    .line 65
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
