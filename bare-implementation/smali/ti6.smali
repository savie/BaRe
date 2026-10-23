.class public final Lti6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# static fields
.field public static final k:Lti6;


# instance fields
.field public transient a:Lqi6;

.field public transient b:Lri6;

.field public transient c:Lsi6;

.field public final transient d:Ljava/lang/Object;

.field public final transient e:[Ljava/lang/Object;

.field public final transient f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lti6;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v3, v2, v1}, Lti6;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lti6;->k:Lti6;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lti6;->d:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lti6;->e:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lti6;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final clear()V
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

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lti6;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lti6;->c:Lsi6;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lsi6;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iget v2, p0, Lti6;->f:I

    .line 9
    .line 10
    iget-object v3, p0, Lti6;->e:[Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0, v3, v1, v2}, Lsi6;-><init>([Ljava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lti6;->c:Lsi6;

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lla4;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lti6;->a:Lqi6;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lqi6;

    .line 6
    .line 7
    iget-object v1, p0, Lti6;->e:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v2, p0, Lti6;->f:I

    .line 10
    .line 11
    invoke-direct {v0, p0, v1, v2}, Lqi6;-><init>(Lti6;[Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lti6;->a:Lqi6;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

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
    instance-of v0, p1, Ljava/util/Map;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {p0}, Lti6;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p0, Lna4;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lna4;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    :cond_0
    :goto_0
    move-object p0, v0

    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_1
    iget-object v1, p0, Lti6;->e:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v2, p0, Lti6;->f:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_2

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    aget-object p0, v1, p0

    .line 16
    .line 17
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    aget-object p0, v1, v3

    .line 27
    .line 28
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_2
    iget-object p0, p0, Lti6;->d:Ljava/lang/Object;

    .line 34
    .line 35
    if-nez p0, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    instance-of v2, p0, [B

    .line 39
    .line 40
    if-eqz v2, :cond_6

    .line 41
    .line 42
    move-object v2, p0

    .line 43
    check-cast v2, [B

    .line 44
    .line 45
    array-length p0, v2

    .line 46
    add-int/lit8 v4, p0, -0x1

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-static {p0}, Lcy0;->G(I)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    :goto_1
    and-int/2addr p0, v4

    .line 57
    aget-byte v5, v2, p0

    .line 58
    .line 59
    const/16 v6, 0xff

    .line 60
    .line 61
    and-int/2addr v5, v6

    .line 62
    if-ne v5, v6, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    aget-object v6, v1, v5

    .line 66
    .line 67
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_5

    .line 72
    .line 73
    xor-int/lit8 p0, v5, 0x1

    .line 74
    .line 75
    aget-object p0, v1, p0

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_5
    add-int/lit8 p0, p0, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_6
    instance-of v2, p0, [S

    .line 82
    .line 83
    if-eqz v2, :cond_9

    .line 84
    .line 85
    move-object v2, p0

    .line 86
    check-cast v2, [S

    .line 87
    .line 88
    array-length p0, v2

    .line 89
    add-int/lit8 v4, p0, -0x1

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-static {p0}, Lcy0;->G(I)I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    :goto_2
    and-int/2addr p0, v4

    .line 100
    aget-short v5, v2, p0

    .line 101
    .line 102
    const v6, 0xffff

    .line 103
    .line 104
    .line 105
    and-int/2addr v5, v6

    .line 106
    if-ne v5, v6, :cond_7

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_7
    aget-object v6, v1, v5

    .line 110
    .line 111
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_8

    .line 116
    .line 117
    xor-int/lit8 p0, v5, 0x1

    .line 118
    .line 119
    aget-object p0, v1, p0

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_8
    add-int/lit8 p0, p0, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_9
    check-cast p0, [I

    .line 126
    .line 127
    array-length v2, p0

    .line 128
    sub-int/2addr v2, v3

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-static {v4}, Lcy0;->G(I)I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    :goto_3
    and-int/2addr v4, v2

    .line 138
    aget v5, p0, v4

    .line 139
    .line 140
    const/4 v6, -0x1

    .line 141
    if-ne v5, v6, :cond_a

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_a
    aget-object v6, v1, v5

    .line 146
    .line 147
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-eqz v6, :cond_c

    .line 152
    .line 153
    xor-int/lit8 p0, v5, 0x1

    .line 154
    .line 155
    aget-object p0, v1, p0

    .line 156
    .line 157
    :goto_4
    if-nez p0, :cond_b

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_b
    return-object p0

    .line 161
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 162
    .line 163
    goto :goto_3
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lti6;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lti6;->a:Lqi6;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lqi6;

    .line 6
    .line 7
    iget-object v1, p0, Lti6;->e:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v2, p0, Lti6;->f:I

    .line 10
    .line 11
    invoke-direct {v0, p0, v1, v2}, Lqi6;-><init>(Lti6;[Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lti6;->a:Lqi6;

    .line 15
    .line 16
    :cond_0
    invoke-static {v0}, Lly8;->A(Ljava/util/Set;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lti6;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 4

    .line 1
    iget-object v0, p0, Lti6;->b:Lri6;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lsi6;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iget v2, p0, Lti6;->f:I

    .line 9
    .line 10
    iget-object v3, p0, Lti6;->e:[Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0, v3, v1, v2}, Lsi6;-><init>([Ljava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lri6;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lri6;-><init>(Lti6;Lsi6;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lti6;->b:Lri6;

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

.method public final putAll(Ljava/util/Map;)V
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

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
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

.method public final size()I
    .locals 0

    .line 1
    iget p0, p0, Lti6;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "size"

    .line 2
    .line 3
    iget v1, p0, Lti6;->f:I

    .line 4
    .line 5
    invoke-static {v1, v0}, Llg7;->c(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    int-to-long v1, v1

    .line 11
    const-wide/16 v3, 0x8

    .line 12
    .line 13
    mul-long/2addr v1, v3

    .line 14
    const-wide/32 v3, 0x40000000

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    long-to-int v1, v1

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x7b

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lti6;->entrySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lqi6;

    .line 35
    .line 36
    invoke-virtual {p0}, Lqi6;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 v1, 0x1

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/util/Map$Entry;

    .line 52
    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    const-string v1, ", "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/16 v1, 0x3d

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/16 p0, 0x7d

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 4

    .line 1
    iget-object v0, p0, Lti6;->c:Lsi6;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lsi6;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iget v2, p0, Lti6;->f:I

    .line 9
    .line 10
    iget-object v3, p0, Lti6;->e:[Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0, v3, v1, v2}, Lsi6;-><init>([Ljava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lti6;->c:Lsi6;

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method
