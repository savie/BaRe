.class public final synthetic Ltk3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljx2;

.field public final synthetic b:Ljh6;

.field public final synthetic c:Lvo3;


# direct methods
.method public synthetic constructor <init>(Ljx2;Ljh6;Lvo3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltk3;->a:Ljx2;

    .line 5
    .line 6
    iput-object p2, p0, Ltk3;->b:Ljh6;

    .line 7
    .line 8
    iput-object p3, p0, Ltk3;->c:Lvo3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Ltk3;->b:Ljh6;

    .line 2
    .line 3
    iget p1, p1, Ljh6;->a:I

    .line 4
    .line 5
    iget-object p2, p0, Ltk3;->a:Ljx2;

    .line 6
    .line 7
    check-cast p2, Lkx2;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lkx2;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lxk3;

    .line 14
    .line 15
    sget-object p2, Lvk3;->Asc:Lvk3;

    .line 16
    .line 17
    iget-object p0, p0, Ltk3;->c:Lvo3;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lvo3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method
