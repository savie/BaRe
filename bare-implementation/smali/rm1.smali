.class public abstract Lrm1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final synthetic d:Lvm1;


# direct methods
.method public constructor <init>(Lvm1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrm1;->d:Lvm1;

    .line 5
    .line 6
    iget v0, p1, Lvm1;->e:I

    .line 7
    .line 8
    iput v0, p0, Lrm1;->a:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lvm1;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, -0x1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    move p1, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput p1, p0, Lrm1;->b:I

    .line 21
    .line 22
    iput v0, p0, Lrm1;->c:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 0

    .line 1
    iget p0, p0, Lrm1;->b:I

    .line 2
    .line 3
    if-ltz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lrm1;->d:Lvm1;

    .line 2
    .line 3
    iget v1, v0, Lvm1;->e:I

    .line 4
    .line 5
    iget v2, p0, Lrm1;->a:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v1, v2, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lrm1;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget v1, p0, Lrm1;->b:I

    .line 17
    .line 18
    iput v1, p0, Lrm1;->c:I

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lrm1;->a(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v2, p0, Lrm1;->b:I

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    iget v0, v0, Lvm1;->f:I

    .line 29
    .line 30
    if-ge v2, v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, -0x1

    .line 34
    :goto_0
    iput v2, p0, Lrm1;->b:I

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_1
    invoke-static {}, Lm0;->d()V

    .line 38
    .line 39
    .line 40
    return-object v3

    .line 41
    :cond_2
    invoke-static {}, Lq;->a()V

    .line 42
    .line 43
    .line 44
    return-object v3
.end method

.method public final remove()V
    .locals 4

    .line 1
    iget-object v0, p0, Lrm1;->d:Lvm1;

    .line 2
    .line 3
    iget v1, v0, Lvm1;->e:I

    .line 4
    .line 5
    iget v2, p0, Lrm1;->a:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lrm1;->c:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ltz v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    const-string v3, "no calls to next() since the last call to remove()"

    .line 18
    .line 19
    invoke-static {v3, v1}, Lsz8;->j(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lrm1;->a:I

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x20

    .line 25
    .line 26
    iput v1, p0, Lrm1;->a:I

    .line 27
    .line 28
    iget v1, p0, Lrm1;->c:I

    .line 29
    .line 30
    invoke-virtual {v0}, Lvm1;->j()[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    aget-object v1, v3, v1

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lvm1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lrm1;->b:I

    .line 40
    .line 41
    sub-int/2addr v0, v2

    .line 42
    iput v0, p0, Lrm1;->b:I

    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lrm1;->c:I

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-static {}, Lq;->a()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
