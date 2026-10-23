.class public final Lod9;
.super Lgc9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final r:Lod9;


# instance fields
.field public final transient q:Lib9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lod9;

    .line 2
    .line 3
    sget-object v1, Lib9;->f:Lra9;

    .line 4
    .line 5
    sget-object v1, Lid9;->p:Lid9;

    .line 6
    .line 7
    sget-object v2, Lad9;->a:Lad9;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lod9;-><init>(Lib9;Ljava/util/Comparator;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lod9;->r:Lod9;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lib9;Ljava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lgc9;-><init>(Ljava/util/Comparator;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lod9;->q:Lib9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final B()Lib9;
    .locals 0

    .line 1
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 2
    .line 3
    return-object p0
.end method

.method public final I(Ljava/lang/Object;Z)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lod9;->q:Lib9;

    .line 5
    .line 6
    iget-object p0, p0, Lgc9;->n:Ljava/util/Comparator;

    .line 7
    .line 8
    invoke-static {v0, p1, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-ltz p0, :cond_1

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    add-int/lit8 p0, p0, 0x1

    .line 17
    .line 18
    :cond_0
    return p0

    .line 19
    :cond_1
    not-int p0, p0

    .line 20
    return p0
.end method

.method public final K(Ljava/lang/Object;Z)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lod9;->q:Lib9;

    .line 5
    .line 6
    iget-object p0, p0, Lgc9;->n:Ljava/util/Comparator;

    .line 7
    .line 8
    invoke-static {v0, p1, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-ltz p0, :cond_1

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    return p0

    .line 17
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    return p0

    .line 20
    :cond_1
    not-int p0, p0

    .line 21
    return p0
.end method

.method public final L(II)Lod9;
    .locals 2

    .line 1
    iget-object v0, p0, Lod9;->q:Lib9;

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eq p2, p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-object p0

    .line 14
    :cond_1
    :goto_0
    iget-object p0, p0, Lgc9;->n:Ljava/util/Comparator;

    .line 15
    .line 16
    if-ge p1, p2, :cond_2

    .line 17
    .line 18
    new-instance v1, Lod9;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Lib9;->y(II)Lib9;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v1, p1, p0}, Lod9;-><init>(Lib9;Ljava/util/Comparator;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_2
    invoke-static {p0}, Lgc9;->H(Ljava/util/Comparator;)Lod9;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lod9;->K(Ljava/lang/Object;Z)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Lod9;->q:Lib9;

    .line 5
    .line 6
    iget-object p0, p0, Lgc9;->n:Ljava/util/Comparator;

    .line 7
    .line 8
    invoke-static {v1, p1, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-ltz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :catch_0
    :cond_0
    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lgc9;->n:Ljava/util/Comparator;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lji8;->R(Ljava/util/Comparator;Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-gt v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Lib9;->E(I)Lra9;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0}, Lra9;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {p0}, Lra9;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :goto_0
    :try_start_0
    invoke-interface {v0, v4, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-gez v5, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lra9;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {p0}, Lra9;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    if-nez v5, :cond_5

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_4

    .line 68
    .line 69
    return v2

    .line 70
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    :cond_5
    :goto_1
    return v1

    .line 76
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0
.end method

.method public final descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 2
    .line 3
    invoke-virtual {p0}, Lib9;->x()Lib9;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lib9;->E(I)Lra9;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_1
    check-cast p1, Ljava/util/Set;

    .line 11
    .line 12
    iget-object v0, p0, Lod9;->q:Lib9;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eq v2, v3, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    iget-object v2, p0, Lgc9;->n:Ljava/util/Comparator;

    .line 33
    .line 34
    invoke-static {v2, p1}, Lji8;->R(Ljava/util/Comparator;Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_7

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :try_start_0
    invoke-virtual {v0, v1}, Lib9;->E(I)Lra9;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_4
    invoke-virtual {p1}, Lra9;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {p1}, Lra9;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_6

    .line 63
    .line 64
    invoke-interface {v2, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    :goto_0
    const/4 p0, 0x1

    .line 72
    return p0

    .line 73
    :catch_0
    :cond_6
    :goto_1
    return v1

    .line 74
    :cond_7
    invoke-virtual {p0, p1}, Lod9;->containsAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    return p0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-static {}, Lm0;->d()V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lod9;->I(Ljava/lang/Object;Z)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const/4 v0, -0x1

    .line 7
    add-int/2addr p1, v0

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lod9;->K(Ljava/lang/Object;Z)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final i([Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lib9;->i([Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lib9;->E(I)Lra9;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final k()I
    .locals 0

    .line 1
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 2
    .line 3
    invoke-virtual {p0}, Lga4;->k()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {}, Lm0;->d()V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lod9;->I(Ljava/lang/Object;Z)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const/4 v0, -0x1

    .line 7
    add-int/2addr p1, v0

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final o()I
    .locals 0

    .line 1
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 2
    .line 3
    invoke-virtual {p0}, Lga4;->o()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final s()Lne8;
    .locals 1

    .line 1
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lib9;->E(I)Lra9;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final t()[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lod9;->q:Lib9;

    .line 2
    .line 3
    invoke-virtual {p0}, Lga4;->t()[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
