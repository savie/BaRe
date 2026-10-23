.class public abstract Law4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/util/Map$Entry;

.field public d:Ljava/util/Map$Entry;

.field public final synthetic e:Ljava/util/AbstractMap;


# direct methods
.method public constructor <init>(Lcw4;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Law4;->a:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law4;->e:Ljava/util/AbstractMap;

    .line 24
    iget-object v0, p1, Lcw4;->c:Lbw4;

    iget-object v0, v0, Lbw4;->d:Lbw4;

    iput-object v0, p0, Law4;->c:Ljava/util/Map$Entry;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Law4;->d:Ljava/util/Map$Entry;

    .line 26
    iget p1, p1, Lcw4;->e:I

    iput p1, p0, Law4;->b:I

    return-void
.end method

.method public constructor <init>(Liw4;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Law4;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Law4;->e:Ljava/util/AbstractMap;

    .line 8
    .line 9
    iget-object v0, p1, Liw4;->f:Lhw4;

    .line 10
    .line 11
    iget-object v0, v0, Lhw4;->d:Lhw4;

    .line 12
    .line 13
    iput-object v0, p0, Law4;->c:Ljava/util/Map$Entry;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Law4;->d:Ljava/util/Map$Entry;

    .line 17
    .line 18
    iget p1, p1, Liw4;->e:I

    .line 19
    .line 20
    iput p1, p0, Law4;->b:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a()Lbw4;
    .locals 4

    .line 1
    iget-object v0, p0, Law4;->c:Ljava/util/Map$Entry;

    .line 2
    .line 3
    check-cast v0, Lbw4;

    .line 4
    .line 5
    iget-object v1, p0, Law4;->e:Ljava/util/AbstractMap;

    .line 6
    .line 7
    check-cast v1, Lcw4;

    .line 8
    .line 9
    iget-object v2, v1, Lcw4;->c:Lbw4;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    iget v1, v1, Lcw4;->e:I

    .line 15
    .line 16
    iget v2, p0, Law4;->b:I

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    iget-object v1, v0, Lbw4;->d:Lbw4;

    .line 21
    .line 22
    iput-object v1, p0, Law4;->c:Ljava/util/Map$Entry;

    .line 23
    .line 24
    iput-object v0, p0, Law4;->d:Ljava/util/Map$Entry;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    invoke-static {}, Lq;->a()V

    .line 28
    .line 29
    .line 30
    return-object v3

    .line 31
    :cond_1
    invoke-static {}, Lm0;->d()V

    .line 32
    .line 33
    .line 34
    return-object v3
.end method

.method public b()Lhw4;
    .locals 4

    .line 1
    iget-object v0, p0, Law4;->c:Ljava/util/Map$Entry;

    .line 2
    .line 3
    check-cast v0, Lhw4;

    .line 4
    .line 5
    iget-object v1, p0, Law4;->e:Ljava/util/AbstractMap;

    .line 6
    .line 7
    check-cast v1, Liw4;

    .line 8
    .line 9
    iget-object v2, v1, Liw4;->f:Lhw4;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    iget v1, v1, Liw4;->e:I

    .line 15
    .line 16
    iget v2, p0, Law4;->b:I

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    iget-object v1, v0, Lhw4;->d:Lhw4;

    .line 21
    .line 22
    iput-object v1, p0, Law4;->c:Ljava/util/Map$Entry;

    .line 23
    .line 24
    iput-object v0, p0, Law4;->d:Ljava/util/Map$Entry;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    invoke-static {}, Lq;->a()V

    .line 28
    .line 29
    .line 30
    return-object v3

    .line 31
    :cond_1
    invoke-static {}, Lm0;->d()V

    .line 32
    .line 33
    .line 34
    return-object v3
.end method

.method public final hasNext()Z
    .locals 4

    .line 1
    iget v0, p0, Law4;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Law4;->e:Ljava/util/AbstractMap;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Law4;->c:Ljava/util/Map$Entry;

    .line 11
    .line 12
    check-cast p0, Lhw4;

    .line 13
    .line 14
    check-cast v3, Liw4;

    .line 15
    .line 16
    iget-object v0, v3, Liw4;->f:Lhw4;

    .line 17
    .line 18
    if-eq p0, v0, :cond_0

    .line 19
    .line 20
    move v1, v2

    .line 21
    :cond_0
    return v1

    .line 22
    :pswitch_0
    iget-object p0, p0, Law4;->c:Ljava/util/Map$Entry;

    .line 23
    .line 24
    check-cast p0, Lbw4;

    .line 25
    .line 26
    check-cast v3, Lcw4;

    .line 27
    .line 28
    iget-object v0, v3, Lcw4;->c:Lbw4;

    .line 29
    .line 30
    if-eq p0, v0, :cond_1

    .line 31
    .line 32
    move v1, v2

    .line 33
    :cond_1
    return v1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Law4;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Law4;->b()Lhw4;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Law4;->a()Lbw4;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 4

    .line 1
    iget v0, p0, Law4;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Law4;->e:Ljava/util/AbstractMap;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v3, Liw4;

    .line 11
    .line 12
    iget-object v0, p0, Law4;->d:Ljava/util/Map$Entry;

    .line 13
    .line 14
    check-cast v0, Lhw4;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3, v0, v2}, Liw4;->d(Lhw4;Z)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Law4;->d:Ljava/util/Map$Entry;

    .line 22
    .line 23
    iget v0, v3, Liw4;->e:I

    .line 24
    .line 25
    iput v0, p0, Law4;->b:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lg84;->c()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :pswitch_0
    check-cast v3, Lcw4;

    .line 33
    .line 34
    iget-object v0, p0, Law4;->d:Ljava/util/Map$Entry;

    .line 35
    .line 36
    check-cast v0, Lbw4;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v3, v0, v2}, Lcw4;->d(Lbw4;Z)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Law4;->d:Ljava/util/Map$Entry;

    .line 44
    .line 45
    iget v0, v3, Lcw4;->e:I

    .line 46
    .line 47
    iput v0, p0, Law4;->b:I

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-static {}, Lg84;->c()V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
