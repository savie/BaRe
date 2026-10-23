.class public final synthetic Lf97;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lca3;

.field public final synthetic b:Lyz1;

.field public final synthetic c:Laz2;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lca3;Lyz1;Laz2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf97;->a:Lca3;

    .line 5
    .line 6
    iput-object p2, p0, Lf97;->b:Lyz1;

    .line 7
    .line 8
    iput-object p3, p0, Lf97;->c:Laz2;

    .line 9
    .line 10
    iput-boolean p4, p0, Lf97;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const-string v0, "FirebaseCrashlytics"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "disk worker: log non-fatal event to persistence"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lf97;->a:Lca3;

    .line 17
    .line 18
    iget-object v0, v0, Lca3;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lk02;

    .line 21
    .line 22
    iget-object v1, p0, Lf97;->c:Laz2;

    .line 23
    .line 24
    iget-object v1, v1, Laz2;->a:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p0, Lf97;->b:Lyz1;

    .line 27
    .line 28
    iget-boolean p0, p0, Lf97;->d:Z

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1, p0}, Lk02;->d(Lyz1;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
