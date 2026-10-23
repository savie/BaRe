.class public final Lgy5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final d:Lgy5;


# instance fields
.field public final a:[Lm61;

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgy5;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lgy5;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lgy5;->d:Lgy5;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "/"

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v2, v0, :cond_1

    .line 16
    .line 17
    aget-object v4, p1, v2

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-lez v4, :cond_0

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-array v0, v3, [Lm61;

    .line 31
    .line 32
    iput-object v0, p0, Lgy5;->a:[Lm61;

    .line 33
    .line 34
    array-length v0, p1

    .line 35
    move v2, v1

    .line 36
    move v3, v2

    .line 37
    :goto_1
    if-ge v2, v0, :cond_3

    .line 38
    .line 39
    aget-object v4, p1, v2

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-lez v5, :cond_2

    .line 46
    .line 47
    iget-object v5, p0, Lgy5;->a:[Lm61;

    .line 48
    .line 49
    add-int/lit8 v6, v3, 0x1

    .line 50
    .line 51
    invoke-static {v4}, Lm61;->b(Ljava/lang/String;)Lm61;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    aput-object v4, v5, v3

    .line 56
    .line 57
    move v3, v6

    .line 58
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iput v1, p0, Lgy5;->b:I

    .line 62
    .line 63
    iget-object p1, p0, Lgy5;->a:[Lm61;

    .line 64
    .line 65
    array-length p1, p1

    .line 66
    iput p1, p0, Lgy5;->c:I

    .line 67
    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lm61;

    iput-object v0, p0, Lgy5;->a:[Lm61;

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    iget-object v4, p0, Lgy5;->a:[Lm61;

    add-int/lit8 v5, v2, 0x1

    invoke-static {v3}, Lm61;->b(Ljava/lang/String;)Lm61;

    move-result-object v3

    aput-object v3, v4, v2

    move v2, v5

    goto :goto_0

    .line 73
    :cond_0
    iput v1, p0, Lgy5;->b:I

    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lgy5;->c:I

    return-void
.end method

.method public varargs constructor <init>([Lm61;)V
    .locals 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm61;

    iput-object v0, p0, Lgy5;->a:[Lm61;

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lgy5;->b:I

    .line 78
    array-length v1, p1

    iput v1, p0, Lgy5;->c:I

    .line 79
    array-length p0, p1

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    .line 80
    :goto_1
    const-string v3, "Can\'t construct a path with a null value!"

    invoke-static {v3, v2}, Lzm5;->r(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>([Lm61;II)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lgy5;->a:[Lm61;

    .line 83
    iput p2, p0, Lgy5;->b:I

    .line 84
    iput p3, p0, Lgy5;->c:I

    return-void
.end method

.method public static o(Lgy5;Lgy5;)Lgy5;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lgy5;->k()Lm61;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lgy5;->k()Lm61;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {v0, v1}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lgy5;->p()Lgy5;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1}, Lgy5;->p()Lgy5;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Lgy5;->o(Lgy5;Lgy5;)Lgy5;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    new-instance v0, Lxc2;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "INTERNAL ERROR: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, " is not contained in "

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method


# virtual methods
.method public final c()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgy5;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ldy5;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Ldy5;-><init>(Lgy5;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {v1}, Ldy5;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ldy5;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lm61;

    .line 26
    .line 27
    iget-object p0, p0, Lm61;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lgy5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lgy5;->f(Lgy5;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final d(Lm61;)Lgy5;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lgy5;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    new-array v2, v1, [Lm61;

    .line 8
    .line 9
    iget-object v3, p0, Lgy5;->a:[Lm61;

    .line 10
    .line 11
    iget p0, p0, Lgy5;->b:I

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static {v3, p0, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    aput-object p1, v2, v0

    .line 18
    .line 19
    new-instance p0, Lgy5;

    .line 20
    .line 21
    invoke-direct {p0, v2, v4, v1}, Lgy5;-><init>([Lm61;II)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public final e(Lgy5;)Lgy5;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lgy5;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lgy5;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    new-array v0, v1, [Lm61;

    .line 11
    .line 12
    invoke-virtual {p0}, Lgy5;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Lgy5;->a:[Lm61;

    .line 17
    .line 18
    iget v4, p0, Lgy5;->b:I

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p1, Lgy5;->a:[Lm61;

    .line 25
    .line 26
    iget v3, p1, Lgy5;->b:I

    .line 27
    .line 28
    invoke-virtual {p0}, Lgy5;->size()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {p1}, Lgy5;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {v2, v3, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Lgy5;

    .line 40
    .line 41
    invoke-direct {p0, v0, v5, v1}, Lgy5;-><init>([Lm61;II)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lgy5;

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
    const/4 v0, 0x1

    .line 8
    if-ne p0, p1, :cond_1

    .line 9
    .line 10
    return v0

    .line 11
    :cond_1
    check-cast p1, Lgy5;

    .line 12
    .line 13
    invoke-virtual {p0}, Lgy5;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Lgy5;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eq v2, v3, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    iget v2, p1, Lgy5;->b:I

    .line 25
    .line 26
    iget v3, p0, Lgy5;->b:I

    .line 27
    .line 28
    :goto_0
    iget v4, p0, Lgy5;->c:I

    .line 29
    .line 30
    if-ge v3, v4, :cond_4

    .line 31
    .line 32
    iget v4, p1, Lgy5;->c:I

    .line 33
    .line 34
    if-ge v2, v4, :cond_4

    .line 35
    .line 36
    iget-object v4, p0, Lgy5;->a:[Lm61;

    .line 37
    .line 38
    aget-object v4, v4, v3

    .line 39
    .line 40
    iget-object v5, p1, Lgy5;->a:[Lm61;

    .line 41
    .line 42
    aget-object v5, v5, v2

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_3

    .line 49
    .line 50
    return v1

    .line 51
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    return v0
.end method

.method public final f(Lgy5;)I
    .locals 5

    .line 1
    iget v0, p1, Lgy5;->b:I

    .line 2
    .line 3
    iget v1, p1, Lgy5;->c:I

    .line 4
    .line 5
    iget v2, p0, Lgy5;->b:I

    .line 6
    .line 7
    :goto_0
    iget v3, p0, Lgy5;->c:I

    .line 8
    .line 9
    if-ge v2, v3, :cond_1

    .line 10
    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lgy5;->a:[Lm61;

    .line 14
    .line 15
    aget-object v3, v3, v2

    .line 16
    .line 17
    iget-object v4, p1, Lgy5;->a:[Lm61;

    .line 18
    .line 19
    aget-object v4, v4, v0

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Lm61;->a(Lm61;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    return v3

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    if-ne v2, v3, :cond_2

    .line 34
    .line 35
    if-ne v0, v1, :cond_2

    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_2
    if-ne v2, v3, :cond_3

    .line 40
    .line 41
    const/4 p0, -0x1

    .line 42
    return p0

    .line 43
    :cond_3
    const/4 p0, 0x1

    .line 44
    return p0
.end method

.method public final g(Lgy5;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lgy5;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lgy5;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iget v0, p1, Lgy5;->b:I

    .line 14
    .line 15
    iget v1, p0, Lgy5;->b:I

    .line 16
    .line 17
    :goto_0
    iget v3, p0, Lgy5;->c:I

    .line 18
    .line 19
    if-ge v1, v3, :cond_2

    .line 20
    .line 21
    iget-object v3, p0, Lgy5;->a:[Lm61;

    .line 22
    .line 23
    aget-object v3, v3, v1

    .line 24
    .line 25
    iget-object v4, p1, Lgy5;->a:[Lm61;

    .line 26
    .line 27
    aget-object v4, v4, v0

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lgy5;->b:I

    .line 3
    .line 4
    :goto_0
    iget v2, p0, Lgy5;->c:I

    .line 5
    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x25

    .line 9
    .line 10
    iget-object v2, p0, Lgy5;->a:[Lm61;

    .line 11
    .line 12
    aget-object v2, v2, v1

    .line 13
    .line 14
    iget-object v2, v2, Lm61;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v0, v2

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return v0
.end method

.method public final i()Lm61;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgy5;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lgy5;->c:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    iget-object p0, p0, Lgy5;->a:[Lm61;

    .line 12
    .line 13
    aget-object p0, p0, v0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lgy5;->b:I

    .line 2
    .line 3
    iget p0, p0, Lgy5;->c:I

    .line 4
    .line 5
    if-lt v0, p0, :cond_0

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

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Ldy5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldy5;-><init>(Lgy5;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final k()Lm61;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgy5;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object v0, p0, Lgy5;->a:[Lm61;

    .line 10
    .line 11
    iget p0, p0, Lgy5;->b:I

    .line 12
    .line 13
    aget-object p0, v0, p0

    .line 14
    .line 15
    return-object p0
.end method

.method public final l()Lgy5;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lgy5;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lgy5;

    .line 10
    .line 11
    iget v1, p0, Lgy5;->c:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    iget-object v2, p0, Lgy5;->a:[Lm61;

    .line 16
    .line 17
    iget p0, p0, Lgy5;->b:I

    .line 18
    .line 19
    invoke-direct {v0, v2, p0, v1}, Lgy5;-><init>([Lm61;II)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final p()Lgy5;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lgy5;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lgy5;->b:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lgy5;

    .line 12
    .line 13
    iget-object v2, p0, Lgy5;->a:[Lm61;

    .line 14
    .line 15
    iget p0, p0, Lgy5;->c:I

    .line 16
    .line 17
    invoke-direct {v0, v2, v1, p0}, Lgy5;-><init>([Lm61;II)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lgy5;->c:I

    .line 2
    .line 3
    iget p0, p0, Lgy5;->b:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lgy5;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "/"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lgy5;->b:I

    .line 16
    .line 17
    :goto_0
    iget v3, p0, Lgy5;->c:I

    .line 18
    .line 19
    if-ge v2, v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lgy5;->a:[Lm61;

    .line 25
    .line 26
    aget-object v3, v3, v2

    .line 27
    .line 28
    iget-object v3, v3, Lm61;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
