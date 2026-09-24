.class public final Lox6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lau4;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lmx6;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmx6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lox6;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lox6;->b:Lmx6;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lhu4;Lot9;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lox6;->c:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lox6;->c:Z

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lhu4;->a(Leu4;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lox6;->b:Lmx6;

    .line 18
    .line 19
    iget-object p1, p1, Lmx6;->a:Lcy6;

    .line 20
    .line 21
    iget-object p1, p1, Lcy6;->f:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lpx6;

    .line 24
    .line 25
    iget-object p0, p0, Lox6;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p2, p0, p1}, Lot9;->h(Ljava/lang/String;Lux6;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string p0, "Already attached to lifecycleOwner"

    .line 32
    .line 33
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Lfu4;Lrt4;)V
    .locals 1

    .line 1
    sget-object v0, Lrt4;->ON_DESTROY:Lrt4;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lox6;->c:Z

    .line 7
    .line 8
    invoke-interface {p1}, Lfu4;->getLifecycle()Lhu4;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lhu4;->f(Leu4;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
