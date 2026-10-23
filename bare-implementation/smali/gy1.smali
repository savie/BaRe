.class public final Lgy1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lfy1;

.field public final b:Lfy1;

.field public final c:Lfy1;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lfy1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lfy1;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lfy1;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lgy1;->a:Lfy1;

    .line 20
    .line 21
    iput-object v1, p0, Lgy1;->b:Lfy1;

    .line 22
    .line 23
    iput-object v2, p0, Lgy1;->c:Lfy1;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lgy1;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lgy1;

    .line 10
    .line 11
    iget-object v0, p0, Lgy1;->a:Lfy1;

    .line 12
    .line 13
    iget-object v1, p1, Lgy1;->a:Lfy1;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lfy1;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lgy1;->b:Lfy1;

    .line 22
    .line 23
    iget-object v1, p1, Lgy1;->b:Lfy1;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lfy1;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lgy1;->c:Lfy1;

    .line 32
    .line 33
    iget-object p1, p1, Lgy1;->c:Lfy1;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lfy1;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    :goto_0
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lgy1;->b:Lfy1;

    .line 2
    .line 3
    iget-object v1, p0, Lgy1;->c:Lfy1;

    .line 4
    .line 5
    iget-object p0, p0, Lgy1;->a:Lfy1;

    .line 6
    .line 7
    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lgy1;->c:Lfy1;

    .line 2
    .line 3
    iget-wide v0, v0, Lfy1;->a:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lgy1;->b:Lfy1;

    .line 10
    .line 11
    iget-wide v1, v1, Lfy1;->a:J

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object p0, p0, Lgy1;->a:Lfy1;

    .line 18
    .line 19
    iget-wide v2, p0, Lfy1;->a:J

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "%,d files, %,d directories, %,d bytes"

    .line 30
    .line 31
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
