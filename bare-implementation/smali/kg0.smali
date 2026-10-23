.class public final Lkg0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lx23;


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance p0, Lxy0;

    .line 2
    .line 3
    new-instance v0, Lj;

    .line 4
    .line 5
    invoke-direct {v0}, Lj;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lly0;->c(Lxs0;)Lly0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lxy0;->f:Lly0;

    .line 16
    .line 17
    const/16 v0, 0x10

    .line 18
    .line 19
    iput v0, p0, Lxy0;->g:I

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    new-array v1, v1, [B

    .line 23
    .line 24
    const/16 v2, 0x87

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {v1, v2, v3}, Lxx3;->n([BII)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lxy0;->a:[B

    .line 31
    .line 32
    new-array v1, v0, [B

    .line 33
    .line 34
    iput-object v1, p0, Lxy0;->c:[B

    .line 35
    .line 36
    new-array v1, v0, [B

    .line 37
    .line 38
    iput-object v1, p0, Lxy0;->d:[B

    .line 39
    .line 40
    new-array v0, v0, [B

    .line 41
    .line 42
    iput-object v0, p0, Lxy0;->b:[B

    .line 43
    .line 44
    iput v3, p0, Lxy0;->e:I

    .line 45
    .line 46
    return-object p0
.end method
