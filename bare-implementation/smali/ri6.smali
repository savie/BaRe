.class public final Lri6;
.super Lna4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final transient n:Lti6;

.field public final transient p:Lsi6;


# direct methods
.method public constructor <init>(Lti6;Lsi6;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lga4;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lri6;->n:Lti6;

    .line 6
    .line 7
    iput-object p2, p0, Lri6;->p:Lsi6;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final c([Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lri6;->p:Lsi6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lla4;->c([Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lri6;->n:Lti6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lti6;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object p0, p0, Lri6;->p:Lsi6;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lla4;->x(I)Lja4;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lri6;->n:Lti6;

    .line 2
    .line 3
    iget p0, p0, Lti6;->f:I

    .line 4
    .line 5
    return p0
.end method
