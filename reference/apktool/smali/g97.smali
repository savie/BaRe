.class public final synthetic Lg97;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lfz1;

    .line 2
    .line 3
    check-cast p2, Lfz1;

    .line 4
    .line 5
    check-cast p1, Lcc0;

    .line 6
    .line 7
    iget-object p0, p1, Lcc0;->a:Ljava/lang/String;

    .line 8
    .line 9
    check-cast p2, Lcc0;

    .line 10
    .line 11
    iget-object p1, p2, Lcc0;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
