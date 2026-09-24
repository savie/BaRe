.class public final Ldu6;
.super Lrt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:I

.field public f:[B


# virtual methods
.method public final f(Lzu6;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, v0}, Low0;->t(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Low0;->n()B

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, v1}, Low0;->t(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Low0;->s()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, p0, Ldu6;->e:I

    .line 18
    .line 19
    invoke-virtual {p1}, Low0;->s()I

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p1, v1}, Low0;->t(I)V

    .line 24
    .line 25
    .line 26
    iput v0, p1, Low0;->c:I

    .line 27
    .line 28
    iget v0, p0, Ldu6;->e:I

    .line 29
    .line 30
    new-array v1, v0, [B

    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Low0;->o([BI)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Ldu6;->f:[B

    .line 36
    .line 37
    return-void
.end method
