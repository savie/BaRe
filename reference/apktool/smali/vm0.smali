.class public final synthetic Lvm0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcn0;

.field public final synthetic b:Lv64$h;


# direct methods
.method public synthetic constructor <init>(Lcn0;Lv64$h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvm0;->a:Lcn0;

    .line 5
    .line 6
    iput-object p2, p0, Lvm0;->b:Lv64$h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    sget v0, Lcn0;->k:I

    .line 4
    .line 5
    iget-object v0, p0, Lvm0;->b:Lv64$h;

    .line 6
    .line 7
    iget-object v1, v0, Lv64$h;->c:Lll0;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lll0;->e(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lvm0;->a:Lcn0;

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lcn0;->m(Lv64$h;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
