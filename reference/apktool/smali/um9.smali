.class public final Lum9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Lwm9;

.field public b:Lih9;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lwm9;->i()Lwm9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lum9;->a:Lwm9;

    .line 9
    .line 10
    invoke-virtual {v0}, Lih9;->g()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lih9;->b()Lih9;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lum9;->b:Lih9;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string p0, "Default instance must be immutable."

    .line 24
    .line 25
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    throw p0
.end method


# virtual methods
.method public final a()Lih9;
    .locals 3

    .line 1
    iget-object v0, p0, Lum9;->b:Lih9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lih9;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lum9;->b:Lih9;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v0, Ldk9;->c:Ldk9;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ldk9;->a(Ljava/lang/Class;)Ljk9;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, v1}, Ljk9;->a(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lih9;->d()V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lum9;->b:Lih9;

    .line 32
    .line 33
    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lum9;->a:Lwm9;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lwm9;->h(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lum9;

    .line 9
    .line 10
    invoke-virtual {p0}, Lum9;->a()Lih9;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iput-object p0, v0, Lum9;->b:Lih9;

    .line 15
    .line 16
    return-object v0
.end method
