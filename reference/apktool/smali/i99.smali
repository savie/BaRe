.class public final Li99;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lvt4;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lva9;


# direct methods
.method public constructor <init>(Lva9;Lvt4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Li99;->a:Lvt4;

    .line 5
    .line 6
    iput-object p3, p0, Li99;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Li99;->c:Lva9;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Li99;->c:Lva9;

    .line 2
    .line 3
    iget v1, v0, Lva9;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Li99;->a:Lvt4;

    .line 6
    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Lva9;->c:Landroid/os/Bundle;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Li99;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    invoke-virtual {v2, p0}, Lvt4;->onCreate(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget p0, v0, Lva9;->b:I

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    if-lt p0, v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v2}, Lvt4;->onStart()V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget p0, v0, Lva9;->b:I

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    if-lt p0, v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {v2}, Lvt4;->onResume()V

    .line 38
    .line 39
    .line 40
    :cond_3
    iget p0, v0, Lva9;->b:I

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    if-lt p0, v1, :cond_4

    .line 44
    .line 45
    invoke-virtual {v2}, Lvt4;->onStop()V

    .line 46
    .line 47
    .line 48
    :cond_4
    iget p0, v0, Lva9;->b:I

    .line 49
    .line 50
    const/4 v0, 0x5

    .line 51
    if-lt p0, v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {v2}, Lvt4;->onDestroy()V

    .line 54
    .line 55
    .line 56
    :cond_5
    return-void
.end method
