.class public final Lha8;
.super Laa8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lia8;


# virtual methods
.method public final a(Ly98;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lha8;->a:Lia8;

    .line 2
    .line 3
    iget-boolean p1, p0, Lia8;->Z:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ly98;->M()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lia8;->Z:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final c(Ly98;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha8;->a:Lia8;

    .line 2
    .line 3
    iget v1, v0, Lia8;->Y:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    iput v1, v0, Lia8;->Y:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lia8;->Z:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Ly98;->n()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1, p0}, Ly98;->C(Lv98;)Ly98;

    .line 18
    .line 19
    .line 20
    return-void
.end method
