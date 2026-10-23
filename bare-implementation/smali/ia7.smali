.class public final synthetic Lia7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lli3;
.implements Lzt3;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lia7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lyt3;
    .locals 7

    .line 1
    new-instance v0, Lv9;

    .line 2
    .line 3
    const-string v5, "set(Ljava/lang/Object;)V"

    .line 4
    .line 5
    const/4 v6, 0x4

    .line 6
    const/4 v1, 0x2

    .line 7
    iget-object v2, p0, Lia7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    const-class v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    const-string v4, "set"

    .line 12
    .line 13
    invoke-direct/range {v0 .. v6}, Lv9;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lm87;

    .line 2
    .line 3
    iget-object p0, p0, Lia7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lbe8;->a:Lbe8;

    .line 9
    .line 10
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lli3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    instance-of v0, p1, Lzt3;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p1, Lzt3;

    .line 15
    .line 16
    invoke-interface {p1}, Lzt3;->a()Lyt3;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
