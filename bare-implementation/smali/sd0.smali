.class public final Lsd0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrj7;


# static fields
.field public static final k:Lsd0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lz88;

.field public final d:La98;

.field public final e:Z

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v3, Lsa4;->d:Lsa4;

    .line 2
    .line 3
    sget-object v4, Lu40;->c:Lrb0;

    .line 4
    .line 5
    new-instance v0, Lsd0;

    .line 6
    .line 7
    const-string v1, "00000000000000000000000000000000"

    .line 8
    .line 9
    const-string v2, "0000000000000000"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    invoke-direct/range {v0 .. v6}, Lsd0;-><init>(Ljava/lang/String;Ljava/lang/String;Lz88;La98;ZZ)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lsd0;->k:Lsd0;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lz88;La98;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsd0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lsd0;->b:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iput-object p3, p0, Lsd0;->c:Lz88;

    .line 12
    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    iput-object p4, p0, Lsd0;->d:La98;

    .line 16
    .line 17
    iput-boolean p5, p0, Lsd0;->e:Z

    .line 18
    .line 19
    iput-boolean p6, p0, Lsd0;->f:Z

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p0, "Null traceState"

    .line 23
    .line 24
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    const-string p0, "Null traceFlags"

    .line 29
    .line 30
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lz88;La98;Z)Lsd0;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    const-string v0, "0000000000000000"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    sget-object v0, Luu5;->a:[C

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    move v2, v1

    .line 25
    :goto_0
    if-ge v2, v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    sget-object v4, Luu5;->c:[Z

    .line 32
    .line 33
    aget-boolean v3, v4, v3

    .line 34
    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/16 v2, 0x20

    .line 46
    .line 47
    if-ne v0, v2, :cond_2

    .line 48
    .line 49
    const-string v0, "00000000000000000000000000000000"

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    sget-object v0, Luu5;->a:[C

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    :goto_1
    if-ge v1, v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    sget-object v3, Luu5;->c:[Z

    .line 70
    .line 71
    aget-boolean v2, v3, v2

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    :cond_2
    :goto_2
    move-object v5, p2

    .line 76
    move-object v6, p3

    .line 77
    move v7, p4

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    new-instance v2, Lsd0;

    .line 83
    .line 84
    const/4 v8, 0x1

    .line 85
    move-object v3, p0

    .line 86
    move-object v4, p1

    .line 87
    move-object v5, p2

    .line 88
    move-object v6, p3

    .line 89
    move v7, p4

    .line 90
    invoke-direct/range {v2 .. v8}, Lsd0;-><init>(Ljava/lang/String;Ljava/lang/String;Lz88;La98;ZZ)V

    .line 91
    .line 92
    .line 93
    return-object v2

    .line 94
    :goto_3
    new-instance v3, Lsd0;

    .line 95
    .line 96
    const-string v4, "00000000000000000000000000000000"

    .line 97
    .line 98
    move v8, v7

    .line 99
    move-object v7, v6

    .line 100
    move-object v6, v5

    .line 101
    const-string v5, "0000000000000000"

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    invoke-direct/range {v3 .. v9}, Lsd0;-><init>(Ljava/lang/String;Ljava/lang/String;Lz88;La98;ZZ)V

    .line 105
    .line 106
    .line 107
    return-object v3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lsd0;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p1, Lsd0;

    .line 9
    .line 10
    iget-object v0, p0, Lsd0;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p1, Lsd0;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lsd0;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p1, Lsd0;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lsd0;->c:Lz88;

    .line 31
    .line 32
    iget-object v1, p1, Lsd0;->c:Lz88;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lsd0;->d:La98;

    .line 41
    .line 42
    iget-object v1, p1, Lsd0;->d:La98;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-boolean v0, p0, Lsd0;->e:Z

    .line 51
    .line 52
    iget-boolean v1, p1, Lsd0;->e:Z

    .line 53
    .line 54
    if-ne v0, v1, :cond_1

    .line 55
    .line 56
    iget-boolean p0, p0, Lsd0;->f:Z

    .line 57
    .line 58
    iget-boolean p1, p1, Lsd0;->f:Z

    .line 59
    .line 60
    if-ne p0, p1, :cond_1

    .line 61
    .line 62
    :goto_0
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    :cond_1
    const/4 p0, 0x0

    .line 65
    return p0
.end method

.method public final getSpanId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsd0;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTraceFlags()Lz88;
    .locals 0

    .line 1
    iget-object p0, p0, Lsd0;->c:Lz88;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTraceId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsd0;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTraceState()La98;
    .locals 0

    .line 1
    iget-object p0, p0, Lsd0;->d:La98;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lsd0;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 8
    .line 9
    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-object v2, p0, Lsd0;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    xor-int/2addr v0, v2

    .line 19
    mul-int/2addr v0, v1

    .line 20
    iget-object v2, p0, Lsd0;->c:Lz88;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    xor-int/2addr v0, v2

    .line 27
    mul-int/2addr v0, v1

    .line 28
    iget-object v2, p0, Lsd0;->d:La98;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    xor-int/2addr v0, v2

    .line 35
    mul-int/2addr v0, v1

    .line 36
    iget-boolean v2, p0, Lsd0;->e:Z

    .line 37
    .line 38
    const/16 v3, 0x4d5

    .line 39
    .line 40
    const/16 v4, 0x4cf

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    move v2, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v2, v3

    .line 47
    :goto_0
    xor-int/2addr v0, v2

    .line 48
    mul-int/2addr v0, v1

    .line 49
    iget-boolean p0, p0, Lsd0;->f:Z

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    move v3, v4

    .line 54
    :cond_1
    xor-int p0, v0, v3

    .line 55
    .line 56
    return p0
.end method

.method public final isValid()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsd0;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ImmutableSpanContext{traceId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lsd0;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", spanId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lsd0;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", traceFlags="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lsd0;->c:Lz88;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", traceState="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lsd0;->d:La98;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", remote="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lsd0;->e:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", valid="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean p0, p0, Lsd0;->f:Z

    .line 59
    .line 60
    const-string v1, "}"

    .line 61
    .line 62
    invoke-static {v0, p0, v1}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
