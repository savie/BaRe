.class public final Lbu6;
.super Lrt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:[B


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
    iget-object v0, p1, Low0;->b:Lvw2;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lvw2;->d(Low0;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Low0;->s()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v0, p1, Low0;->c:I

    .line 16
    .line 17
    new-array v0, v1, [B

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Low0;->o([BI)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lbu6;->e:[B

    .line 23
    .line 24
    return-void
.end method
