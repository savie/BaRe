.class public final Lni6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lry3;


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/bumptech/glide/a;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lx13;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/a;Ljava/util/List;Lx13;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lni6;->b:Lcom/bumptech/glide/a;

    .line 5
    .line 6
    iput-object p2, p0, Lni6;->c:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lni6;->d:Lx13;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lni6;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Glide registry"

    .line 6
    .line 7
    invoke-static {v0}, Liz1;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lni6;->a:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    iget-object v1, p0, Lni6;->b:Lcom/bumptech/glide/a;

    .line 15
    .line 16
    iget-object v2, p0, Lni6;->c:Ljava/util/List;

    .line 17
    .line 18
    iget-object v3, p0, Lni6;->d:Lx13;

    .line 19
    .line 20
    invoke-static {v1, v2, v3}, Lzm5;->i(Lcom/bumptech/glide/a;Ljava/util/List;Lx13;)Lmi6;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iput-boolean v0, p0, Lni6;->a:Z

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    iput-boolean v0, p0, Lni6;->a:Z

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_0
    const-string p0, "Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you\'re using the provided Registry rather calling glide.getRegistry()!"

    .line 38
    .line 39
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method
