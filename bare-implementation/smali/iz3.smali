.class public final Liz3;
.super Ljava/util/TimeZone;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x18

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ge p1, v0, :cond_3

    .line 8
    .line 9
    const/16 v0, 0x3c

    .line 10
    .line 11
    if-ge p2, v0, :cond_2

    .line 12
    .line 13
    mul-int/lit8 v0, p1, 0x3c

    .line 14
    .line 15
    add-int/2addr v0, p2

    .line 16
    const v1, 0xea60

    .line 17
    .line 18
    .line 19
    mul-int/2addr v0, v1

    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    neg-int v0, v0

    .line 23
    :cond_0
    iput v0, p0, Liz3;->a:I

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const/16 v1, 0x9

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const-string v1, "GMT"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    const/16 p3, 0x2d

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/16 p3, 0x2b

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    div-int/lit8 p3, p1, 0xa

    .line 48
    .line 49
    add-int/lit8 p3, p3, 0x30

    .line 50
    .line 51
    int-to-char p3, p3

    .line 52
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    rem-int/lit8 p1, p1, 0xa

    .line 56
    .line 57
    add-int/lit8 p1, p1, 0x30

    .line 58
    .line 59
    int-to-char p1, p1

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 p1, 0x3a

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    div-int/lit8 p1, p2, 0xa

    .line 69
    .line 70
    add-int/lit8 p1, p1, 0x30

    .line 71
    .line 72
    int-to-char p1, p1

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    rem-int/lit8 p2, p2, 0xa

    .line 77
    .line 78
    add-int/lit8 p2, p2, 0x30

    .line 79
    .line 80
    int-to-char p1, p2

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Liz3;->b:Ljava/lang/String;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    const-string p0, " minutes out of range"

    .line 92
    .line 93
    invoke-static {p2, p0}, Lx5;->f(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    throw v1

    .line 97
    :cond_3
    const-string p0, " hours out of range"

    .line 98
    .line 99
    invoke-static {p1, p0}, Lx5;->f(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    throw v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Liz3;

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
    check-cast p1, Liz3;

    .line 12
    .line 13
    iget v1, p0, Liz3;->a:I

    .line 14
    .line 15
    iget v3, p1, Liz3;->a:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Liz3;->b:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p1, p1, Liz3;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    return v2
.end method

.method public final getID()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Liz3;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOffset(IIIIII)I
    .locals 0

    .line 1
    iget p0, p0, Liz3;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final getRawOffset()I
    .locals 0

    .line 1
    iget p0, p0, Liz3;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Liz3;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Liz3;->b:Ljava/lang/String;

    .line 8
    .line 9
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final inDaylightTime(Ljava/util/Date;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final setRawOffset(I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[GmtTimeZone id=\""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Liz3;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\",offset="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Liz3;->a:I

    .line 19
    .line 20
    const/16 v1, 0x5d

    .line 21
    .line 22
    invoke-static {v0, p0, v1}, Leq3;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final useDaylightTime()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
