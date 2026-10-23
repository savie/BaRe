.class public final La64;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Les5;


# instance fields
.field public a:Z

.field public final synthetic b:Lc64;


# direct methods
.method public constructor <init>(Lc64;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La64;->b:Lc64;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-boolean v0, p0, La64;->a:Z

    .line 8
    .line 9
    iget-object v1, p0, La64;->b:Lc64;

    .line 10
    .line 11
    if-eq v0, p1, :cond_0

    .line 12
    .line 13
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 14
    .line 15
    iget-object v3, v1, La55;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "Billing connected = "

    .line 18
    .line 19
    invoke-static {v0, p1}, Ldj7;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v6, 0x4

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-boolean p1, p0, La64;->a:Z

    .line 30
    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    sget-object p0, Lc64;->l:Lix6;

    .line 34
    .line 35
    new-instance p0, Llf;

    .line 36
    .line 37
    const/16 p1, 0x17

    .line 38
    .line 39
    invoke-direct {p0, v1, p1}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Lzn4;->c(Lbt3;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
