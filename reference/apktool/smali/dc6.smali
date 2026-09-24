.class public abstract Ldc6;
.super Lyr5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc6$a;
    }
.end annotation


# instance fields
.field protected q:Ljava/lang/Long;

.field protected r:J

.field protected s:I

.field protected t:Lokhttp3/MediaType;

.field protected u:Ly51$a;

.field protected v:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyr5;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Ldc6;

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
    invoke-super {p0, p1}, Lyr5;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    return v2

    .line 18
    :cond_2
    check-cast p1, Ldc6;

    .line 19
    .line 20
    iget-object v1, p0, Ldc6;->q:Ljava/lang/Long;

    .line 21
    .line 22
    iget-object v3, p1, Ldc6;->q:Ljava/lang/Long;

    .line 23
    .line 24
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget-wide v3, p0, Ldc6;->r:J

    .line 31
    .line 32
    iget-wide v5, p1, Ldc6;->r:J

    .line 33
    .line 34
    cmp-long v1, v3, v5

    .line 35
    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    iget v1, p0, Ldc6;->s:I

    .line 39
    .line 40
    iget v3, p1, Ldc6;->s:I

    .line 41
    .line 42
    if-ne v1, v3, :cond_3

    .line 43
    .line 44
    iget-object v1, p0, Ldc6;->t:Lokhttp3/MediaType;

    .line 45
    .line 46
    iget-object v3, p1, Ldc6;->t:Lokhttp3/MediaType;

    .line 47
    .line 48
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Ldc6;->u:Ly51$a;

    .line 55
    .line 56
    iget-object v3, p1, Ldc6;->u:Ly51$a;

    .line 57
    .line 58
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    iget p0, p0, Ldc6;->v:I

    .line 65
    .line 66
    iget p1, p1, Ldc6;->v:I

    .line 67
    .line 68
    if-ne p0, p1, :cond_3

    .line 69
    .line 70
    return v0

    .line 71
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 8

    .line 1
    invoke-super {p0}, Lyr5;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Ldc6;->q:Ljava/lang/Long;

    .line 10
    .line 11
    iget-wide v3, p0, Ldc6;->r:J

    .line 12
    .line 13
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget v0, p0, Ldc6;->s:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-object v5, p0, Ldc6;->t:Lokhttp3/MediaType;

    .line 24
    .line 25
    iget-object v6, p0, Ldc6;->u:Ly51$a;

    .line 26
    .line 27
    iget p0, p0, Ldc6;->v:I

    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public j()Lokhttp3/MediaType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc6;->t:Lokhttp3/MediaType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-super {p0}, Lyr5;->j()Lokhttp3/MediaType;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public u()Ly51$a;
    .locals 0

    .line 1
    iget-object p0, p0, Ldc6;->u:Ly51$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public v()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Ldc6;->q:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public w()I
    .locals 0

    .line 1
    iget p0, p0, Ldc6;->v:I

    .line 2
    .line 3
    return p0
.end method

.method public x()I
    .locals 0

    .line 1
    iget p0, p0, Ldc6;->s:I

    .line 2
    .line 3
    return p0
.end method

.method public y()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ldc6;->r:J

    .line 2
    .line 3
    return-wide v0
.end method
