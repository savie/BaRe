.class public final Llj5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lm21;
.implements Lwn8;


# instance fields
.field public final a:Lo21;

.field public final synthetic b:Lmj5;


# direct methods
.method public constructor <init>(Lmj5;Lo21;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llj5;->b:Lmj5;

    .line 5
    .line 6
    iput-object p2, p0, Llj5;->a:Lo21;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ln67;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Llj5;->a:Lo21;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lo21;->a(Ln67;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Ljava/lang/Object;Lrt3;)Ldu9;
    .locals 1

    .line 1
    check-cast p1, Lbe8;

    .line 2
    .line 3
    new-instance p2, Ln21;

    .line 4
    .line 5
    iget-object v0, p0, Llj5;->b:Lmj5;

    .line 6
    .line 7
    invoke-direct {p2, v0, p0}, Ln21;-><init>(Lmj5;Llj5;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Llj5;->a:Lo21;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lo21;->G(Ljava/lang/Object;Lrt3;)Ldu9;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lmj5;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object p0
.end method

.method public final e(Ljava/lang/Object;Lrt3;)V
    .locals 1

    .line 1
    sget-object p1, Lmj5;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iget-object v0, p0, Llj5;->b:Lmj5;

    .line 5
    .line 6
    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lzs;

    .line 10
    .line 11
    invoke-direct {p1, v0, p0}, Lzs;-><init>(Lmj5;Llj5;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Llj5;->a:Lo21;

    .line 15
    .line 16
    iget p2, p0, Lan2;->c:I

    .line 17
    .line 18
    new-instance v0, Ln21;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Ln21;-><init>(Lzs;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lbe8;->a:Lbe8;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2, v0}, Lo21;->D(Ljava/lang/Object;ILrt3;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Llj5;->a:Lo21;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lo21;->g(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getContext()Lox1;
    .locals 0

    .line 1
    iget-object p0, p0, Llj5;->a:Lo21;

    .line 2
    .line 3
    iget-object p0, p0, Lo21;->e:Lox1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Llj5;->a:Lo21;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
