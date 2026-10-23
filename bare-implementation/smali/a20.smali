.class public final synthetic La20;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;


# direct methods
.method public synthetic constructor <init>(ZLorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, La20;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, La20;->b:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lny7;

    .line 2
    .line 3
    new-instance v0, Loy7;

    .line 4
    .line 5
    invoke-static {}, Liu;->getEntries()Ljx2;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, La20;->a:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lq05;->CLOUD:Lq05;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v2, Lq05;->DEVICE:Lq05;

    .line 17
    .line 18
    :goto_0
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v1, v2, p1}, Loy7;-><init>(Ljava/util/List;Ljava/util/List;Lny7;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, La20;->b:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 26
    .line 27
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->r0:Lkm5;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lkm5;->a(Lty7;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lbe8;->a:Lbe8;

    .line 33
    .line 34
    return-object p0
.end method
