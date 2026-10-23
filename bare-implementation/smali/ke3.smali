.class public final Lke3;
.super Lrg2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:[Ly74;


# direct methods
.method public constructor <init>(Lx74;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lrg2;-><init>(Lx74;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Lol1;

    .line 5
    .line 6
    iget-object p1, p1, Lol1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lyr7;

    .line 9
    .line 10
    iget-object p1, p1, Lyr7;->a:Lnd5;

    .line 11
    .line 12
    iget-object p1, p1, Lnd5;->b:[Ly74;

    .line 13
    .line 14
    iput-object p1, p0, Lke3;->f:[Ly74;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lrd5;Ljava/lang/Object;Ljava/lang/Iterable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lke3;->f:[Ly74;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_2

    .line 9
    .line 10
    aget-object v3, v0, v2

    .line 11
    .line 12
    iget-object v4, p0, Lol1;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v4, Lyr7;

    .line 15
    .line 16
    check-cast v3, Lys2;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v3, v4, Lyr7;->a:Lnd5;

    .line 22
    .line 23
    iget-object v3, v3, Lnd5;->c:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v5, Lfl7;

    .line 26
    .line 27
    invoke-direct {v5, p2}, Lfl7;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v5, v4, p2}, Lys2;->a(Ljava/lang/String;Lfl7;Lyr7;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    :goto_1
    iget-object p0, p0, Lrg2;->e:Lx74;

    .line 41
    .line 42
    invoke-interface {p0, p1, p2, p3}, Lx74;->a(Lrd5;Ljava/lang/Object;Ljava/lang/Iterable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
