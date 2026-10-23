.class public final Lys2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ly74;


# direct methods
.method public static a(Ljava/lang/String;Lfl7;Lyr7;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    sget-object v0, Lxs2;->a:Ljavax/el/ExpressionFactory;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p0, v1}, Ljavax/el/ExpressionFactory;->createValueExpression(Ljavax/el/ELContext;Ljava/lang/String;Ljava/lang/Class;)Ljavax/el/ValueExpression;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/el/ValueExpression;->getValue(Ljavax/el/ELContext;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    new-instance p1, Lcy6;

    .line 22
    .line 23
    invoke-direct {p1}, Lcy6;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p0, p1, Lcy6;->b:Ljava/lang/Object;

    .line 27
    .line 28
    const-string p0, "Error while evaluating EL expression on message"

    .line 29
    .line 30
    iput-object p0, p1, Lcy6;->c:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object p0, p2, Lyr7;->a:Lnd5;

    .line 33
    .line 34
    iget-object p0, p0, Lnd5;->a:Ljava/lang/reflect/Method;

    .line 35
    .line 36
    iput-object p0, p1, Lcy6;->d:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object p3, p1, Lcy6;->f:Ljava/lang/Object;

    .line 39
    .line 40
    iget-object p0, p2, Lyr7;->b:Ljava/util/Collection;

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_0

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lq84;

    .line 57
    .line 58
    invoke-interface {p2, p1}, Lq84;->a(Lcy6;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p0, 0x0

    .line 63
    return p0
.end method
