.class public final Lgp4;
.super Ljp4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ljp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lgp4;->e:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)Ljp4;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Ljp4;->a:Ljava/lang/Object;

    .line 4
    .line 5
    :cond_0
    if-nez p2, :cond_1

    .line 6
    .line 7
    iget-object p2, p0, Ljp4;->b:Ljava/lang/Object;

    .line 8
    .line 9
    :cond_1
    if-nez p3, :cond_2

    .line 10
    .line 11
    iget-object p3, p0, Ljp4;->c:Lhp4;

    .line 12
    .line 13
    :cond_2
    if-nez p4, :cond_3

    .line 14
    .line 15
    iget-object p4, p0, Ljp4;->d:Lhp4;

    .line 16
    .line 17
    :cond_3
    new-instance p0, Lgp4;

    .line 18
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lgp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final i()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final n()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final o(Ljp4;)V
    .locals 2

    .line 1
    iget v0, p0, Lgp4;->e:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Ljp4;->c:Lhp4;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "Can\'t set left after using size"

    .line 10
    .line 11
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final size()I
    .locals 2

    .line 1
    iget v0, p0, Lgp4;->e:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 7
    .line 8
    invoke-interface {v0}, Lhp4;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iget-object v1, p0, Ljp4;->d:Lhp4;

    .line 15
    .line 16
    invoke-interface {v1}, Lhp4;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v1, v0

    .line 21
    iput v1, p0, Lgp4;->e:I

    .line 22
    .line 23
    :cond_0
    iget p0, p0, Lgp4;->e:I

    .line 24
    .line 25
    return p0
.end method
