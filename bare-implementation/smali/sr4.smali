.class public final synthetic Lsr4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lur4;

.field public final synthetic b:Lvq4;

.field public final synthetic c:Ltr4;


# direct methods
.method public synthetic constructor <init>(Lur4;Lvq4;Ltr4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsr4;->a:Lur4;

    .line 5
    .line 6
    iput-object p2, p0, Lsr4;->b:Lvq4;

    .line 7
    .line 8
    iput-object p3, p0, Lsr4;->c:Ltr4;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsr4;->a:Lur4;

    .line 2
    .line 3
    iget-object p1, p1, Lgm7;->j:Lqt3;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lsr4;->c:Ltr4;

    .line 8
    .line 9
    invoke-virtual {v0}, Lfh6;->b()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lsr4;->b:Lvq4;

    .line 18
    .line 19
    invoke-interface {p1, p0, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
