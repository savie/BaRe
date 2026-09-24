.class public final Llt0;
.super Lix7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Lbs2;Lyc9;Lq64;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Lq64;->c()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Lq64;->b()Lo64;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p1, p2, p0}, Lix7;->c(Lbs2;Lyc9;Lo64;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p0, p1, Lbs2;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lj75;

    .line 17
    .line 18
    iget-object p2, p0, Lj75;->k:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p2, Lky3;

    .line 21
    .line 22
    const-class v0, Lat0;

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Lky3;->a(Ljava/lang/Class;)Lsj7;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iget-object v0, p1, Lbs2;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lwj7;

    .line 33
    .line 34
    iget-object p1, p1, Lbs2;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Ldi4;

    .line 37
    .line 38
    invoke-interface {p2, p0, p1}, Lsj7;->a(Lj75;Ldi4;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget p1, p3, Lq64;->b:I

    .line 43
    .line 44
    iget p2, p3, Lq64;->d:I

    .line 45
    .line 46
    invoke-static {v0, p0, p1, p2}, Lwj7;->c(Lwj7;Ljava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public final b()Ljava/util/Collection;
    .locals 0

    .line 1
    const-string p0, "blockquote"

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
