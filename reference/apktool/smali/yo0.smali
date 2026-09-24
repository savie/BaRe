.class public final Lyo0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[Ldp0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ldp0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyo0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lyo0;->b:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    iput-object p3, p0, Lyo0;->c:[Ldp0;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [Ldp0;

    .line 15
    .line 16
    iput-object p1, p0, Lyo0;->c:[Ldp0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_4

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p0, p1, :cond_1

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_1
    instance-of v2, p1, Lyo0;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    goto :goto_4

    .line 14
    :cond_2
    check-cast p1, Lyo0;

    .line 15
    .line 16
    iget-object v2, p0, Lyo0;->a:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p1, Lyo0;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_a

    .line 25
    .line 26
    iget-object v2, p1, Lyo0;->b:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p0, Lyo0;->b:Ljava/lang/String;

    .line 29
    .line 30
    if-nez v3, :cond_4

    .line 31
    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    move v2, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    move v2, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    :goto_0
    if-eqz v2, :cond_a

    .line 43
    .line 44
    iget-object p1, p1, Lyo0;->c:[Ldp0;

    .line 45
    .line 46
    iget-object p0, p0, Lyo0;->c:[Ldp0;

    .line 47
    .line 48
    if-nez p0, :cond_5

    .line 49
    .line 50
    if-nez p1, :cond_a

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_5
    if-eqz p1, :cond_a

    .line 54
    .line 55
    array-length v2, p0

    .line 56
    array-length v3, p1

    .line 57
    if-ne v2, v3, :cond_a

    .line 58
    .line 59
    move v2, v0

    .line 60
    :goto_1
    array-length v3, p0

    .line 61
    if-ge v2, v3, :cond_9

    .line 62
    .line 63
    aget-object v3, p0, v2

    .line 64
    .line 65
    aget-object v4, p1, v2

    .line 66
    .line 67
    if-nez v3, :cond_7

    .line 68
    .line 69
    if-nez v4, :cond_6

    .line 70
    .line 71
    move v3, v1

    .line 72
    goto :goto_2

    .line 73
    :cond_6
    move v3, v0

    .line 74
    goto :goto_2

    .line 75
    :cond_7
    invoke-virtual {v3, v4}, Ldp0;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    :goto_2
    if-nez v3, :cond_8

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_9
    :goto_3
    return v1

    .line 86
    :cond_a
    :goto_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    iget-object v1, p0, Lyo0;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lwx3;->t(ILjava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lyo0;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lwx3;->t(ILjava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lyo0;->c:[Ldp0;

    .line 17
    .line 18
    array-length v3, v2

    .line 19
    if-ge v1, v3, :cond_0

    .line 20
    .line 21
    aget-object v2, v2, v1

    .line 22
    .line 23
    invoke-static {v0, v2}, Lwx3;->t(ILjava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lyo0;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lyo0;->b:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v2, "="

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    iget-object v2, p0, Lyo0;->c:[Ldp0;

    .line 27
    .line 28
    array-length v3, v2

    .line 29
    if-ge v1, v3, :cond_1

    .line 30
    .line 31
    const-string v3, "; "

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    aget-object v2, v2, v1

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
