.class public final Lvu3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field public f:I


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 8
    .line 9
    const-string v1, "GeneralPurposeBit is not Cloneable?"

    .line 10
    .line 11
    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lvu3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lvu3;

    .line 8
    .line 9
    iget-boolean v0, p1, Lvu3;->c:Z

    .line 10
    .line 11
    iget-boolean v2, p0, Lvu3;->c:Z

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p1, Lvu3;->d:Z

    .line 16
    .line 17
    iget-boolean v2, p0, Lvu3;->d:Z

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p1, Lvu3;->a:Z

    .line 22
    .line 23
    iget-boolean v2, p0, Lvu3;->a:Z

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    iget-boolean p1, p1, Lvu3;->b:Z

    .line 28
    .line 29
    iget-boolean p0, p0, Lvu3;->b:Z

    .line 30
    .line 31
    if-ne p1, p0, :cond_1

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lvu3;->c:Z

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x11

    .line 4
    .line 5
    iget-boolean v1, p0, Lvu3;->d:Z

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0xd

    .line 9
    .line 10
    iget-boolean v1, p0, Lvu3;->a:Z

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x7

    .line 14
    .line 15
    iget-boolean p0, p0, Lvu3;->b:Z

    .line 16
    .line 17
    add-int/2addr v0, p0

    .line 18
    mul-int/lit8 v0, v0, 0x3

    .line 19
    .line 20
    return v0
.end method
