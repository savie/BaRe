.class public final Le4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/Iterator;

.field public c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb76;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Le4;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Le4;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p1, p1, Lb76;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Le4;->b:Ljava/util/Iterator;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lf4;Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Le4;->a:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le4;->b:Ljava/util/Iterator;

    iput-object p1, p0, Le4;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Le4;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Le4;->b:Ljava/util/Iterator;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Le4;->b:Ljava/util/Iterator;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Le4;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Le4;->b:Ljava/util/Iterator;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lu66;

    .line 13
    .line 14
    iput-object v0, p0, Le4;->c:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v0, La76;

    .line 17
    .line 18
    iget-object v1, p0, Le4;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lb76;

    .line 21
    .line 22
    iget-object p0, p0, Le4;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lu66;

    .line 25
    .line 26
    invoke-direct {v0, v1, p0}, La76;-><init>(Lb76;Lu66;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    .line 36
    iput-object v0, p0, Le4;->c:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 5

    .line 1
    iget v0, p0, Le4;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Le4;->d:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Le4;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lu66;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v3, v4

    .line 18
    :cond_0
    sget v4, Lb76;->G:I

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    check-cast v2, Lb76;

    .line 23
    .line 24
    iget-object v0, v0, Lu66;->a:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Lb76;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Le4;->c:Ljava/lang/Object;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, Lg84;->c()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Le4;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    move v3, v4

    .line 43
    :cond_2
    const-string v0, "no calls to next() since the last call to remove()"

    .line 44
    .line 45
    invoke-static {v0, v3}, Lsz8;->j(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Le4;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/util/Collection;

    .line 57
    .line 58
    iget-object v3, p0, Le4;->b:Ljava/util/Iterator;

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 61
    .line 62
    .line 63
    check-cast v2, Lf4;

    .line 64
    .line 65
    iget-object v2, v2, Lf4;->b:Lq4;

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iget v4, v2, Lq4;->e:I

    .line 72
    .line 73
    sub-int/2addr v4, v3

    .line 74
    iput v4, v2, Lq4;->e:I

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Le4;->c:Ljava/lang/Object;

    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
