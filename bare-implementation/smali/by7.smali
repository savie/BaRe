.class public final Lby7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lyi6;

.field public b:Z

.field public c:[Ly53;

.field public d:I


# virtual methods
.method public final a()Lr19;
    .locals 4

    .line 1
    iget-object v0, p0, Lby7;->a:Lyi6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const-string v1, "execute parameter required"

    .line 9
    .line 10
    invoke-static {v1, v0}, Lly8;->b(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lr19;

    .line 14
    .line 15
    iget-object v1, p0, Lby7;->c:[Ly53;

    .line 16
    .line 17
    iget-boolean v2, p0, Lby7;->b:Z

    .line 18
    .line 19
    iget v3, p0, Lby7;->d:I

    .line 20
    .line 21
    invoke-direct {v0, p0, v1, v2, v3}, Lr19;-><init>(Lby7;[Ly53;ZI)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
