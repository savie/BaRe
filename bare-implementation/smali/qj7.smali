.class public interface abstract Lqj7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lva4;


# direct methods
.method public static b(Lrj7;)Lr86;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lvi8;->a:Ljava/util/logging/Logger;

    .line 4
    .line 5
    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 6
    .line 7
    const-string v0, "context is null"

    .line 8
    .line 9
    invoke-static {v0, p0}, Lvi8;->a(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lr86;->b:Lr86;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-interface {p0}, Lrj7;->isValid()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-object p0, Lr86;->b:Lr86;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    new-instance v0, Lr86;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lr86;-><init>(Lrj7;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public static c(Lt40;)Lqj7;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lvi8;->a:Ljava/util/logging/Logger;

    .line 4
    .line 5
    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 6
    .line 7
    const-string v0, "context is null"

    .line 8
    .line 9
    invoke-static {v0, p0}, Lvi8;->a(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lr86;->b:Lr86;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object v0, Lx13;->c:Llh9;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lt40;->b(Llh9;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lqj7;

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    sget-object p0, Lr86;->b:Lr86;

    .line 26
    .line 27
    :cond_1
    return-object p0
.end method

.method public static current()Lqj7;
    .locals 2

    .line 1
    invoke-static {}, Lt40;->a()Lt40;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lx13;->c:Llh9;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lt40;->b(Llh9;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lqj7;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lr86;->b:Lr86;

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lt40;)Lt40;
    .locals 1

    .line 1
    sget-object v0, Lx13;->c:Llh9;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p0}, Lt40;->c(Llh9;Lva4;)Lt40;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public abstract getSpanContext()Lrj7;
.end method
