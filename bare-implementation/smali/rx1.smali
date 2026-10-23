.class public abstract Lrx1;
.super Lp3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmx1;


# static fields
.field public static final b:Lqx1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lqx1;

    .line 2
    .line 3
    sget-object v1, Llv1;->b:Llv1;

    .line 4
    .line 5
    new-instance v2, Lgf1;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-direct {v2, v3}, Lgf1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lqx1;-><init>(Lnx1;Lmt3;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lrx1;->b:Lqx1;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Llv1;->b:Llv1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lp3;-><init>(Lnx1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get(Lnx1;)Lmx1;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lqx1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    check-cast p1, Lqx1;

    .line 10
    .line 11
    iget-object v0, p0, Lp3;->a:Lnx1;

    .line 12
    .line 13
    if-eq v0, p1, :cond_1

    .line 14
    .line 15
    iget-object v2, p1, Lqx1;->b:Lnx1;

    .line 16
    .line 17
    if-ne v2, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-object v1

    .line 21
    :cond_1
    :goto_0
    iget-object p1, p1, Lqx1;->a:Lmt3;

    .line 22
    .line 23
    invoke-interface {p1, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lmx1;

    .line 28
    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    sget-object v0, Llv1;->b:Llv1;

    .line 33
    .line 34
    if-ne v0, p1, :cond_3

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_3
    return-object v1
.end method

.method public abstract j(Lox1;Ljava/lang/Runnable;)V
.end method

.method public m(Lox1;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Lsd8;

    .line 2
    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    return p0
.end method

.method public final minusKey(Lnx1;)Lox1;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lqx1;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    check-cast p1, Lqx1;

    .line 9
    .line 10
    iget-object v0, p0, Lp3;->a:Lnx1;

    .line 11
    .line 12
    if-eq v0, p1, :cond_1

    .line 13
    .line 14
    iget-object v1, p1, Lqx1;->b:Lnx1;

    .line 15
    .line 16
    if-ne v1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object p0

    .line 20
    :cond_1
    :goto_0
    iget-object p1, p1, Lqx1;->a:Lmt3;

    .line 21
    .line 22
    invoke-interface {p1, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lmx1;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    sget-object v0, Llv1;->b:Llv1;

    .line 32
    .line 33
    if-ne v0, p1, :cond_3

    .line 34
    .line 35
    :goto_1
    sget-object p0, Llv2;->a:Llv2;

    .line 36
    .line 37
    :cond_3
    return-object p0
.end method

.method public n(I)Lrx1;
    .locals 1

    .line 1
    invoke-static {p1}, Lzm5;->f(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lmu4;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lmu4;-><init>(Lrx1;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lod2;->l(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
