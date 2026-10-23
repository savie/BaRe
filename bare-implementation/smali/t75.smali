.class public final Lt75;
.super Ll3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lu75;


# direct methods
.method public constructor <init>(Lu75;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt75;->a:Lu75;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lr75;

    .line 6
    .line 7
    :goto_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Lr75;

    .line 12
    .line 13
    invoke-super {p0, p1}, Ll3;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Lt75;->a:Lu75;

    .line 2
    .line 3
    iget-object p0, p0, Lu75;->a:Ljava/util/regex/Matcher;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    add-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method

.method public final e(I)Lr75;
    .locals 2

    .line 1
    iget-object p0, p0, Lt75;->a:Lu75;

    .line 2
    .line 3
    iget-object p0, p0, Lu75;->a:Ljava/util/regex/Matcher;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->start(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->end(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Ll73;->F(II)Lnd4;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, v0, Lld4;->a:I

    .line 18
    .line 19
    if-ltz v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Lr75;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0, v0}, Lr75;-><init>(Ljava/lang/String;Lnd4;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    invoke-static {p0}, Lfl1;->y0(Ljava/util/Collection;)Lnd4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lll1;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lll1;-><init>(Ljava/lang/Iterable;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lw20;

    .line 11
    .line 12
    const/16 v2, 0x10

    .line 13
    .line 14
    invoke-direct {v0, p0, v2}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Lq98;

    .line 18
    .line 19
    invoke-direct {p0, v1, v0}, Lq98;-><init>(Lf77;Lmt3;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lp98;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lp98;-><init>(Lq98;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
