.class public final synthetic Ljj;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lk28;

.field public final synthetic b:Lji;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic k:Z

.field public final synthetic n:Lbt3;

.field public final synthetic p:Z


# direct methods
.method public synthetic constructor <init>(Lk28;Lji;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZLbt3;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljj;->a:Lk28;

    .line 5
    .line 6
    iput-object p2, p0, Ljj;->b:Lji;

    .line 7
    .line 8
    iput-object p3, p0, Ljj;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object p4, p0, Ljj;->d:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-boolean p5, p0, Ljj;->e:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Ljj;->f:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Ljj;->k:Z

    .line 17
    .line 18
    iput-object p8, p0, Ljj;->n:Lbt3;

    .line 19
    .line 20
    iput-boolean p9, p0, Ljj;->p:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v1, p0, Ljj;->a:Lk28;

    .line 2
    .line 3
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v9, Lbe8;->a:Lbe8;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v9

    .line 12
    :cond_0
    new-instance v0, Lrj;

    .line 13
    .line 14
    iget-object v2, p0, Ljj;->b:Lji;

    .line 15
    .line 16
    iget-object v3, p0, Ljj;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v4, p0, Ljj;->d:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-boolean v5, p0, Ljj;->e:Z

    .line 21
    .line 22
    iget-boolean v6, p0, Ljj;->f:Z

    .line 23
    .line 24
    iget-boolean v7, p0, Ljj;->k:Z

    .line 25
    .line 26
    iget-object v8, p0, Ljj;->n:Lbt3;

    .line 27
    .line 28
    invoke-direct/range {v0 .. v8}, Lrj;-><init>(Lk28;Lji;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZLbt3;)V

    .line 29
    .line 30
    .line 31
    iget-boolean p0, p0, Ljj;->p:Z

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    invoke-virtual {v0, v1, p0, p0}, Lrj;->F(Lk28;ZZ)V

    .line 37
    .line 38
    .line 39
    return-object v9

    .line 40
    :cond_1
    const/16 p0, 0x30

    .line 41
    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v0, v1, p0}, Lrj;->G(Lzm;Ljava/lang/Integer;)V

    .line 47
    .line 48
    .line 49
    return-object v9
.end method
