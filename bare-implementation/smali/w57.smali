.class public Lw57;
.super Lo3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lzx1;


# instance fields
.field public final f:Ljv1;


# direct methods
.method public constructor <init>(Ljv1;Lox1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p2, v0}, Lo3;-><init>(Lox1;Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lw57;->f:Ljv1;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final F()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public b0()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getCallerFrame()Lzx1;
    .locals 1

    .line 1
    iget-object p0, p0, Lw57;->f:Ljv1;

    .line 2
    .line 3
    instance-of v0, p0, Lzx1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lzx1;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lw57;->f:Ljv1;

    .line 2
    .line 3
    invoke-static {p0}, Lnc8;->D(Ljv1;)Ljv1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1}, Lsz8;->T(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lly8;->L(Ljv1;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lw57;->f:Ljv1;

    .line 2
    .line 3
    invoke-static {p1}, Lsz8;->T(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljv1;->resumeWith(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
