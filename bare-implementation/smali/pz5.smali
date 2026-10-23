.class public final Lpz5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqz5;


# instance fields
.field public final synthetic a:Lwz5;


# direct methods
.method public constructor <init>(Lwz5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpz5;->a:Lwz5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lpz5;->a:Lwz5;

    .line 2
    .line 3
    iget-object p0, p0, Lwz5;->y:Lu00;

    .line 4
    .line 5
    const-string v0, "s"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "ok"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string v1, "d"

    .line 22
    .line 23
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0}, Lu00;->e()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string v1, " (message: "

    .line 36
    .line 37
    const-string v2, ")"

    .line 38
    .line 39
    const-string v3, "Failed to send stats: "

    .line 40
    .line 41
    invoke-static {v3, v0, v1, p1, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v0, 0x0

    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, p1, v1, v0}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
