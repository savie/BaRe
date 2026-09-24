.class public abstract Lha4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lha4;->a:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    rem-int/lit8 v0, v0, 0x2

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    array-length v0, p1

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_1
    array-length v0, p1

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    array-length v3, p1

    .line 21
    invoke-static {p1, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    array-length v3, p1

    .line 25
    invoke-static {v0, v1, v3, p1, p2}, Lha4;->d([Ljava/lang/Object;II[Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 26
    .line 27
    .line 28
    move v0, v1

    .line 29
    move v3, v0

    .line 30
    move-object v4, v2

    .line 31
    :goto_1
    array-length v5, p1

    .line 32
    if-ge v0, v5, :cond_5

    .line 33
    .line 34
    aget-object v5, p1, v0

    .line 35
    .line 36
    add-int/lit8 v6, v0, 0x1

    .line 37
    .line 38
    aget-object v6, p1, v6

    .line 39
    .line 40
    if-nez v5, :cond_2

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    if-eqz v4, :cond_3

    .line 44
    .line 45
    invoke-interface {p2, v5, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    add-int/lit8 v3, v3, -0x2

    .line 52
    .line 53
    :cond_3
    if-nez v6, :cond_4

    .line 54
    .line 55
    move-object v4, v2

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    add-int/lit8 v4, v3, 0x1

    .line 58
    .line 59
    aput-object v5, p1, v3

    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x2

    .line 62
    .line 63
    aput-object v6, p1, v4

    .line 64
    .line 65
    move-object v4, v5

    .line 66
    :goto_2
    add-int/lit8 v0, v0, 0x2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_5
    array-length p2, p1

    .line 70
    if-eq p2, v3, :cond_6

    .line 71
    .line 72
    new-array p2, v3, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {p1, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    .line 76
    .line 77
    move-object p1, p2

    .line 78
    :cond_6
    :goto_3
    invoke-direct {p0, p1}, Lha4;-><init>([Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_7
    const-string p0, "You must provide an even number of key/value pair arguments."

    .line 83
    .line 84
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v2
.end method

.method public static d([Ljava/lang/Object;II[Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 5

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-gt v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_3

    .line 7
    :cond_0
    add-int v0, p2, p1

    .line 8
    .line 9
    div-int/lit8 v0, v0, 0x4

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    invoke-static {p3, p1, v0, p0, p4}, Lha4;->d([Ljava/lang/Object;II[Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0, p2, p0, p4}, Lha4;->d([Ljava/lang/Object;II[Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 16
    .line 17
    .line 18
    move v1, p1

    .line 19
    move v2, v0

    .line 20
    :goto_0
    if-ge p1, p2, :cond_6

    .line 21
    .line 22
    add-int/lit8 v3, v0, -0x1

    .line 23
    .line 24
    if-ge v1, v3, :cond_5

    .line 25
    .line 26
    add-int/lit8 v3, p2, -0x1

    .line 27
    .line 28
    if-ge v2, v3, :cond_4

    .line 29
    .line 30
    aget-object v3, p0, v1

    .line 31
    .line 32
    aget-object v4, p0, v2

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v3, -0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    if-nez v4, :cond_3

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-interface {p4, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    :goto_1
    if-gtz v3, :cond_5

    .line 51
    .line 52
    :cond_4
    aget-object v3, p0, v1

    .line 53
    .line 54
    aput-object v3, p3, p1

    .line 55
    .line 56
    add-int/lit8 v3, p1, 0x1

    .line 57
    .line 58
    add-int/lit8 v4, v1, 0x1

    .line 59
    .line 60
    aget-object v4, p0, v4

    .line 61
    .line 62
    aput-object v4, p3, v3

    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_5
    aget-object v3, p0, v2

    .line 68
    .line 69
    aput-object v3, p3, p1

    .line 70
    .line 71
    add-int/lit8 v3, p1, 0x1

    .line 72
    .line 73
    add-int/lit8 v4, v2, 0x1

    .line 74
    .line 75
    aget-object v4, p0, v4

    .line 76
    .line 77
    aput-object v4, p3, v3

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x2

    .line 80
    .line 81
    :goto_2
    add-int/lit8 p1, p1, 0x2

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lha4;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Lha4;

    .line 12
    .line 13
    iget-object p0, p0, Lha4;->a:[Ljava/lang/Object;

    .line 14
    .line 15
    iget-object p1, p1, Lha4;->a:[Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final forEach(Lon8;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lha4;->a:[Ljava/lang/Object;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    aget-object v2, v1, v0

    .line 8
    .line 9
    add-int/lit8 v3, v0, 0x1

    .line 10
    .line 11
    aget-object v1, v1, v3

    .line 12
    .line 13
    invoke-virtual {p1, v2, v1}, Lon8;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object p0, p0, Lha4;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const v0, 0xf4243

    .line 8
    .line 9
    .line 10
    xor-int/2addr p0, v0

    .line 11
    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lha4;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lha4;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    div-int/lit8 p0, p0, 0x2

    .line 5
    .line 6
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lha4;->a:[Ljava/lang/Object;

    .line 10
    .line 11
    array-length v3, v2

    .line 12
    if-ge v1, v3, :cond_1

    .line 13
    .line 14
    add-int/lit8 v3, v1, 0x1

    .line 15
    .line 16
    aget-object v3, v2, v3

    .line 17
    .line 18
    instance-of v4, v3, Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v5, "\""

    .line 25
    .line 26
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v3, 0x22

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :goto_1
    aget-object v2, v2, v1

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, "="

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, ", "

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    const/4 v1, 0x1

    .line 74
    if-le p0, v1, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    add-int/lit8 p0, p0, -0x2

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 83
    .line 84
    .line 85
    :cond_2
    const-string p0, "}"

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method
