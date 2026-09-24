.class public final synthetic Lvu;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkx2;

.field public final synthetic c:Lmt3;


# direct methods
.method public synthetic constructor <init>(ILkx2;Lmt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lvu;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lvu;->b:Lkx2;

    .line 7
    .line 8
    iput-object p3, p0, Lvu;->c:Lmt3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget v0, p0, Lvu;->a:I

    .line 2
    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lvu;->b:Lkx2;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lkx2;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lyu;

    .line 12
    .line 13
    iget-object p0, p0, Lvu;->c:Lmt3;

    .line 14
    .line 15
    invoke-interface {p0, p2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
