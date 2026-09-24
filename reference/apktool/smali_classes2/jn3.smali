.class public final synthetic Ljn3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lln3;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLln3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Ljn3;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Ljn3;->b:Lln3;

    .line 7
    .line 8
    iput-object p3, p0, Ljn3;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Ljn3;->a:Z

    .line 2
    .line 3
    iget-object v0, p0, Ljn3;->b:Lln3;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, v0, Lln3;->T:Lmt3;

    .line 8
    .line 9
    iget-object p0, p0, Ljn3;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {p1, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    iput-object p0, v0, Lln3;->Z:Lq63;

    .line 17
    .line 18
    invoke-virtual {v0}, Lln3;->l()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
