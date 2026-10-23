.class public final Lun2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final p:Ljava/util/LinkedHashSet;

.field public static final q:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:I

.field public c:I

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public final i:Ljava/util/List;

.field public final j:Lfo8;

.field public final k:Ljava/util/List;

.field public final l:Lqn2;

.field public final m:Ljava/util/LinkedHashMap;

.field public final n:Ljava/util/ArrayList;

.field public final o:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    const-class v6, Llw4;

    .line 4
    .line 5
    const-class v7, Lib4;

    .line 6
    .line 7
    const-class v1, Lat0;

    .line 8
    .line 9
    const-class v2, Lk34;

    .line 10
    .line 11
    const-class v3, Lz53;

    .line 12
    .line 13
    const-class v4, Lh64;

    .line 14
    .line 15
    const-class v5, La28;

    .line 16
    .line 17
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lun2;->p:Ljava/util/LinkedHashSet;

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lbt0;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    const-class v2, Lat0;

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    new-instance v1, Lm34;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    const-class v2, Lk34;

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    new-instance v1, La63;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-direct {v1, v2}, La63;-><init>(I)V

    .line 59
    .line 60
    .line 61
    const-class v2, Lz53;

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    new-instance v1, Li64;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    const-class v2, Lh64;

    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    new-instance v1, Lb28;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    const-class v2, La28;

    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    new-instance v1, La63;

    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    invoke-direct {v1, v2}, La63;-><init>(I)V

    .line 90
    .line 91
    .line 92
    const-class v2, Llw4;

    .line 93
    .line 94
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    new-instance v1, Ljb4;

    .line 98
    .line 99
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 100
    .line 101
    .line 102
    const-class v2, Lib4;

    .line 103
    .line 104
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Lun2;->q:Ljava/util/Map;

    .line 112
    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lfo8;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lun2;->b:I

    .line 6
    .line 7
    iput v0, p0, Lun2;->c:I

    .line 8
    .line 9
    iput v0, p0, Lun2;->e:I

    .line 10
    .line 11
    iput v0, p0, Lun2;->f:I

    .line 12
    .line 13
    iput v0, p0, Lun2;->g:I

    .line 14
    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lun2;->m:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lun2;->n:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lun2;->o:Ljava/util/LinkedHashSet;

    .line 35
    .line 36
    iput-object p1, p0, Lun2;->i:Ljava/util/List;

    .line 37
    .line 38
    iput-object p2, p0, Lun2;->j:Lfo8;

    .line 39
    .line 40
    iput-object p3, p0, Lun2;->k:Ljava/util/List;

    .line 41
    .line 42
    new-instance p1, Lqn2;

    .line 43
    .line 44
    invoke-direct {p1}, Lqn2;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lun2;->l:Lqn2;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final a(Lg3;)V
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lun2;->h()Lg3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lg3;->e()Lws0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lg3;->b(Lws0;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lun2;->h()Lg3;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lun2;->e(Lg3;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lun2;->h()Lg3;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lg3;->e()Lws0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lg3;->e()Lws0;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lon5;->b(Lon5;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lun2;->n:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lun2;->o:Ljava/util/LinkedHashSet;

    .line 44
    .line 45
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final b(Lsw5;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lsw5;->b:Lov4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lov4;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lov4;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lnv4;

    .line 23
    .line 24
    iget-object v2, p1, Lsw5;->a:Lrw5;

    .line 25
    .line 26
    invoke-virtual {v1}, Lon5;->f()V

    .line 27
    .line 28
    .line 29
    iget-object v3, v2, Lon5;->d:Lon5;

    .line 30
    .line 31
    iput-object v3, v1, Lon5;->d:Lon5;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iput-object v1, v3, Lon5;->e:Lon5;

    .line 36
    .line 37
    :cond_1
    iput-object v2, v1, Lon5;->e:Lon5;

    .line 38
    .line 39
    iput-object v1, v2, Lon5;->d:Lon5;

    .line 40
    .line 41
    iget-object v2, v2, Lon5;->a:Lon5;

    .line 42
    .line 43
    iput-object v2, v1, Lon5;->a:Lon5;

    .line 44
    .line 45
    iget-object v3, v1, Lon5;->d:Lon5;

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    iput-object v1, v2, Lon5;->b:Lon5;

    .line 50
    .line 51
    :cond_2
    iget-object v2, v1, Lnv4;->f:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v3, p0, Lun2;->m:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_0

    .line 60
    .line 61
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lun2;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lun2;->b:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iget-object v1, p0, Lun2;->a:Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-interface {v1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Lun2;->c:I

    .line 20
    .line 21
    rem-int/lit8 v1, v1, 0x4

    .line 22
    .line 23
    rsub-int/lit8 v1, v1, 0x4

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v3, v1

    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    if-ge v3, v1, :cond_0

    .line 37
    .line 38
    const/16 v4, 0x20

    .line 39
    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-object v0, p0, Lun2;->a:Ljava/lang/CharSequence;

    .line 55
    .line 56
    iget v1, p0, Lun2;->b:I

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_1
    invoke-virtual {p0}, Lun2;->h()Lg3;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, v0}, Lg3;->a(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lun2;->a:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget v1, p0, Lun2;->b:I

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lun2;->b:I

    .line 10
    .line 11
    const/16 v2, 0x9

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    iput v1, p0, Lun2;->b:I

    .line 18
    .line 19
    iget v0, p0, Lun2;->c:I

    .line 20
    .line 21
    rem-int/lit8 v1, v0, 0x4

    .line 22
    .line 23
    rsub-int/lit8 v1, v1, 0x4

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    iput v1, p0, Lun2;->c:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    iput v1, p0, Lun2;->b:I

    .line 32
    .line 33
    iget v0, p0, Lun2;->c:I

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    iput v0, p0, Lun2;->c:I

    .line 38
    .line 39
    return-void
.end method

.method public final e(Lg3;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lun2;->h()Lg3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lun2;->n:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    instance-of v0, p1, Lsw5;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    move-object v0, p1

    .line 23
    check-cast v0, Lsw5;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lun2;->b(Lsw5;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Lg3;->d()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lg3;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lun2;->e(Lg3;)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget v0, p0, Lun2;->b:I

    .line 2
    .line 3
    iget v1, p0, Lun2;->c:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lun2;->h:Z

    .line 7
    .line 8
    iget-object v2, p0, Lun2;->a:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    :goto_0
    if-ge v0, v2, :cond_2

    .line 15
    .line 16
    iget-object v3, p0, Lun2;->a:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/16 v4, 0x9

    .line 23
    .line 24
    if-eq v3, v4, :cond_1

    .line 25
    .line 26
    const/16 v4, 0x20

    .line 27
    .line 28
    if-eq v3, v4, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    iput-boolean v2, p0, Lun2;->h:Z

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    rem-int/lit8 v3, v1, 0x4

    .line 42
    .line 43
    rsub-int/lit8 v3, v3, 0x4

    .line 44
    .line 45
    add-int/2addr v1, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    iput v0, p0, Lun2;->e:I

    .line 48
    .line 49
    iput v1, p0, Lun2;->f:I

    .line 50
    .line 51
    iget v0, p0, Lun2;->c:I

    .line 52
    .line 53
    sub-int/2addr v1, v0

    .line 54
    iput v1, p0, Lun2;->g:I

    .line 55
    .line 56
    return-void
.end method

.method public final h()Lg3;
    .locals 1

    .line 1
    iget-object p0, p0, Lun2;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lg3;

    .line 9
    .line 10
    return-object p0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v4, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    if-eqz v4, :cond_2

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    if-nez v4, :cond_1

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, p1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_1
    const v5, 0xfffd

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    if-eqz v4, :cond_4

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_4
    iput-object p1, p0, Lun2;->a:Ljava/lang/CharSequence;

    .line 49
    .line 50
    iput v2, p0, Lun2;->b:I

    .line 51
    .line 52
    iput v2, p0, Lun2;->c:I

    .line 53
    .line 54
    iput-boolean v2, p0, Lun2;->d:Z

    .line 55
    .line 56
    iget-object p1, p0, Lun2;->n:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v3, 0x1

    .line 63
    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    move v4, v3

    .line 72
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    const/4 v6, -0x1

    .line 77
    if-eqz v5, :cond_8

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Lg3;

    .line 84
    .line 85
    invoke-virtual {p0}, Lun2;->g()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, p0}, Lg3;->h(Lun2;)Lys0;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    if-eqz v7, :cond_8

    .line 93
    .line 94
    iget-boolean v8, v7, Lys0;->c:Z

    .line 95
    .line 96
    if-eqz v8, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0, v5}, Lun2;->e(Lg3;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_5
    iget v5, v7, Lys0;->a:I

    .line 103
    .line 104
    if-eq v5, v6, :cond_6

    .line 105
    .line 106
    invoke-virtual {p0, v5}, Lun2;->k(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    iget v5, v7, Lys0;->b:I

    .line 111
    .line 112
    if-eq v5, v6, :cond_7

    .line 113
    .line 114
    invoke-virtual {p0, v5}, Lun2;->j(I)V

    .line 115
    .line 116
    .line 117
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-virtual {p1, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    .line 132
    .line 133
    sub-int/2addr v4, v3

    .line 134
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Lg3;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    invoke-virtual {v4}, Lg3;->e()Lws0;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    instance-of v7, v7, Lrw5;

    .line 149
    .line 150
    if-nez v7, :cond_a

    .line 151
    .line 152
    invoke-virtual {v4}, Lg3;->f()Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_9

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_9
    move v7, v2

    .line 160
    goto :goto_5

    .line 161
    :cond_a
    :goto_4
    move v7, v3

    .line 162
    :cond_b
    :goto_5
    if-eqz v7, :cond_16

    .line 163
    .line 164
    invoke-virtual {p0}, Lun2;->g()V

    .line 165
    .line 166
    .line 167
    iget-boolean v8, p0, Lun2;->h:Z

    .line 168
    .line 169
    if-nez v8, :cond_15

    .line 170
    .line 171
    iget v8, p0, Lun2;->g:I

    .line 172
    .line 173
    const/4 v9, 0x4

    .line 174
    if-ge v8, v9, :cond_c

    .line 175
    .line 176
    iget-object v8, p0, Lun2;->a:Ljava/lang/CharSequence;

    .line 177
    .line 178
    iget v10, p0, Lun2;->e:I

    .line 179
    .line 180
    invoke-static {v8, v10}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    invoke-static {v8}, Ljava/lang/Character;->isLetter(I)Z

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-eqz v8, :cond_c

    .line 189
    .line 190
    goto/16 :goto_9

    .line 191
    .line 192
    :cond_c
    new-instance v8, Lke;

    .line 193
    .line 194
    invoke-direct {v8, v4, v9}, Lke;-><init>(Ljava/lang/Object;I)V

    .line 195
    .line 196
    .line 197
    iget-object v9, p0, Lun2;->i:Ljava/util/List;

    .line 198
    .line 199
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    if-eqz v10, :cond_e

    .line 208
    .line 209
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    check-cast v10, Lh3;

    .line 214
    .line 215
    invoke-virtual {v10, p0, v8}, Lh3;->a(Lun2;Lke;)Lgt0;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    if-eqz v10, :cond_d

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_e
    move-object v10, v1

    .line 223
    :goto_6
    if-nez v10, :cond_f

    .line 224
    .line 225
    iget p1, p0, Lun2;->e:I

    .line 226
    .line 227
    invoke-virtual {p0, p1}, Lun2;->k(I)V

    .line 228
    .line 229
    .line 230
    goto :goto_a

    .line 231
    :cond_f
    if-nez v5, :cond_10

    .line 232
    .line 233
    invoke-virtual {p0, v0}, Lun2;->f(Ljava/util/List;)V

    .line 234
    .line 235
    .line 236
    move v5, v3

    .line 237
    :cond_10
    iget v8, v10, Lgt0;->b:I

    .line 238
    .line 239
    if-eq v8, v6, :cond_11

    .line 240
    .line 241
    invoke-virtual {p0, v8}, Lun2;->k(I)V

    .line 242
    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_11
    iget v8, v10, Lgt0;->c:I

    .line 246
    .line 247
    if-eq v8, v6, :cond_12

    .line 248
    .line 249
    invoke-virtual {p0, v8}, Lun2;->j(I)V

    .line 250
    .line 251
    .line 252
    :cond_12
    :goto_7
    iget-boolean v8, v10, Lgt0;->d:Z

    .line 253
    .line 254
    if-eqz v8, :cond_14

    .line 255
    .line 256
    invoke-virtual {p0}, Lun2;->h()Lg3;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    sub-int/2addr v9, v3

    .line 265
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    iget-object v9, p0, Lun2;->o:Ljava/util/LinkedHashSet;

    .line 269
    .line 270
    invoke-interface {v9, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    instance-of v9, v8, Lsw5;

    .line 274
    .line 275
    if-eqz v9, :cond_13

    .line 276
    .line 277
    move-object v9, v8

    .line 278
    check-cast v9, Lsw5;

    .line 279
    .line 280
    invoke-virtual {p0, v9}, Lun2;->b(Lsw5;)V

    .line 281
    .line 282
    .line 283
    :cond_13
    invoke-virtual {v8}, Lg3;->e()Lws0;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-virtual {v8}, Lon5;->f()V

    .line 288
    .line 289
    .line 290
    :cond_14
    iget-object v8, v10, Lgt0;->a:[Lg3;

    .line 291
    .line 292
    array-length v9, v8

    .line 293
    move v10, v2

    .line 294
    :goto_8
    if-ge v10, v9, :cond_b

    .line 295
    .line 296
    aget-object v4, v8, v10

    .line 297
    .line 298
    invoke-virtual {p0, v4}, Lun2;->a(Lg3;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4}, Lg3;->f()Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    add-int/lit8 v10, v10, 0x1

    .line 306
    .line 307
    goto :goto_8

    .line 308
    :cond_15
    :goto_9
    iget p1, p0, Lun2;->e:I

    .line 309
    .line 310
    invoke-virtual {p0, p1}, Lun2;->k(I)V

    .line 311
    .line 312
    .line 313
    :cond_16
    :goto_a
    if-nez v5, :cond_17

    .line 314
    .line 315
    iget-boolean p1, p0, Lun2;->h:Z

    .line 316
    .line 317
    if-nez p1, :cond_17

    .line 318
    .line 319
    invoke-virtual {p0}, Lun2;->h()Lg3;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-virtual {p1}, Lg3;->c()Z

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    if-eqz p1, :cond_17

    .line 328
    .line 329
    invoke-virtual {p0}, Lun2;->c()V

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :cond_17
    if-nez v5, :cond_18

    .line 334
    .line 335
    invoke-virtual {p0, v0}, Lun2;->f(Ljava/util/List;)V

    .line 336
    .line 337
    .line 338
    :cond_18
    invoke-virtual {v4}, Lg3;->f()Z

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    if-nez p1, :cond_19

    .line 343
    .line 344
    invoke-virtual {p0}, Lun2;->c()V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    :cond_19
    iget-boolean p1, p0, Lun2;->h:Z

    .line 349
    .line 350
    if-nez p1, :cond_1a

    .line 351
    .line 352
    new-instance p1, Lsw5;

    .line 353
    .line 354
    invoke-direct {p1}, Lsw5;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0, p1}, Lun2;->a(Lg3;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0}, Lun2;->c()V

    .line 361
    .line 362
    .line 363
    :cond_1a
    return-void
.end method

.method public final j(I)V
    .locals 3

    .line 1
    iget v0, p0, Lun2;->f:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lun2;->e:I

    .line 6
    .line 7
    iput v1, p0, Lun2;->b:I

    .line 8
    .line 9
    iput v0, p0, Lun2;->c:I

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lun2;->a:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    iget v1, p0, Lun2;->c:I

    .line 18
    .line 19
    if-ge v1, p1, :cond_1

    .line 20
    .line 21
    iget v2, p0, Lun2;->b:I

    .line 22
    .line 23
    if-eq v2, v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lun2;->d()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-le v1, p1, :cond_2

    .line 30
    .line 31
    iget v0, p0, Lun2;->b:I

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    sub-int/2addr v0, v1

    .line 35
    iput v0, p0, Lun2;->b:I

    .line 36
    .line 37
    iput p1, p0, Lun2;->c:I

    .line 38
    .line 39
    iput-boolean v1, p0, Lun2;->d:Z

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lun2;->d:Z

    .line 44
    .line 45
    return-void
.end method

.method public final k(I)V
    .locals 2

    .line 1
    iget v0, p0, Lun2;->e:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iput v0, p0, Lun2;->b:I

    .line 6
    .line 7
    iget v0, p0, Lun2;->f:I

    .line 8
    .line 9
    iput v0, p0, Lun2;->c:I

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lun2;->a:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    iget v1, p0, Lun2;->b:I

    .line 18
    .line 19
    if-ge v1, p1, :cond_1

    .line 20
    .line 21
    if-eq v1, v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lun2;->d()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lun2;->d:Z

    .line 29
    .line 30
    return-void
.end method
