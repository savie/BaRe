.class public interface abstract Lwl8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public a(Ljava/lang/Class;)Ltl8;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error."

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public b(Ljava/lang/Class;Lej5;)Ltl8;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lwl8;->a(Ljava/lang/Class;)Ltl8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public c(Ln81;Lej5;)Ltl8;
    .locals 0

    .line 1
    iget-object p1, p1, Ln81;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1, p2}, Lwl8;->b(Ljava/lang/Class;Lej5;)Ltl8;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
