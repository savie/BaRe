.class public final Ljc5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public a:Lom5;

.field public final b:Landroid/view/ActionProvider;


# direct methods
.method public constructor <init>(Lnc5;Landroid/view/ActionProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ljc5;->b:Landroid/view/ActionProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActionProviderVisibilityChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Ljc5;->a:Lom5;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lom5;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lic5;

    .line 8
    .line 9
    iget-object p0, p0, Lic5;->y:Lfc5;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lfc5;->n:Z

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lfc5;->p(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
