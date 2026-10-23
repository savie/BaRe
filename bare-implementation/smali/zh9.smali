.class public final Lzh9;
.super Llf9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lai9;


# instance fields
.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzh9;

    .line 2
    .line 3
    invoke-direct {v0}, Lzh9;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Llf9;-><init>(Z)V

    .line 15
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lzh9;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-direct {p0, p1}, Llf9;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lzh9;->b:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, v0}, Llf9;-><init>(Z)V

    iput-object p1, p0, Lzh9;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Llf9;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lzh9;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 16
    .line 17
    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Llf9;->c()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Lai9;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p2, Lai9;

    .line 9
    .line 10
    invoke-interface {p2}, Lai9;->zzg()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :cond_0
    iget-object v0, p0, Lzh9;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    .line 21
    .line 22
    add-int/lit8 p2, p2, 0x1

    .line 23
    .line 24
    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    .line 25
    .line 26
    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 27
    iget-object v0, p0, Lzh9;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 28
    invoke-virtual {p0, v0, p1}, Lzh9;->addAll(ILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Llf9;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lzh9;->b:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 14
    .line 15
    return-void
.end method

.method public final d(I)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p0, p0, Lzh9;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    instance-of v1, v0, Lhg9;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    check-cast v0, Lhg9;

    .line 20
    .line 21
    sget-object v1, Lvh9;->a:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-virtual {v0}, Lhg9;->e()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    const-string v1, ""

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v3, Ljava/lang/String;

    .line 33
    .line 34
    iget-object v4, v0, Lhg9;->b:[B

    .line 35
    .line 36
    invoke-virtual {v0}, Lhg9;->e()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-direct {v3, v4, v2, v5, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 41
    .line 42
    .line 43
    move-object v1, v3

    .line 44
    :goto_0
    iget-object v3, v0, Lhg9;->b:[B

    .line 45
    .line 46
    invoke-virtual {v0}, Lhg9;->e()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sget-object v4, Lom9;->a:Lnh4;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v2, v0}, Lnh4;->t([BII)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_2
    return-object v1

    .line 65
    :cond_3
    check-cast v0, [B

    .line 66
    .line 67
    new-instance v1, Ljava/lang/String;

    .line 68
    .line 69
    sget-object v3, Lvh9;->a:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 72
    .line 73
    .line 74
    sget-object v3, Lom9;->a:Lnh4;

    .line 75
    .line 76
    array-length v4, v0

    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v2, v4}, Lnh4;->t([BII)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_4
    return-object v1
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzh9;->d(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Llf9;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lzh9;->b:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 15
    .line 16
    instance-of p0, p1, Ljava/lang/String;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    instance-of p0, p1, Lhg9;

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    check-cast p1, Lhg9;

    .line 28
    .line 29
    sget-object p0, Lvh9;->a:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    invoke-virtual {p1}, Lhg9;->e()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const-string p0, ""

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 41
    .line 42
    iget-object v1, p1, Lhg9;->b:[B

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p1}, Lhg9;->e()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-direct {v0, v1, v2, p1, p0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    check-cast p1, [B

    .line 54
    .line 55
    new-instance p0, Ljava/lang/String;

    .line 56
    .line 57
    sget-object v0, Lvh9;->a:Ljava/nio/charset/Charset;

    .line 58
    .line 59
    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 60
    .line 61
    .line 62
    return-object p0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Llf9;->c()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lzh9;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    instance-of p1, p0, Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    check-cast p0, Ljava/lang/String;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    instance-of p1, p0, Lhg9;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    check-cast p0, Lhg9;

    .line 24
    .line 25
    sget-object p1, Lvh9;->a:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    invoke-virtual {p0}, Lhg9;->e()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    const-string p0, ""

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    new-instance p2, Ljava/lang/String;

    .line 37
    .line 38
    iget-object v0, p0, Lhg9;->b:[B

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0}, Lhg9;->e()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-direct {p2, v0, v1, p0, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 46
    .line 47
    .line 48
    return-object p2

    .line 49
    :cond_2
    check-cast p0, [B

    .line 50
    .line 51
    new-instance p1, Ljava/lang/String;

    .line 52
    .line 53
    sget-object p2, Lvh9;->a:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 56
    .line 57
    .line 58
    return-object p1
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lzh9;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final zzd(I)Loh9;
    .locals 1

    .line 1
    iget-object p0, p0, Lzh9;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    new-instance p0, Lzh9;

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lzh9;-><init>(Ljava/util/ArrayList;)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    invoke-static {}, Lc6;->b()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public final zze()Lai9;
    .locals 1

    .line 1
    iget-boolean v0, p0, Llf9;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lql9;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lql9;-><init>(Lzh9;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    return-object p0
.end method

.method public final zzg()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lzh9;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
