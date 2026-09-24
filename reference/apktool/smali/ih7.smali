.class public final Lih7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljh7;


# direct methods
.method public constructor <init>(Ljh7;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lih7;->b:Ljh7;

    .line 5
    .line 6
    iput-boolean p2, p0, Lih7;->a:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lxh8;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lih7;->b:Ljh7;

    .line 5
    .line 6
    iget-object v0, v0, Ljh7;->a:Lkh7;

    .line 7
    .line 8
    iget-boolean v1, v0, Lkh7;->a:Z

    .line 9
    .line 10
    iget-boolean p0, p0, Lih7;->a:Z

    .line 11
    .line 12
    iput-boolean p0, v0, Lkh7;->a:Z

    .line 13
    .line 14
    if-eq v1, p0, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lkh7;->b:Lhh7;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lhh7;->a(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
