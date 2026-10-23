.class public final Lq50;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public final synthetic b:Z

.field public final synthetic c:Lr50;


# direct methods
.method public constructor <init>(Lr50;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq50;->c:Lr50;

    .line 5
    .line 6
    iput-boolean p3, p0, Lq50;->b:Z

    .line 7
    .line 8
    iput p2, p0, Lq50;->a:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lq50;->a:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lq50;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lq50;->c:Lr50;

    .line 11
    .line 12
    iget-object p0, p0, Lr50;->a:[Ljava/lang/Object;

    .line 13
    .line 14
    array-length p0, p0

    .line 15
    if-ge v0, p0, :cond_1

    .line 16
    .line 17
    :goto_0
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lq50;->c:Lr50;

    .line 2
    .line 3
    iget-object v1, v0, Lr50;->a:[Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Lq50;->a:I

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    iget-object v0, v0, Lr50;->b:[Ljava/lang/Object;

    .line 10
    .line 11
    aget-object v0, v0, v2

    .line 12
    .line 13
    iget-boolean v3, p0, Lq50;->b:Z

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    :goto_0
    iput v2, p0, Lq50;->a:I

    .line 23
    .line 24
    new-instance p0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 25
    .line 26
    invoke-direct {p0, v1, v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Can\'t remove elements from ImmutableSortedMap"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
