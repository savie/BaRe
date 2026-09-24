.class public final Ly55;
.super La65;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;
.implements Lbo4;


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, La65;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, La65;->a:I

    .line 5
    .line 6
    iget-object v1, p0, La65;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ld65;

    .line 9
    .line 10
    iget v2, v1, Ld65;->f:I

    .line 11
    .line 12
    if-ge v0, v2, :cond_0

    .line 13
    .line 14
    add-int/lit8 v2, v0, 0x1

    .line 15
    .line 16
    iput v2, p0, La65;->a:I

    .line 17
    .line 18
    iput v0, p0, La65;->b:I

    .line 19
    .line 20
    new-instance v2, Lz55;

    .line 21
    .line 22
    invoke-direct {v2, v1, v0}, Lz55;-><init>(Ld65;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, La65;->f()V

    .line 26
    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_0
    invoke-static {}, Lm0;->d()V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method
