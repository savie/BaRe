.class public final Lhn6;
.super Lsh4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final n:Lth4;


# direct methods
.method public constructor <init>(Lth4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv05;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhn6;->n:Lth4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final p()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final q(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsh4;->o()Lci4;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lci4;->z()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    instance-of v0, p1, Lln1;

    .line 10
    .line 11
    iget-object p0, p0, Lhn6;->n:Lth4;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lln1;

    .line 16
    .line 17
    iget-object p1, p1, Lln1;->a:Ljava/lang/Throwable;

    .line 18
    .line 19
    invoke-static {p1}, Llg7;->e(Ljava/lang/Throwable;)Lbn6;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {p1}, Lpe4;->I(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
