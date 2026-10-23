.class public final Llf6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[Lkf6;

.field public final b:I


# direct methods
.method public constructor <init>(Lwp4;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lwp4;->a:Lb76;

    .line 5
    .line 6
    iget-object v0, v0, Lb76;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x40

    .line 13
    .line 14
    if-gt v0, v1, :cond_0

    .line 15
    .line 16
    add-int/2addr v0, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    shr-int/lit8 v1, v0, 0x2

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    :goto_0
    const/16 v1, 0x8

    .line 22
    .line 23
    :goto_1
    if-ge v1, v0, :cond_1

    .line 24
    .line 25
    add-int/2addr v1, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    add-int/lit8 v0, v1, -0x1

    .line 28
    .line 29
    iput v0, p0, Llf6;->b:I

    .line 30
    .line 31
    new-array v0, v1, [Lkf6;

    .line 32
    .line 33
    iget-object p1, p1, Lwp4;->a:Lb76;

    .line 34
    .line 35
    invoke-virtual {p1}, Lb76;->entrySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lr66;

    .line 40
    .line 41
    invoke-virtual {p1}, Lr66;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v2, Loc8;

    .line 66
    .line 67
    check-cast v1, Lem4;

    .line 68
    .line 69
    iget v3, v2, Loc8;->a:I

    .line 70
    .line 71
    iget v4, p0, Llf6;->b:I

    .line 72
    .line 73
    and-int/2addr v3, v4

    .line 74
    new-instance v4, Lkf6;

    .line 75
    .line 76
    aget-object v5, v0, v3

    .line 77
    .line 78
    invoke-direct {v4, v5, v2, v1}, Lkf6;-><init>(Lkf6;Loc8;Lem4;)V

    .line 79
    .line 80
    .line 81
    aput-object v4, v0, v3

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    iput-object v0, p0, Llf6;->a:[Lkf6;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final a(Lgc8;)Lem4;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lgc8;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iget v1, p0, Llf6;->b:I

    .line 8
    .line 9
    and-int/2addr v0, v1

    .line 10
    iget-object p0, p0, Llf6;->a:[Lkf6;

    .line 11
    .line 12
    aget-object p0, p0, v0

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-boolean v0, p0, Lkf6;->e:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lkf6;->d:Lgc8;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lgc8;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lkf6;->a:Lem4;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    iget-object p0, p0, Lkf6;->b:Lkf6;

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    iget-boolean v0, p0, Lkf6;->e:Z

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lkf6;->d:Lgc8;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lgc8;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object p0, p0, Lkf6;->a:Lem4;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 52
    return-object p0
.end method

.method public final b(Ljava/lang/Class;)Lem4;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Llf6;->b:I

    .line 10
    .line 11
    and-int/2addr v0, v1

    .line 12
    iget-object p0, p0, Llf6;->a:[Lkf6;

    .line 13
    .line 14
    aget-object p0, p0, v0

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lkf6;->c:Ljava/lang/Class;

    .line 20
    .line 21
    if-ne v0, p1, :cond_1

    .line 22
    .line 23
    iget-boolean v0, p0, Lkf6;->e:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lkf6;->a:Lem4;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    iget-object p0, p0, Lkf6;->b:Lkf6;

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lkf6;->c:Ljava/lang/Class;

    .line 35
    .line 36
    if-ne v0, p1, :cond_1

    .line 37
    .line 38
    iget-boolean v0, p0, Lkf6;->e:Z

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lkf6;->a:Lem4;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method
