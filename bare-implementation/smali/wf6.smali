.class public final Lwf6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(JLjava/lang/String;ZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lwf6;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lwf6;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p4, p0, Lwf6;->c:Z

    .line 9
    .line 10
    iput-wide p5, p0, Lwf6;->d:J

    .line 11
    .line 12
    iput-wide p7, p0, Lwf6;->e:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    const-class v1, Lwf6;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lwf6;

    .line 18
    .line 19
    iget-wide v1, p0, Lwf6;->a:J

    .line 20
    .line 21
    iget-wide v3, p1, Lwf6;->a:J

    .line 22
    .line 23
    cmp-long v1, v1, v3

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    return v0

    .line 28
    :cond_2
    iget-boolean v1, p0, Lwf6;->c:Z

    .line 29
    .line 30
    iget-boolean v2, p1, Lwf6;->c:Z

    .line 31
    .line 32
    if-eq v1, v2, :cond_3

    .line 33
    .line 34
    return v0

    .line 35
    :cond_3
    iget-wide v1, p0, Lwf6;->d:J

    .line 36
    .line 37
    iget-wide v3, p1, Lwf6;->d:J

    .line 38
    .line 39
    cmp-long v1, v1, v3

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    return v0

    .line 44
    :cond_4
    iget-wide v1, p0, Lwf6;->e:J

    .line 45
    .line 46
    iget-wide v3, p1, Lwf6;->e:J

    .line 47
    .line 48
    cmp-long v1, v1, v3

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    return v0

    .line 53
    :cond_5
    iget-object p0, p0, Lwf6;->b:Ljava/lang/String;

    .line 54
    .line 55
    iget-object p1, p1, Lwf6;->b:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    :cond_6
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lwf6;->a:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v3, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v0, v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-object v3, p0, Lwf6;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1, v3}, Lfz5;->g(IILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-boolean v3, p0, Lwf6;->c:Z

    .line 19
    .line 20
    add-int/2addr v0, v3

    .line 21
    mul-int/2addr v0, v1

    .line 22
    iget-wide v3, p0, Lwf6;->d:J

    .line 23
    .line 24
    ushr-long v5, v3, v2

    .line 25
    .line 26
    xor-long/2addr v3, v5

    .line 27
    long-to-int v3, v3

    .line 28
    add-int/2addr v0, v3

    .line 29
    mul-int/2addr v0, v1

    .line 30
    iget-wide v3, p0, Lwf6;->e:J

    .line 31
    .line 32
    ushr-long v1, v3, v2

    .line 33
    .line 34
    xor-long/2addr v1, v3

    .line 35
    long-to-int p0, v1

    .line 36
    add-int/2addr v0, p0

    .line 37
    return v0
.end method
