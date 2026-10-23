.class public final synthetic Loe7;
.super Lv9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lv9;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lmt3;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object p0, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    return-object p0
.end method
