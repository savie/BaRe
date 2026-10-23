.class public final Lkq3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkq3;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lkq3;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lkq3;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput p4, p0, Lkq3;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lkq3;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lkq3;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lkq3;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget p0, p0, Lkq3;->d:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p0}, Lnq3;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lmq3;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    new-instance p0, Lmq3;

    .line 15
    .line 16
    const/4 v0, -0x3

    .line 17
    invoke-direct {p0, v0}, Lmq3;-><init>(I)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method
