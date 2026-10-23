.class public final Lx60;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field public final synthetic d:Lz60;


# direct methods
.method public constructor <init>(Lz60;Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx60;->d:Lz60;

    .line 5
    .line 6
    iput-object p2, p0, Lx60;->a:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lx60;->b:Ljava/util/List;

    .line 9
    .line 10
    iput p4, p0, Lx60;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Lw60;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lw60;-><init>(Lx60;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lji8;->c(Ljm1;)Lbl2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lx60;->d:Lz60;

    .line 11
    .line 12
    iget-object v1, v1, Lz60;->c:Ly60;

    .line 13
    .line 14
    new-instance v2, Li8;

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-direct {v2, v3, p0, v0}, Li8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ly60;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
