.class public abstract Lxg7;
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
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Lq64;->b()Lo64;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, p2, v0}, Lix7;->c(Lbs2;Lyc9;Lo64;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p2, p1, Lbs2;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Lj75;

    .line 17
    .line 18
    iget-object v0, p1, Lbs2;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ldi4;

    .line 21
    .line 22
    invoke-virtual {p0, p2, v0, p3}, Lxg7;->d(Lj75;Ldi4;Lq64;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    iget-object p1, p1, Lbs2;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lwj7;

    .line 31
    .line 32
    iget p2, p3, Lq64;->b:I

    .line 33
    .line 34
    iget p3, p3, Lq64;->d:I

    .line 35
    .line 36
    invoke-static {p1, p0, p2, p3}, Lwj7;->c(Lwj7;Ljava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public abstract d(Lj75;Ldi4;Lq64;)Ljava/lang/Object;
.end method
